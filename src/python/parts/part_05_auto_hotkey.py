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
			    'git clone git@bitbucket.org:Cogbot/first_principles.git',
			    'git clone git@bitbucket.org:Cogbot/useful.git',
			    'git clone git@bitbucket.org:Cogbot/cv.git',
			    'git clone git@gitlab.org:lambdagames/useful.git',
                            'ln -s -f ahk/main.ahk "/cygdrive/c/Users/%s/AppData/Roaming/Microsoft/Windows/Start Menu/Programs/Startup/main.lnk"' % config['home_path'],
			    'ahk/main.ahk']}]}]}
