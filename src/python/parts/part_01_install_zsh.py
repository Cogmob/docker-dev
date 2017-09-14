def get_part(config):
    return {
	    'name': 'set up zsh',
	    'steps': [
		{
		    'name': 'set up non identifiable home directory',
		    'instructions': [{'arguments': [
			"export HOME=`cygpath -w -p /`",
                        'mkpasswd -l -p "$(cygpath -H)" > /etc/passwd',
                        "babun install"]}]},
		{
		    'name': 'set up git user',
		    'instructions': [{'arguments': [
			'git config --global user.name "cogmob"',
			'git config --global user.email "luke.avery@live.co.uk"']}]}]}
