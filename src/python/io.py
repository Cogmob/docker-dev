import json
import os
path = os.path.expanduser('~/unix_setup/saved-data')

def read():
    try:
        with open(path) as f:
	    return json.load(f)
    except ValueError:
	    return {}
    except IOError:
	    return {}

def write(o):
    if os.path.exists(path):
        with open(path, 'w') as f:
            f.write(json.dumps(o))
    else:
        with open(path, 'a') as f:
            f.write(json.dumps(o))
