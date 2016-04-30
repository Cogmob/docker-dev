def test1(results):
    assert 1 == 1, 'one equals one'

def test2(results):
    assert 2 == 2, 'two equals two'

def print_stuff():
    return part

part = {
    'name': 'test unix commands',
    'steps': [
        {
            'name': 'basic printing test',
            'whitelist': 'windows 10 babun',
            'blacklist': 'asdf',
            'instructions': [
               {
                   'arguments': ['echo what'],
                   'expect': 'what'}],
            'tests': [test1, test2]},
        {
            'name': 'second printing test',
            'instructions': [
                {'arguments': [
		    'git config --global user.email "luke.avery@live.co.uk"',
                    'git config --global user.name "cogmob"']}]}]}
