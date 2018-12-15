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

echo ClientAliveInterval 600 >> /etc/ssh/sshd_config
echo ClientAliveCountMax 3 >> /etc/ssh/sshd_config

# vim
mkdir -p ~/.vimundo
mkdir -p ~/.vim/bundle
cd ~/.vim/bundle
mkdir -p ~/.vim/colors
ln -sf ~/unix_setup/src/other/solarized.vim ~/.vim/colors/solarized.vim
rm -rf vim-colors-solarized
git clone git://github.com/altercation/vim-colors-solarized.git
cd ~
curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh > install.sh
sh ./install.sh
mkdir -p ~/.vim/bundle/vim/bundle/vim-snippets
vim +NeoBundleInstall +qall

sudo echo "db_home: $(pwd)" >> /etc/nsswitch.conf
sudo echo "db_shell: /bin/zsh" >> /etc/nsswitch.conf
sudo apt-get update
sudo apt-get -y install git zsh npm curl tmux
sudo sed -i 's/bash/zsh/g' /etc/passwd
git config --global core.editor "vim"

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
