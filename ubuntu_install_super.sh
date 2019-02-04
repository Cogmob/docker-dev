#!/bin/bash -e

mkdir -p /etc/ssh
touch /etc/ssh/sshd_config
echo ClientAliveInterval 600 >> /etc/ssh/sshd_config
echo ClientAliveCountMax 3 >> /etc/ssh/sshd_config

ln -sf ~/unix_setup/src/other/solarized.vim ~/.vim/colors/solarized.vim
rm -rf vim-colors-solarized
git clone git://github.com/altercation/vim-colors-solarized.git

sudo echo "db_home: $(pwd)" >> /etc/nsswitch.conf
sudo echo "db_shell: /bin/zsh" >> /etc/nsswitch.conf
sudo apt-get update
sudo apt-get -y install git zsh npm curl tmux
sudo sed -i 's/bash/zsh/g' /etc/passwd
git config --global core.editor "vim"

