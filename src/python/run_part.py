import sys
import os
import subprocess as s
import io
from termcolor import colored, cprint

def aa(s):
    if isinstance(s, basestring):
        return [s]
    return s

def allowed(arr, key):
    if 'whitelist' in arr:
        if key not in aa(arr['whitelist']):
            return False
    if 'blacklist' in arr:
        if key in aa(arr['blacklist']):
            return False
    return True

def pr(data, indexes, s, t):
    if t == 'part name':
        print ''
        cprint(s, attrs=['bold'])
    if t == 'step name':
        print ''
        cprint('- %s'%s, attrs=['bold'])
    if t == 'arguments':
        print s
    if t == 'results':
        cprint(s, 'blue')
    if t == 'done':
        cprint(s, 'blue')
    if t == 'error':
        cprint(s, 'red')
    data['logs'][indexes['part']].append({
        'type': t,
        'string': s,
        'step': indexes['step']+1,
        'instruction': indexes['instruction']+1})
    io.write(data)

def get_indexes(part_index, logs):
    for log_index in reversed(range(len(logs))):
        if logs[log_index]['type'] == 'results':
            return {
                'part': part_index,
                'step': logs[log_index]['step'],
                'instruction': logs[log_index]['instruction']}
    return {
        'part': part_index,
        'step': -1,
        'instruction': -1}

def run_part(part_index, part, data):
    if len(data['logs']) <= part_index:
        data['logs'].append([])
    indexes = get_indexes(part_index, data['logs'][part_index])
    system = data['system']
    if not allowed(part, system):
        return data, {}
    if indexes['step'] < 1:
        pr(data, indexes, part['name'], 'part name')
    steps = part['steps']
    for step_index, step in enumerate(steps):
        if step_index < indexes['step']-1:
            continue
        indexes['step'] = step_index
        if not allowed(step, system):
            continue
        results = []
        pr(data, indexes, step['name'], 'step name')
        instructions = step['instructions']
        for instruction_index, instruction in enumerate(instructions):
            if instruction_index < indexes['instruction']:
                continue
            indexes['instruction'] = instruction_index
            if not allowed(instruction, system):
                continue
            try:
                for arg in instruction['arguments']:
                    pr(data, indexes, arg, 'arguments')
                    result = ''
                    if arg.startswith('source '):
                        filename = os.path.expanduser(arg.split('source ')[1])
                        s.Popen(['/bin/zsh', filename])
                    elif arg.startswith('cd '):
                        os.chdir(os.path.expanduser(arg.split('cd ')[1]))
                    else:
                        result = s.check_output(arg, shell=True)
            except Exception as e:
                pr(data, indexes, str(e), 'error')
                return data, {'failed': True}
            pr(data, indexes, result, 'results')
            results.append(result)
            if not check_expect(instruction, result, data, indexes):
                return data, {'failed': True}
            if check_reject(instruction, result, data, indexes):
                return data, {'failed': True}
        instruction_completed = -1
        if not check_tests(step, results, data, indexes):
            return data, {'failed': True}
    pr(data, indexes, 'done', 'done')
    return data, {}

def check_expect(instruction, result, data, indexes):
    if 'expect' in instruction:
        for expected in aa(instruction['expect']):
            found = False
            for res_line in aa(result):
                if expected in res_line:
                    found = True
            if found:
                return True
        pr(data, indexes, '%s not found in output'%(result), 'error')
        return False
    return True

def check_reject(instruction, result, data, indexes):
    if 'reject' in instruction:
        found = False
        for expected in aa(instruction['reject']):
            for res_line in aa(result):
                if expected in res_line:
                    found = True
            if found:
                pr(data, indexes, '%s found in output'%(expected), 'error')
                return True
    return False

def check_tests(step, results, data, indexes):
    if 'tests' in step:
        for test in aa(step['tests']):
            try:
                test(results)
            except Exception as e:
                pr(data, indexes, str(e), 'error')
                return False
    return True