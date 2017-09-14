import subprocess as s

def set_home(data):
    print ''
    print 'what is your windows username?'
    print 'this is used for setting the startup programs'
    print 'it is probably the folder name under Users:'
    print ''
    s.Popen(['realpath', '~'])
    s.Popen(['echo'])
    print ''
    home_path = raw_input('> ')
    data['home_path'] = home_path
    return data
