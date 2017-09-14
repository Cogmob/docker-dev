import subprocess

def get_part(config):
	return {
	    'name': 'set up autohotkey',
	    'steps': [
		{
		    'name': 'check out repo',
		    'instructions': [
			{'arguments': [
			    'cd ~',
			    'rm -rf ahk',
			    'git clone git@bitbucket.org:Cogbot/ahk.git',
                            'ln -s -f ahk/main.ahk "/cygdrive/c/Users/%s/AppData/Roaming/Microsoft/Windows/Start Menu/Programs/Startup/main.lnk"' % config['home_path'],
			    'ahk/main.ahk']}]}]}
