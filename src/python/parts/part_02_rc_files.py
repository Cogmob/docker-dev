def get_part(config):
    return {
	    'name': 'create config files',
	    'steps': [
		{
		    'name': 'back up previous files and link new files',
		    'instructions': [
			{'arguments': [
			    'rm -f ~/.minttyrc',
			    'rm -f ~/.zshrc',

                            'find ~/unix_setup/src/files-to-copy -type f -name \\* -exec ln -f -s "{}" ~ \\;',

			    'alias explore="/home/home/unix_setup/src/other/explore.bash"',
			    'git config --global core.pager cat',
                            'export PATH="$PATH:/cygdrive/c/Users/lavery/AppData/Roaming/npm:/cygdrive/c/Program Files/nodejs/"']}]}]}
