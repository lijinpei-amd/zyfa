"""Compare disassembled AMDGPU kernels after excluding allocator spills/copies."""

import argparse
from collections import Counter
from dataclasses import asdict, dataclass
import difflib
import json
from pathlib import Path
import re


@dataclass(frozen=True)
class Instruction:
    mnemonic: str
    operands: str
    address: int
    line: int
    branch_target: int | None = None


def parse_disassembly(text):
    functions = {}
    current = None
    for number, line in enumerate(text.splitlines(), 1):
        symbol = re.match(r"^[0-9a-fA-F]+ <([^>]+)>:$", line.strip())
        if symbol:
            current = functions.setdefault(symbol[1], [])
            continue
        if current is None:
            continue
        address = re.search(r"//\s*([0-9a-fA-F]+):", line)
        code = line.split("//", 1)[0].strip()
        op = re.fullmatch(r"((?:s|v|ds|buffer|global|flat|scratch|image|tbuffer)_[\w]+)(?:\s+(.*))?", code)
        if not op or not address or op[1] == "s_code_end":
            continue
        pc, operands = int(address[1], 16), op[2] or ""
        target = None
        if op[1] == "s_branch" or op[1].startswith("s_cbranch_"):
            displacement = int(operands.split()[0], 0)
            if displacement >= 32768:
                displacement -= 65536
            target = pc + 4 + displacement * 4
        current.append(Instruction(op[1], operands, pc, number, target))
    return functions


def excluded_reason(instruction):
    if instruction.mnemonic.startswith("scratch_"):
        return "scratch"
    op = re.sub(r"_e(?:32|64)$", "", instruction.mnemonic)
    if op not in ("s_mov_b32", "s_mov_b64", "v_mov_b32", "v_mov_b64"):
        return None
    operands = [x.strip() for x in instruction.operands.split(",")]
    register = r"(?:[sv]\d+|[sv]\[\d+:\d+\]|(?:vcc|exec)(?:_lo|_hi)?|m0|scc)"
    if len(operands) == 2 and re.fullmatch(register, operands[1]):
        return "register_copy"
    return None


def steady_loop(instructions, expected_mfmas):
    addresses = {instruction.address: i for i, instruction in enumerate(instructions)}
    leaders = {0}
    for index, instruction in enumerate(instructions):
        if instruction.branch_target in addresses:
            leaders.add(addresses[instruction.branch_target])
        if instruction.branch_target is not None or instruction.mnemonic == "s_endpgm":
            if index + 1 < len(instructions):
                leaders.add(index + 1)
    starts = sorted(leaders)
    blocks = [instructions[start:end] for start, end in zip(starts, starts[1:] + [len(instructions)])]
    owner = {instruction.address: block for block, body in enumerate(blocks) for instruction in body}
    successors = [set() for _ in blocks]
    predecessors = [set() for _ in blocks]
    for block, body in enumerate(blocks):
        last = body[-1]
        if last.branch_target in owner:
            successors[block].add(owner[last.branch_target])
        if last.mnemonic not in ("s_branch", "s_endpgm") and block + 1 < len(blocks):
            successors[block].add(block + 1)
        for successor in successors[block]:
            predecessors[successor].add(block)
    reachable = set()
    pending = [0]
    while pending:
        block = pending.pop()
        if block not in reachable:
            reachable.add(block)
            pending.extend(successors[block])
    dominators = {block: ({0} if block == 0 else set(reachable)) for block in reachable}
    changed = True
    while changed:
        changed = False
        for block in sorted(reachable - {0}):
            incoming = predecessors[block] & reachable
            new = {block} | set.intersection(*(dominators[pred] for pred in incoming))
            if new != dominators[block]:
                dominators[block] = new
                changed = True
    loops = {}
    for tail in reachable:
        for header in successors[tail] & dominators[tail]:
            members = loops.setdefault(header, {header})
            pending = [tail]
            while pending:
                block = pending.pop()
                if block not in members:
                    members.add(block)
                    pending.extend(predecessors[block] & reachable)
    candidates = []
    for members in loops.values():
        body = [instruction for block in sorted(members) for instruction in blocks[block]]
        if sum(i.mnemonic.startswith("v_mfma") for i in body) == expected_mfmas:
            candidates.append(body)
    if not candidates:
        for end, instruction in enumerate(instructions):
            target = instruction.branch_target
            if target in addresses and target <= instruction.address:
                body = instructions[addresses[target]:end + 1]
                if sum(i.mnemonic.startswith("v_mfma") for i in body) == expected_mfmas:
                    candidates.append(body)
    if len(candidates) != 1:
        raise ValueError(f"expected one loop with {expected_mfmas} MFMAs, found {len(candidates)}")
    return candidates[0]


