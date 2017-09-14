def get_part(config):
    return {
	    'name': 'set up zsh',
	    'steps': [
		{
		    'name': 'set up non identifiable home directory',
		    'instructions': [{'arguments': [
			'rm -rf /home/home',
			'ln -s $HOME /home/home',
			"export HOME='/home/home'"]}]},
		{
		    'name': 'set up git user',
		    'instructions': [{'arguments': [
			'git config --global user.name "cogmob"',
			'git config --global user.email "luke.avery@live.co.uk"']}]}]}
