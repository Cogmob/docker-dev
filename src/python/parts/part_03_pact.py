part = {
    'name': 'install pact packages',
    'steps': [
        {
            'blacklist': 'windows 10 cygwin',
            'name': 'install tmux',
            'instructions': [
                {'arguments': ['pact install tmux']}]},
	{
            'name': 'source antigen',
            'instructions': [
                {'arguments': [
                    'source ~/.antigen/antigen.zsh']}]}]}
