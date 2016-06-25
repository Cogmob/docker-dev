import subprocess as s

def set_home(data):
    s.Popen(['realpath', '~'])
    print 'what is the address of your home?'
    print ''
    home_path = raw_input('> ')
    data['home_path'] = home_path
    return data
