#!/bin/bash -e
apt-get update
apt-get -y install git zsh npm curl tmux apt-utils vim

mkdir -p /etc/ssh
touch /etc/ssh/sshd_config
echo ClientAliveInterval 600 >> /etc/ssh/sshd_config
echo ClientAliveCountMax 3 >> /etc/ssh/sshd_config

echo "db_home: $(pwd)" >> /etc/nsswitch.conf
echo "db_shell: /bin/zsh" >> /etc/nsswitch.conf
sed -i 's/bash/zsh/g' /etc/passwd
git config --global core.editor "vim"

# ln -sf ~/docker-dev/src/other/solarized.vim ~/.vim/colors/solarized.vim
# rm -rf vim-colors-solarized
# git clone git://github.com/altercation/vim-colors-solarized.git