def compare(reference, llvm):
    filtered = [[i for i in code if excluded_reason(i) is None] for code in (reference, llvm)]
    counts = [Counter(i.mnemonic for i in code) for code in filtered]
    differences = {op: {"reference": counts[0][op], "llvm": counts[1][op],
                        "delta": counts[1][op] - counts[0][op]}
                   for op in sorted(counts[0].keys() | counts[1].keys()) if counts[0][op] != counts[1][op]}
    first = None
    for index in range(max(map(len, filtered))):
        a = filtered[0][index] if index < len(filtered[0]) else None
        b = filtered[1][index] if index < len(filtered[1]) else None
        if a is None or b is None or a.mnemonic != b.mnemonic:
            first = {"index": index, "reference": asdict(a) if a else None, "llvm": asdict(b) if b else None}
            break
    return {"counts_match": not differences, "sequence_match": first is None,
            "reference_instruction_count": len(filtered[0]), "llvm_instruction_count": len(filtered[1]),
            "reference_counts": dict(sorted(counts[0].items())), "llvm_counts": dict(sorted(counts[1].items())),
            "count_differences": differences, "first_mismatch": first,
            "excluded": {name: [{**asdict(i), "reason": excluded_reason(i)} for i in code if excluded_reason(i)]
                         for name, code in (("reference", reference), ("llvm", llvm))}}


def select_function(functions, dim, symbol=None):
    if symbol:
        return functions[symbol]
    candidates = [name for name in functions if f"attendILi{dim}" in name]
    if len(candidates) == 1:
        return functions[candidates[0]]
    if len(functions) == 1:
        return next(iter(functions.values()))
    raise ValueError(f"select a function explicitly: {list(functions)}")


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--llvm", type=Path, required=True)
    parser.add_argument("--assembly", type=Path, required=True)
    parser.add_argument("--dim", type=int, choices=[128, 192], required=True)
    parser.add_argument("--scope", choices=["loop", "kernel"], default="loop")
    parser.add_argument("--llvm-symbol")
    parser.add_argument("--assembly-symbol")
    parser.add_argument("--output", type=Path, required=True)
    parser.add_argument("--allow-mismatch", action="store_true")
    args = parser.parse_args()
    code = [select_function(parse_disassembly(path.read_text()), args.dim, symbol)
            for path, symbol in ((args.assembly, args.assembly_symbol), (args.llvm, args.llvm_symbol))]
    if args.scope == "loop":
        code = [steady_loop(body, 72 if args.dim == 128 else 44) for body in code]
    result = compare(*code)
    result.update({"dimension": args.dim, "scope": args.scope,
                   "reference_file": str(args.assembly), "llvm_file": str(args.llvm),
                   "sequence_policy": "exact disassembled mnemonics; operands retained for review"})
    args.output.mkdir(parents=True, exist_ok=True)
    (args.output / "comparison.json").write_text(json.dumps(result, indent=2) + "\n")
    sequences = []
    for name, body in zip(("reference", "llvm"), code):
        retained = [i for i in body if excluded_reason(i) is None]
        (args.output / f"{name}.filtered.s").write_text("".join(f"{i.mnemonic} {i.operands}\n" for i in retained))
        sequences.append([i.mnemonic + "\n" for i in retained])
    diff = difflib.unified_diff(*sequences, fromfile="reference", tofile="llvm")
    (args.output / "mnemonic-sequence.diff").write_text("".join(diff))
    print(f"d{args.dim} {args.scope}: counts_match={result['counts_match']} sequence_match={result['sequence_match']} "
          f"reference={result['reference_instruction_count']} llvm={result['llvm_instruction_count']}")
    for op, counts in sorted(result["count_differences"].items(), key=lambda item: -abs(item[1]["delta"]))[:15]:
        print(f"  {op}: reference={counts['reference']} llvm={counts['llvm']} delta={counts['delta']:+}")
    if result["first_mismatch"]:
        print("  first mismatch:", result["first_mismatch"])
    return 0 if args.allow_mismatch or (result["counts_match"] and result["sequence_match"]) else 1


if __name__ == "__main__":
    raise SystemExit(main())
