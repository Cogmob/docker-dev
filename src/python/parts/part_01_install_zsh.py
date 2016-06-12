part = {
    'name': 'set up zsh',
    'steps': [
        {
            'name': 'set up git user',
            'instructions': [{'arguments': [
                'git config --global user.name "cogmob"',
                'git config --global user.email "luke.avery@live.co.uk"']}]},
        {
            'name': 'install zsh',
            'whitelist': 'none',
            'instructions': [{'arguments': ['sudo apt-get zsh -f']}]},
        {
            'name': 'set up oh my zsh',
	    'instructions': [{'arguments': ['sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"']},
                {'arguments': ['zsh']}]}]}
