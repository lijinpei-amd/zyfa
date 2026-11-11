from collections import Counter
from dataclasses import asdict
import hashlib
import importlib.util
import json
from pathlib import Path
import re
import sys

ROOT = Path('/home/jinpli/workspace/home/jinpli/development/zyfa')
sys.path.insert(0, str(ROOT))
from benchmarks.compare_isa import excluded_reason, parse_disassembly, select_function, steady_loop
OUT = ROOT / 'build/runtime-add3-20261111/attempt1'
BASE = ROOT / 'benchmarks/results/hip_native/isa_match/vector_fixes_20261111/owning'
SPEC = importlib.util.spec_from_file_location('capture_helper', ROOT / 'build/runtime-add3-20261111/candidate/tests/test_fp8_hip_codegen.py')
HELPER = importlib.util.module_from_spec(SPEC)
SPEC.loader.exec_module(HELPER)


def registers(operand):
    result = set(re.findall(r'\b[sv]\d+\b', operand))
    for kind, first, last in re.findall(r'\b([sv])\[(\d+):(\d+)\]', operand):
        result.update(f'{kind}{i}' for i in range(int(first), int(last)+1))
    return result


class Flow:
    def __init__(self, code):
        self.code = code
        self.positions = {i.address:j for j,i in enumerate(code)}
        self.preds = [set() for i in code]
        self.writes = []
        self.memo = {}
        for j,i in enumerate(code):
            if i.branch_target in self.positions:
                self.preds[self.positions[i.branch_target]].add(j)
            if i.mnemonic not in ('s_branch','s_endpgm') and j+1 < len(code):
                self.preds[j+1].add(j)
            op0=i.operands.split(',')[0].strip()
            writes = registers(op0) if re.fullmatch(r'[sv]\d+|[sv]\[\d+:\d+\]',op0) else set()
            if i.mnemonic.startswith(('global_store','buffer_store','ds_write')):
                writes=set()
            self.writes.append(writes)
        successors = [set() for i in code]
        for dst, predecessors in enumerate(self.preds):
            for src in predecessors:
                successors[src].add(dst)
        reachable, pending = set(), [0]
        while pending:
            j = pending.pop()
            if j not in reachable:
                reachable.add(j)
                pending.extend(successors[j])
        self.reachable = reachable
        self.preds = [p & reachable for p in self.preds]

    def reaching(self, j, reg):
        if (j,reg) in self.memo:
            return self.memo[(j,reg)]
        seen, found, liveins = set(), set(), set()
        pending=list(self.preds[j])
        if not pending:
            liveins.add(reg)
        while pending:
            p=pending.pop()
            if p in seen:
                continue
            seen.add(p)
            if reg in self.writes[p]:
                found.add(p)
            else:
                pending.extend(self.preds[p])
                if not self.preds[p]:
                    liveins.add(reg)
        result=(found,liveins)
        self.memo[(j,reg)]=result
        return result

    def entry_slice(self, roots, entry_end):
        seen, liveins=set(),set()
        pending=list(roots)
        edges={}
        while pending:
            j=pending.pop()
            if j in seen:
                continue
            assert j < entry_end, ('entry dependency outside entry',self.code[j])
            seen.add(j)
            deps={}
            for reg in registers(','.join(self.code[j].operands.split(',')[1:])):
                definitions, inputs=self.reaching(j,reg)
                assert all(p < entry_end for p in definitions), ('entry dependency loop',reg,self.code[j])
                deps[reg]={'definition_pcs':[self.code[p].address for p in sorted(definitions)], 'live_in':bool(inputs)}
                pending.extend(definitions)
                liveins.update(inputs)
            edges[j]=deps
        return {'root_definition_pcs':[self.code[j].address for j in sorted(roots)],
                'live_in_registers':sorted(liveins),
                'instructions':[{'instruction':asdict(self.code[j]),'source_reaching_definitions':edges[j]} for j in sorted(seen)]}


def offsets(reads):
    return [int(m[1]) if (m:=re.search(r'offset:(\d+)',i.operands)) else 0 for i in reads]


