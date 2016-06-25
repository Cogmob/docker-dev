import run_part
import io
import set_system
import set_home

data = io.read()

if 'system' not in data:
    data = set_system.set_system(data)
    data = set_home.set_home(data)
    data['logs'] = [[]]
    data['config'] = {}
io.write(data)

import get_parts
parts = get_parts.get_parts()

for index, get_part in enumerate(parts):
    if index < len(data['logs']) - 2:
        continue
    if index == len(data['logs']) - 1:
        if len(data['logs'][index]) > 0:
            if data['logs'][index][-1]['type'] == 'done':
                print data['logs'][index][-2]
                continue
    data, result = run_part.run_part(index, get_part(data), data)
    if 'failed' in result and result['failed']:
        break
