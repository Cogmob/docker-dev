def get_part(config):
    return {
	    'name': 'install pact packages',
	    'steps': [
		{
		    'blacklist': 'windows 10 cygwin',
		    'name': 'install tmux',
		    'instructions': [
			{'arguments': ['pact install tmux']}]},
		{
		    'name': 'install cscope',
		    'instructions': [
			{'arguments': ['pact install cscope']}]},
		{
		    'name': 'python',
		    'instructions': [
			{'arguments': [
                'mkdir -p ~/downloads',
			    'cd ~/downloads',
			    'wget https://bootstrap.pypa.io/ez_setup.py -O - | python',
			    'easy_install pip',
			    'pip install virtualenv']}]}]}
