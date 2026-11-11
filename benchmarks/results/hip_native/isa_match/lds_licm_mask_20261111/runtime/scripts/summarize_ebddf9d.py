"""Write summary.json for the ebddf9d GPU validation from the produced artifacts."""
import csv
import json
from pathlib import Path

O = Path('/home/jinpli/workspace/home/jinpli/development/zyfa/build/investigations-20261111/gpu-validation-ebddf9d')
load = lambda p: json.loads((O / p).read_text())
strip = lambda d: {k: v for k, v in d.items() if k not in ('inspect_manifest', 'git_head', 'git_status_porcelain',
                                                           'source_sha256_at_head_blob')}
tail = load('tail-race-long/tail-race-summary.json')
summary = {
    'candidate': 'ebddf9d5b0af97f13615d66ef8721ce7e8ca1044 (masked-tail-weight-on-af5d329), exported by git archive',
    'source_sha256': '776857b4dce02393091681f27668b1286eb6da65f3bac6f83176b4ccee0bcd43 (= git show ebddf9d blob)',
    'builds': {
        'A': 'production llvm-project (72e518a3f02a, Debug) + -Xarch_device -mllvm=-disable-machine-licm '
             '(local setup.py copy, logs/build-A-setup.diff)',
        'B': 'llvm-licm-src (282bb0968039, Release+assertions), unchanged production flags'},
    'A_B_identity': 'code object .text/.rodata/.note byte-identical; all instruction signatures identical; '
                    'differences only in .comment and HIP CUID string/hash sections',
    'provenance_A': strip(load('provenance-A-vs-B.json')),
    'provenance_B': strip(load('provenance-B-vs-A.json')),
    'provenance_note': 'git_head fields in provenance-*.json are the enclosing worktree HEAD (3ff0230), not the '
                       'exported tree; the exported source hash equals the ebddf9d blob.',
    'protected_checks': load('protected-checks-A.json'),
    'tests': {
        'B_full_suite_codegen_production_llvm': '310 passed, 2 skipped (HIP_VISIBLE_DEVICES=1,2, 596 s under '
                                                'foreign GPU load); 76 codegen tests',
        'B_codegen_llvm_licm_src': '76 passed (ZYFA_LLVM_ROOT/ZYFA_NATIVE_LLVM_ROOT = llvm-licm-src)',
        'harness_note': 'codegen tests read ZYFA_LLVM_ROOT (not ZYFA_NATIVE_LLVM_ROOT) and use their own '
                        'hard-coded clang/llc flags, so build A\'s -disable-machine-licm cannot be expressed'},
    'tail_race_long': {k: v for k, v in tail.items() if k not in ('failure_rows',)},
    'timing_gpu0_pooled_clean': list(csv.DictReader((O / 'timing/timing-pooled-gpu0-clean.csv').open())),
    'timing_notes': [
        'HIP ordinal 0 = amd-smi GPU 3 (PCI 78:00.0). Mapping HIP->amd-smi: 0->3, 1->0, 2->2, 3->1, 4->7, '
        '5->4, 6->6, 7->5. Foreign jobs span whole groups {0-3} / {4-7}.',
        'Excluded: c3ff0230-vs-ebddf9d-d (foreign 11-13% on amd-smi 0-2) and owning-vs-ebddf9d-f '
        '(foreign 30-39%); both kept in timing-all-runs.csv with a CONTAMINATED label.'],
}
(O / 'summary.json').write_text(json.dumps(summary, indent=2) + '\n')
print('wrote', O / 'summary.json')
