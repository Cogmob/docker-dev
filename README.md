### windows 10 babun ###

```bash
echo -e  'y\n'|ssh-keygen -q -N "" -f ~/.ssh/id_rsa -t rsa -b 4096 -C "luke.avery@live.co.uk" ; sudo chmod 600 ~/.ssh/* ; cat ~/.ssh/id_rsa.pub
```

* https://bitbucket.org/account/user/Cogbot/ssh-keys/

```bash
git clone -f git@bitbucket.org:Cogbot/unix_setup.git ; cd unix_setup ; ./install.sh
```

```bash
vim +NeoBundleInstall +qall
```