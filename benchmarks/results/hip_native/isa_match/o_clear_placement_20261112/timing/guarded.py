"""Runs GPU timing jobs only on an idle GPU group and retries runs that other tenants contaminated.

Groups are amd-smi GPUs 0-3 and 4-7. HIP -> amd-smi: 0->3, 1->0, 2->2, 3->1, 4->7, 5->4, 6->6, 7->5.
Before a job, both groups are sampled for 3 s; a job runs on a group whose four GPUs stayed at or below
5% GFX. During the job all GPUs are sampled once per second. A run is contaminated if another GPU of
its group was above 5% in more than 5% of the samples; it is renamed *-contaminated-N and retried.

Usage: guarded.py JOBS.json LOG.txt   (JOBS: [{"name", "out", "cmd": [...], "env": {...}}, ...])
"""
import json
import os
import re
import shutil
import subprocess
import sys
import time

HIP_OF_AMD = {0: 1, 1: 3, 2: 2, 3: 0, 4: 5, 5: 7, 6: 6, 7: 4}
PREFERRED = {0: 3, 1: 4}            # group -> amd-smi index of the device to use
ROW = re.compile(r'^\s*(\d+)\s+(\d)\s+\d+\s+\d+ MHz\s+(\d+) %')
ENV_SH = '/home/jinpli/workspace/home/jinpli/development/zyfa/build/env.sh'
ASIC = '/home/jinpli/workspace/home/jinpli/venv/01/lib/python3.14/site-packages/torch/share/libdrm'


def sample(seconds):
    out = subprocess.run(['amd-smi', 'monitor', '-u', '-w', '1', '-i', str(seconds)], capture_output=True, text=True).stdout
    util = {g: [] for g in range(8)}
    for line in out.splitlines():
        m = ROW.match(line)
        if m:
            util[int(m[2])].append(int(m[3]))
    return util


def idle_group():
    util = sample(3)
    for group in (0, 1):
        if all(max(util[g] or [100]) <= 5 for g in range(4 * group, 4 * group + 4)):
            return group
    return None


def busy_share(path):
    util = {g: [] for g in range(8)}
    for line in open(path):
        m = ROW.match(line)
        if m:
            util[int(m[2])].append(int(m[3]))
    return {g: (sum(x > 5 for x in v) / len(v) if v else None) for g, v in util.items()}


def main():
    jobs = json.load(open(sys.argv[1]))
    log = open(sys.argv[2], 'a')

    def note(msg):
        line = f'{time.strftime("%Y-%m-%dT%H:%M:%SZ", time.gmtime())} {msg}'
        print(line, flush=True)
        log.write(line + '\n')
        log.flush()

    for job in jobs:
        for attempt in range(1, 31):
            group = idle_group()
            while group is None:
                note(f'{job["name"]}: no idle group, waiting')
                time.sleep(30)
                group = idle_group()
            amd = PREFERRED[group]
            hip = HIP_OF_AMD[amd]
            out = job['out']
            os.makedirs(out, exist_ok=True)
            env = dict(job.get('env', {}), HIP_VISIBLE_DEVICES=str(hip), AMDGPU_ASIC_ID_TABLE_PATHS=ASIC)
            exports = ' '.join(f'export {k}={json.dumps(v)};' for k, v in env.items())
            cmd = ' '.join(json.dumps(c) for c in job['cmd'])
            mon = subprocess.Popen(['amd-smi', 'monitor', '-u', '-w', '1'], stdout=open(f'{out}/activity.txt', 'w'),
                                   stderr=subprocess.STDOUT, env=dict(os.environ, PYTHONUNBUFFERED='1'))
            t0 = time.time()
            proc = subprocess.Popen(['bash', '-c', f'source {ENV_SH}; {exports} exec {cmd}'],
                                    stdout=open(f'{out}/run.log', 'w'), stderr=subprocess.STDOUT)
            others = [g for g in range(4 * group, 4 * group + 4) if g != amd]
            aborted = False
            while proc.poll() is None:
                time.sleep(2)
                counts = {g: 0 for g in others}
                for line in open(f'{out}/activity.txt'):
                    m = ROW.match(line)
                    if m and int(m[2]) in counts and int(m[3]) > 5:
                        counts[int(m[2])] += 1
                if max(counts.values()) >= 4:
                    proc.kill()
                    proc.wait()
                    aborted = True
            rc = proc.returncode
            dt = time.time() - t0
            mon.terminate()
            mon.wait()
            share = busy_share(f'{out}/activity.txt')
            worst = max((share[g] or 0.0) for g in others)
            clean = rc == 0 and not aborted and worst <= 0.05
            with open(f'{out}/guard.json', 'w') as f:
                json.dump({'hip': hip, 'amd_smi': amd, 'group': group, 'seconds': round(dt, 1), 'rc': rc,
                           'busy_share': share, 'clean': clean, 'attempt': attempt}, f, indent=1)
            note(f'{job["name"]}: attempt {attempt} hip {hip} (amd {amd}) {dt:.0f}s rc {rc} '
                 f'other-gpu busy share {worst:.2f} -> {"clean" if clean else "CONTAMINATED"}')
            if clean:
                break
            shutil.move(out, f'{out}-contaminated-{attempt}')
        else:
            note(f'{job["name"]}: gave up after 30 attempts')


if __name__ == '__main__':
    main()
