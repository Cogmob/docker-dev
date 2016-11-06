def get_part(config):
    return {
	    'name': 'install pact packages',
	    'steps': [
		{
		    'name': 'set up vim',
		    'instructions': [
			{'arguments': [
			    'mkdir -p ~/.vim/bundle',
			    'cd ~/.vim/bundle',
			    'cp ~/unix_setup/src/other/solarized.vim ~/.vim/colors/solarized.vim',
			    'rm -rf vim-colors-solarized',
			    'rm -rf neobundle.vim',
			    'git clone git://github.com/altercation/vim-colors-solarized.git',
			    'cd ~',
			    'mkdir -p /a/.vim/bundle',
			    'git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim',
			    'mkdir -p ~/.vim/bundle/vim/bundle/vim-snippets',
			    'ln -s ~/unix_setup/src/ulti-snips ~/.vim/bundle/vim/bundle/vim-snippets/UserUltiSnips']}]}]}
