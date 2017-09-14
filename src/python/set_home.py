import subprocess as s

def set_home(data):
    print ''
    print 'what is your windows username?'
    print '(this is needed for setting the startup programs)'
    print ''
    home_path = raw_input('> ')
    data['home_path'] = home_path
    return data
