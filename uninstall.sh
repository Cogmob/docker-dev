rm ~/unix-setup/saved-data

unlink ~/.zshrc 2>&1
unlink ~/.minttyrc 2>&1

cp ~/.config-old/.zshrc ~/.zshrc 2>&1
cp ~/.config-old/.minttyrc ~/.minttyrc 2>&1

unlink ~/.antigen 2>&1
unlink ~/.ssh 2>&1
unlink ~/.tmux.conf 2>&1
unlink ~/.vimrc 2>&1

rm -rf ~/.vim/bundle/*
