def get_part(config):
    return {
	    'name': 'install pact packages',
	    'steps': [
		{
		    'name': 'set up vim',
		    'instructions': [
			{'arguments': [
				'mkdir -p ~/.vimundo',
				'mkdir -p ~/.vim/bundle',
				'cd ~/.vim/bundle',
				'mkdir -p ~/.vim/colors',
				'cd ~',
				'curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh',
				'sh installer.sh ~/.cache/dein',
				'rm installer.sh',
				'mkdir -p ~/.vim/bundle/vim/bundle/vim-snippets',
				'vim +"call dein#install()" +qall']}]}]}
