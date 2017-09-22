def get_part(config):
    return {
	    'name': 'set up zsh',
	    'steps': [
		{
		    'name': 'set up git user',
		    'instructions': [{'arguments': [
			'git config --global core.autocrlf input',
                        'git config --global user.name "cogmob"',
			'git config --global user.email "luke.avery@live.co.uk"']}]}]}
