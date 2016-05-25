part = {
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
            'name': 'source antigen',
            'instructions': [
                {'arguments': [
                    'source ~/.antigen/antigen.zsh']}]}]}
