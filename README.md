## install these first ##

https://nodejs.org/en/download/

## create a new babun install ##

change the target address as appropriate:

```bash
cd ~/home/Downloads/babun-1.2.0 ; yes | ./install.bat /target "C:\Users\[username]\babun"
```

## initialise it ##

```bash
mkdir /home ; export HOME=/home ; echo "db_home: /home" > /etc/nsswitch.conf ; echo "db_shell: /bin/zsh" > /etc/nsswitch.conf ; babun update ; cd ~ ; mkdir .ssh ; yes | ssh-keygen -q -N "" -f ~/.ssh/id_rsa -t rsa -b 4096 -C "luke.avery@live.co.uk" ; sudo chmod 600 ~/.ssh/* ; cat ~/.ssh/id_rsa.pub
```

* https://bitbucket.org/account/user/Cogbot/ssh-keys/

```bash
git clone git@bitbucket.org:Cogbot/unix_setup.git ; cd unix_setup ; ./install.sh
```
