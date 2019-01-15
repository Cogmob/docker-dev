#!/bin/bash -e
git config --global user.email "luke.avery@live.co.uk"
git config --global user.name "cogmob"
git config --global core.autocrlf input
git config --global core.pager cat

# rc files
export CYGWIN="winsymlinks"

rm -f ~/.minttyrc
rm -f ~/.zshrc

find ~/unix_setup/src/rc-files -type f -name \* -exec ln -f -s "{}" ~ \;

# vim
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

# docker
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common \
    iproute2
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add - 
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt-get update
sudo apt-get install docker
sudo npm i -g npx
