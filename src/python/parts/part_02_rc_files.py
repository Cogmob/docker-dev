def get_part(config):
    return {
	    'name': 'create config files',
	    'steps': [
		{
		    'name': 'back up previous files and link new files',
		    'instructions': [
			{'arguments': [
			    'mkdir -p ~/.config-old',

			    'mv ~/.minttyrc ~/.config-old/.minttyrc',
			    'mv ~/.zshrc ~/.config-old/.zshrc',

			    'ln -s ~/unix_setup/src/files-to-copy/.antigen ~/.antigen',
			    'ln -s ~/unix_setup/src/files-to-copy/.minttyrc ~/.minttyrc',
			    'chmod 600 ~/.ssh/*',
			    'ln -s ~/unix_setup/src/files-to-copy/.tmux.conf ~/.tmux.conf',
			    'ln -s ~/unix_setup/src/files-to-copy/.vimrc ~/.vimrc',
			    'ln -s ~/unix_setup/src/files-to-copy/.zshrc ~/.zshrc',
			    'ln -s ~/unix_setup/src/ulti-snips ~/.vim/UltiSnips',
                            'ln -s ~/unix_setup/src/files-to-copy/.pyprc ~/.pyprc',

			    'alias explore="/home/home/unix_setup/src/files-to-copy/explore.bash"',
			    'git config --global core.pager cat',
                            'export PATH=$PATH:/cygdrive/c/Users/lavery/AppData/Roaming/npm:/cygdrive/c/Program Files/nodejs/']}]}]}
