import os
import importlib

def get_parts():
    files = os.listdir(os.path.expanduser('~/unix_setup/src/python/parts'))
    paths = []
    for f in files:
        if f.endswith('.py') and '__init__' not in f:
            path = f.split('.')[0]
            mod = importlib.import_module('parts.%s'%path)
            paths.append(mod.get_part)
    return paths
