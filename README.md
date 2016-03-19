# UNIX SETUP #

A collection of useful steps for starting a new unix install

```bash
cd ~
git clone git@bitbucket.org:Cogbot/unix-setup.git
mv .antigen .antigen.old
mv .ssh .ssh.old
mv .gitignore .gitignre.old
mv .minttyrc .minttrc.old
mv .tmux.conf .tmux.conf.old
mv .vimrc .vimrc.old
mv .zshrc .zshrc.old

ln -s unix-setup/.ssh .ssh
ln -s unix-setup/.gitignore .gitignore
ln -s unix-setup/.minttyrc .minttrc
ln -s unix-setup/.tmux.conf .tmux.conf
ln -s unix-setup/.vimrc .vimrc
ln -s unix-setup/.zshrc .zshrc

ssh-keygen -t rsa -b 4096 -C "luke.avery@live.co.uk"
```

```bash
cat ~/.ssh/id_rsa.pub
sudo chmod 600 ~/.ssh/id_rsa
sudo chmod 600 ~/.ssh/id_rsa.pub
```

* https://github.com/settings/keys
* https://bitbucket.org/account/user/Cogbot/ssh-keys/