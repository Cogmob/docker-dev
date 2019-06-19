#!/bin/bash -e
git config --global core.autocrlf input
git config --global user.name "cogmob"
git config --global user.email "luke.avery@live.co.uk"


export CYGWIN="winsymlinks"

rm -f ~/.minttyrc
rm -f ~/.zshrc

find ~/unix_setup/src/rc-files -type f -name \* -exec ln -f -s "{}" ~ \;

alias explore="/home/unix_setup/src/other/explore.bash"
git config --global core.pager cat
export PATH="$PATH:/cygdrive/c/Users/lavery/AppData/Roaming/npm:/cygdrive/c/Program Files/nodejs/"


pact install tmux
pact install cscope
pact install krb5-workstation


mkdir -p ~/.vimundo
mkdir -p ~/.vim/bundle
cd ~/.vim/bundle
mkdir -p ~/.vim/colors
cd ~
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
sh installer.sh ~/.cache/dein
rm installer.sh
mkdir -p ~/.vim/bundle/vim/bundle/vim-snippets
vim +"call dein#install()" +qall


cd ~
rm -rf ahk
git clone --depth 1 git@bitbucket.org:Cogbot/ahk.git


echo add ahk to startup
echo pact install the_silver_searcher
echo explore . -> right click on quick access -> pin current folder to quick access
