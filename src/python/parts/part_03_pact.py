part = {
    'name': 'install pact packages',
    'steps': [
        {
            'name': 'back up previous files and link new files',
            'whitelist': 'windows 10 babun',
            'instructions': [
                {'arguments': ['pact install explore']},
                {'arguments': ['pact install tmux']},
                {'arguments': ['source ~/unix-setup/src/files-to-copy/antigen.zsh']},
                {'arguments': ['mkdir ~/.antigen']},
                {'arguments': ['cp ~/unix-setup/src/files-to-copy/antigen.zsh ~/.antigen/antigen.zsh']}]}]}
