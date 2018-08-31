#!/bin/bash -e
git config --global user.email "luke.avery@live.co.uk
git config --global user.name "cogmob"
git config --global core.autocrlf input

# rc files
export CYGWIN="winsymlinks

rm -f ~/.minttyrc
rm -f ~/.zshrc

find ~/unix_setup/src/rc-files -type f -name \* -exec ln -f -s "{}" ~ \;

alias explore="/home/unix_setup/src/other/explore.bash"
git config --global core.pager cat
export PATH="$PATH:/cygdrive/c/Users/lavery/AppData/Roaming/npm:/cygdrive/c/Program Files/nodejs/"

# vim
mkdir -p ~/.vimundo
mkdir -p ~/.vim/bundle
cd ~/.vim/bundle
mkdir -p ~/.vim/colors
ln -s ~/unix_setup/src/other/solarized.vim ~/.vim/colors/solarized.vim
rm -rf vim-colors-solarized
rm -rf neobundle.vim
git clone git://github.com/altercation/vim-colors-solarized.git
cd ~
git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
mkdir -p ~/.vim/bundle/vim/bundle/vim-snippets
vim +NeoBundleInstall +qall
ln -s ~/unix_setup/src/ulti-snips ~/.vim/bundle/vim/bundle/vim-snippets/UserUltiSnips
