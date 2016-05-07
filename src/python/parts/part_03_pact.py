part = {
    'name': 'install pact packages',
    'steps': [
        {
            'name': 'install tmux',
            'instructions': [
                {'arguments': ['pact install tmux']}]},
	{
            'name': 'source antigen',
	    'instructions': [
                {'arguments': [
                    'source ~/.antigen/antigen.zsh']}]}]}
