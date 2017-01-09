import argparse
import shutil
import os
import re
import sys

parser = argparse.ArgumentParser(description='populate the search directory')
parser.add_argument(
    '-d',
    dest='dirs',
    help='create folders in the results',
    action='store_true')
args = parser.parse_args()
dirs = args.dirs

ansi_escape = re.compile(r'/(\x9B|\x1B\[)[0-?]*[ -\/]*[@-~]/')
r= re.compile("\033\[[0-9;]+m")
current_dir = os.getcwd()
search_results = os.path.expanduser('~/search_results')
shutil.rmtree(search_results)
os.mkdir(search_results)
os.chdir(search_results)

for line in sys.stdin:
    line = line.replace('\n', '')
    line = r.sub('', line)
    print(line)
    if (dirs):
        pathname = os.path.expanduser('~/search_results/' + line)
        d = os.path.dirname(pathname)
        if not os.path.exists(d):
            os.makedirs(d)
        os.symlink(current_dir + '/' + line, pathname)
    else:
        dir_string = ''
        for part in reversed(line.split('/')):
            add_str = part[:4].replace('.','')
            if add_str is not '':
                dir_string += add_str
                dir_string += '.'
        pathname = os.path.expanduser(
                '~/search_results/'
                + os.path.basename(line)
                + '__'
                + dir_string
                + os.path.basename(line))
        os.symlink(current_dir + '/' + line, pathname)
        os.symlink(
                current_dir + '/' + os.path.dirname(line),
                pathname + '__folder')
