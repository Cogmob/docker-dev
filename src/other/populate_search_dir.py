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
    parser.add_argument(
        '-i',
        dest='inplace',
        help='store the results in the current folder',
        action='store_true')
    args = parser.parse_args()
    if (args.save):
        save(args.inplace)
    else:
        search(args.dirs, args.title, args.inplace)

def search(dirs, title, inplace):
    ansi_escape = re.compile(r'/(\x9B|\x1B\[)[0-?]*[ -\/]*[@-~]/')
    r= re.compile("\033\[[0-9;]+m")
    current_dir = os.getcwd()
    if inplace:
        search_results = current_dir + '/_search_results'
    else:
        search_results = os.path.expanduser('~/search_results/_..current')
    if os.path.exists(search_results):
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
            dir_string = []
            for part in reversed(line.split('/')):
                add_str = part.replace('.','')
                if add_str is not '':
                    dir_string.append(add_str)
            dir_string = '.'.join(dir_string)
            extension = os.path.basename(line).split('.')[-1]
            pathname = search_results + '/' + os.path.basename(line) + '__'
            pathname += dir_string + '.' + extension
            os.symlink(current_dir + '/' + line, pathname)
            pathname = search_results + '/.' + os.path.basename(line) + '__'
            pathname += dir_string + '__folder'
            os.symlink(current_dir + '/' + os.path.dirname(line), pathname)

    metapath = search_results +'/.meta'
    with open(metapath, 'w+') as f:
        cdf = current_dir.split('/')[-2:]
        cdf = [i for i in cdf if i]
        f.write(title + '_' + '.'.join(cdf))

def save(inplace):
    from_path = os.path.expanduser('~/search_results/_..current')
    if inplace:
        frompath = os.getcwd() + '/_search_results'
    to_path = os.path.expanduser('~/search_results')
    with open(from_path + '/.meta') as f:
        filename = f.read().replace('/n', '')
        print('saving ' + filename)
        new_path = to_path + '/../_' + filename
        if os.path.exists(new_path):
            shutil.rmtree(new_path)
        shutil.copytree(from_path, new_path, symlinks=True)

run()
