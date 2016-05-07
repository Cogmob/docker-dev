part = {
    'name': 'install pact packages',
    'steps': [
        {
            'name': 'set up vim',
            'instructions': [
                {'arguments': [
                    'mkdir ~/.vim/bundle',
                    'cd ~/.vim/bundle',
                    'rm -rf vim-colors-solarized',
                    'rm -rf neobundle.vim',
                    'git clone git://github.com/altercation/vim-colors-solarized.git',
                    'cd ~',
                    'mkdir -p /a/.vim/bundle',
                    'git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim',
                    'vim +NeoBundleInstall +qall']}]}]}
