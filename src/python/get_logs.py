import io
from termcolor import colored, cprint

def pr(s, t, l, i):
    if t == 'part name':
        print ''
        cprint(s, attrs=['bold'])
    if t == 'step name':
        print ''
        cprint('%d. %s'%(l,s), attrs=['bold'])
    if t == 'arguments':
        cprint(i, 'yellow')
        print s
    if t == 'results':
        cprint(s, 'blue')
    if t == 'error':
        cprint(s, 'red')

data = io.read()
for step in data['logs']:
    for log in step:
        pr(log['string'], log['type'], log['step'], log['instruction'])
