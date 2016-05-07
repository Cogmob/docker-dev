```bash
ssh-keygen -t rsa -b 4096 -C "luke.avery@live.co.uk"
sudo chmod 600 ~/.ssh/id_rsa
sudo chmod 600 ~/.ssh/id_rsa.pub
cat ~/.ssh/id_rsa.pub
```

* https://bitbucket.org/account/user/Cogbot/ssh-keys/

```bash
git clone git@bitbucket.org:Cogbot/unix-setup.git
cd unix-setup
./install.sh

git config --global user.name "John Doe"
git config --global user.email johndoe@example.com
```

# UNIX SETUP #

A collection of useful steps for starting a new unix install

#!/bin/bash
/bin/cygstart --explore "${1:-.}"


```bash
sudo apt-get install zsh -f
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

zsh
```
```bash
cd ~
git clone git@bitbucket.org:Cogbot/unix-setup.git
mv .antigen .antigen.old
mv .minttyrc .minttrc.old
mv .ssh .ssh.old
mv .tmux.conf .tmux.conf.old
mv .vimrc .vimrc.old
mv .zshrc .zshrc.old

ln -s unix-setup/.ssh .ssh
ln -s unix-setup/.gitignore .gitignore
ln -s unix-setup/.minttyrc .minttrc
ln -s unix-setup/.tmux.conf .tmux.conf
ln -s unix-setup/.vimrc .vimrc
ln -s unix-setup/.zshrc .zshrc

alias explore="./~/unix-setup/explore.bash"
```

```bash
pact install explore
pact install tmux
curl -L https://raw.githubusercontent.com/zsh-users/antigen/master/antigen.zsh > antigen.zsh
source antigen.zsh
mkdir .antigen
mv antigen.zsh .antigen/antigen.zsh
antigen bundle zsh-users/zsh-syntax-highlighting
```

```bash
mkdir downloads
cd downloads
curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh > install.sh
./install.sh
cd ~/.vim/bundle
git clone git://github.com/altercation/vim-colors-solarized.git
cp vim-colors-solarized/colors/solarized.vim ~/.vim/colors/
cd ~
```

```bash
mkdir -p /a/.vim/bundle
git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
vim +NeoBundleInstall +qall
```

```bash
ln -s /c/Users/lukea lukea
ln -s ~ /a
```

```bash
pact install cmake
mkdir ~/downloads
cd ~/downloads
curl http://peak.telecommunity.com/dist/ez_setup.py
python ez_setup.py
```