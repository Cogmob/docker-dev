import argparse
import shutil
import os
import re
import sys

def run():
    parser = argparse.ArgumentParser(description='populate the search directory')
    parser.add_argument(
        '--title',
        dest='title',
        default='searchterm',
        help='the title to add to the metadata')
    parser.add_argument(
        '-s',
        dest='save',
        help='store the last search results',
        action='store_true')
    parser.add_argument(
        '-d',
        dest='dirs',
        help='create folders in the results',
        action='store_true')
    args = parser.parse_args()
    if (args.save):
        save()
    else:
        search(args.dirs, args.title)

def search(dirs, title):
    ansi_escape = re.compile(r'/(\x9B|\x1B\[)[0-?]*[ -\/]*[@-~]/')
    r= re.compile("\033\[[0-9;]+m")
    current_dir = os.getcwd()
    search_results = os.path.expanduser('~/search_results/..current')
    shutil.rmtree(search_results)
    os.mkdir(search_results)
    os.chdir(search_results)

    for line in sys.stdin:
        line = line.replace('\n', '')
        line = r.sub('', line)
        print(line)
        if (dirs):
            pathname = search_results + '/' + line
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
            pathname = search_results + '/' + os.path.basename(line) + '__'
            pathname += dir_string + os.path.basename(line)
            os.symlink(current_dir + '/' + line, pathname)
            os.symlink(
                    current_dir + '/' + os.path.dirname(line),
                    pathname + '__folder')

    metapath = search_results +'/.meta'
    with open(metapath, 'w+') as f:
        cdf = current_dir.split('/')[-2:]
        cdf = [i for i in cdf if i]
        f.write(title + '_' + '.'.join(cdf))

def save():
    search_results = os.path.expanduser('~/search_results/..current')
    with open(search_results + '/.meta') as f:
        filename = f.read().replace('/n', '')
        print('saving ' + filename)
        shutil.copytree(
                search_results,
                search_results + '/../' + filename,
                symlinks=True)

run()
