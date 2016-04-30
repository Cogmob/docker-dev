part = {
    'name': 'create config files',
    'steps': [
        {
            'name': 'back up previous files and link new files',
            'instructions': [
                {'arguments': [
                    'mkdir ~/.config-old',

                    'mv ~/.minttyrc ~/.config-old/.minttyrc',
                    'mv ~/.zshrc ~/.config-old/.zshrc',

                    'ln -s ~/unix-setup/files-to-copy/.antigen ~/.antigen',
                    'ln -s ~/unix-setup/files-to-copy/.minttyrc ~/.minttyrc',
                    'ln -s ~/unix-setup/files-to-copy/.ssh ~/.ssh',
                    'ln -s ~/unix-setup/files-to-copy/.tmux.conf ~/.tmux.conf',
                    'ln -s ~/unix-setup/files-to-copy/.vimrc ~/.vimrc',
                    'ln -s ~/unix-setup/files-to-copy/.zshrc ~/.zshrc',

                    'alias explore="./~/unix-setup/files-to-copy/explore.bash"']}]}]}