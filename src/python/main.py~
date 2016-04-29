import run_part
import io
import set_system

data = io.read()

if 'system' not in data:
    data = set_system.set_system(data)
    data['logs'] = [[]]
io.write(data)

import get_parts
parts = get_parts.get_parts()

for index, part in enumerate(parts):
    if index+1 >= len(data['logs']):
        data, result = run_part.run_part(index, part, data)
        if 'failed' in result and result['failed']:
            break
