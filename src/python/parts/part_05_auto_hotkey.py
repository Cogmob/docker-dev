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
                            '~/unix_setup/src/other/explore.bash /home/home/ahk/shortcuts',
			    '~/unix_setup/src/other/explore.bash "/cygdrive/c/Users/%s/AppData/Roaming/Microsoft/Windows/Start Menu/Programs/Startup"' % config['home_path']]}]}]}
