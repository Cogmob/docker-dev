# UNIX SETUP #

A collection of useful steps for starting a new unix repo

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