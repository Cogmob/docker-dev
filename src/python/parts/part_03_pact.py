def get_part(config):
    return {
	    'name': 'install pact packages',
	    'steps': [
		{
		    'blacklist': 'windows 10 cygwin',
		    'name': 'install various',
		    'instructions': [
			{'arguments': [
				'pact install tmux',
				'pact install cscope',
				'pact install krb5-workstation']}]},
		{
		    'name': 'python',
		    'instructions': [
			{'arguments': [
                'mkdir -p ~/downloads',
			    'cd ~/downloads',
			    'wget https://bootstrap.pypa.io/ez_setup.py -O - | python',
			    'easy_install pip',
			    'pip install virtualenv']}]}]}