summary={}
for dim,mfmas in ((128,72),(192,44)):
    paths={'baseline':BASE/'disassembly.s', 'candidate':OUT/'disassembly.s',
           'reference':ROOT/f'benchmarks/results/hip_native/isa_match/baseline/assembly_d{dim}.s'}
    codes={name:select_function(parse_disassembly(p.read_text()),dim) for name,p in paths.items()}
    report=json.loads((OUT/f'd{dim}-current-analysis.json').read_text())
    report['focused_v_entry_slices']={}
    report['selected_address_recipes']={}
    report['complete_setup_sequences']={}
    report['complete_setup_sequences_scope']='All disassembled instructions from kernel entry up to (excluding) the earliest instruction in the strict steady-loop SCC; includes invariant V-address setup, initial pass/query preparation and initial QK.'
    for name,code in codes.items():
        flow=Flow(code)
        loop=steady_loop(code,mfmas)
        entry_end=flow.positions[min(i.address for i in loop)]
        report['complete_setup_sequences'][name]=[asdict(i) for i in code[:entry_end]]
        sites=HELPER.runtime_pv_address_sites(code,dim)
        expected=[4096*half+256*frag+1024*word for half in range(2 if dim==128 else 1) for frag in range(4) for word in range(4)]
        pcs=sorted(set(pc for consumers,producers in sites for pc in producers))
        assert len(pcs)==(6 if name=='baseline' else 4), (name,dim,pcs)
        ds=[]
        for site,(consumers,producers) in enumerate(sites):
            assert offsets(consumers)==expected,(name,dim,site,offsets(consumers))
            assert len(producers)==1,(name,dim,site,producers)
            ds.append({'site':site,'producer_pcs':sorted(producers),
                       'cfg_consumer_address_definitions':sorted(producers),
                       'consumers':[{'read':asdict(i),'offset':offsets([i])[0],
                                     'address_register':i.operands.split(',')[1].strip().split()[0],
                                     'producer_pc':sorted(producers)} for i in consumers],
                       'producer_prefixes':[[asdict(i) for i in code[max(0,flow.positions[pc]-20):flow.positions[pc]+1]] for pc in sorted(producers)]})
        report['ds_sites'][name]=ds
        recipes=[]
        vector_roots=set()
        invariant_consumptions=[]
        for pc in pcs:
            j=flow.positions[pc]
            inputs=registers(','.join(code[j].operands.split(',')[1:]))
            vector_inputs=sorted(r for r in inputs if r.startswith('v'))
            for reg in vector_inputs:
                defs,liveins=flow.reaching(j,reg)
                assert not liveins and len(defs)==1,(name,dim,pc,reg,defs,liveins)
                vector_roots.update(defs)
                invariant_consumptions.append({'selected_definition_pc':pc,'invariant_input_register':reg,
                                               'reaching_entry_definition_pcs':[code[p].address for p in sorted(defs)], 'reachable_live_in_paths':sorted(liveins)})
            if name=='reference':
                start=j-(14 if dim==128 else 15)
                seq=code[start:j+1]
                assert seq[0].mnemonic=='s_add_u32'
                assert len(seq)==(15 if dim==128 else 16)
                assert not any(i.branch_target is not None for i in seq)
                normalized=['s_add_u32','s_add_u32','s_and_b32','s_lshl_b32','s_and_b32','s_lshl_b32','s_add_u32']
                normalized+=['s_mov_b32'] if dim==128 else ['s_lshl_b32']
                normalized+=['s_add_u32','s_and_b32','s_lshl_b32','s_add_u32']+['v_add_u32_e32']*(3 if dim==128 else 4)
                assert [i.mnemonic for i in seq]==normalized,(dim,pc,[i.mnemonic for i in seq])
            else:
                start=max(0,j-20)
                seq=code[start:j+1]
            recipes.append({'selected_definition_pc':pc, 'selected_definition':asdict(code[j]),
                            'recipe_scope':'complete reference tail_state (shared K/V work included)' if name=='reference' else '20-instruction contextual prefix through selected V-address definition',
                            'instructions':[asdict(i) for i in seq],
                            'source_reaching_definitions':{r:{'definition_pcs':[code[p].address for p in sorted(flow.reaching(j,r)[0])],
                                                               'live_in':sorted(flow.reaching(j,r)[1])} for r in sorted(inputs)},
                            'consumer_sites':[s['site'] for s in ds if pc in s['producer_pcs']]})
        focused=flow.entry_slice(vector_roots,entry_end)
        focused['runtime_invariant_consumptions']=invariant_consumptions
        focused['recipe_kind']='two retained lane terms' if name=='baseline' else 'complete V0-plus-lane base'
        if name=='baseline':
            p0reg='s92' if dim==128 else 's82'
            p0defs,p0live=flow.reaching(flow.positions[pcs[0]],p0reg)
            assert len(p0defs)==1 and not p0live
            focused['scalar_v0_base']=flow.entry_slice(p0defs,entry_end)
        report['focused_v_entry_slices'][name]=focused
        report['selected_address_recipes'][name]=recipes
    candidate=report['focused_v_entry_slices']['candidate']
    assert candidate['root_definition_pcs']==([0x1f00] if dim==128 else [0xabd8]),candidate
    assert len({tuple(x['reaching_entry_definition_pcs']) for x in candidate['runtime_invariant_consumptions']})==1
    reference=report['focused_v_entry_slices']['reference']
    assert reference['root_definition_pcs']==([0x177c] if dim==128 else [0x15f8]),reference
    report['cfg_reaching_definition_scope']='Predecessors restricted to instructions reachable from kernel entry; excludes predecessor-free unreachable compiler blocks.'
    setup_counts={name:Counter(i['mnemonic'] for i in sequence) for name,sequence in report['complete_setup_sequences'].items()}
    setup_delta={op:setup_counts['candidate'][op]-setup_counts['baseline'][op] for op in setup_counts['candidate'].keys()|setup_counts['baseline'].keys() if setup_counts['candidate'][op]!=setup_counts['baseline'][op]}
    report['extended_setup_histograms']={name:dict(counts) for name,counts in setup_counts.items()}
    report['extended_setup_current_delta']=setup_delta
    assert sum(v for k,v in setup_delta.items() if k.startswith('v_'))==3
    report['capture_correction']='Round 1: previous setup prefix stopped at the first scalar upper-bound guard, before invariant addressing. This audit captures the full pre-steady prefix, focused CFG entry dependencies and all reference entry/tail recipes and six DS sites.'
    report['capture_sources']={name:{'path':str(p),'sha256':hashlib.sha256(p.read_bytes()).hexdigest()} for name,p in paths.items()}
    (OUT/f'd{dim}-current-analysis.json').write_text(json.dumps(report,indent=2)+'\n')
    summary[dim]={'all_entry_roots_inside_extended_setup':True,
                  'extended_setup_net_vector_delta':sum(v for k,v in setup_delta.items() if k.startswith('v_')),
                  'all_four_candidate_updates_reach_the_same_entry_definition':len({tuple(c['reaching_entry_definition_pcs']) for c in candidate['runtime_invariant_consumptions']})==1,
                  'all_four_reference_updates_reach_the_same_entry_definition':len({tuple(c['reaching_entry_definition_pcs']) for c in reference['runtime_invariant_consumptions']})==1,
                  'all_candidate_and_reference_invariant_inputs_have_no_reachable_undefined_path':all(not c['reachable_live_in_paths'] for n in ['candidate','reference'] for c in report['focused_v_entry_slices'][n]['runtime_invariant_consumptions']),
                  'candidate_consumed_invariant_definition_pc':candidate['root_definition_pcs'],
                  'reference_consumed_invariant_definition_pc':reference['root_definition_pcs'],
                  'selected_recipe_counts':{n:len(v) for n,v in report['selected_address_recipes'].items()},
                  'six_ds_site_counts':{n:[len(s['consumers']) for s in v] for n,v in report['ds_sites'].items()},
                  'complete_reference_tail_state_mnemonics_verified':True,
                  'focused_entry_instruction_counts':{n:len(v['instructions']) for n,v in report['focused_v_entry_slices'].items()},
                  'extended_setup_instruction_counts':{n:len(v) for n,v in report['complete_setup_sequences'].items()}}
current_summary=json.loads((OUT/'current-summary.json').read_text())
for dim,checks in summary.items():
    details=json.loads((OUT/f'd{dim}-current-analysis.json').read_text())
    current_summary[str(dim)]['updates']['reference']=sorted(set(pc for site in details['ds_sites']['reference'] for pc in site['producer_pcs']))
    current_summary[str(dim)]['capture_correction_checks']=checks
(OUT/'current-summary.json').write_text(json.dumps(current_summary,indent=2)+'\n')
(OUT/'capture-correction-checks.json').write_text(json.dumps(summary,indent=2)+'\n')
print(json.dumps(summary,indent=2))
