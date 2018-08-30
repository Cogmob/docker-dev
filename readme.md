## install these first ##

http://projects.reficio.org/babun/download

https://nodejs.org/en/download/

https://github.com/dotnet/cli

https://autohotkey.com/download/ahk.zip

## babun

### create a new babun install

change the target address as appropriate:

    mkdir downloads ; cd downloads ; wget http://projects.reficio.org/babun/download ; unzip download
    cd ~/downloads/babun-1.2.0 ; yes | ./install.bat /target "C:\Users\[username]\babun"

### update it

run the update.bat

### initialise it

    mkdir -p /home
	export HOME=/home
	echo "db_home: /home" >> /etc/nsswitch.conf
	echo "db_shell: /bin/zsh" >> /etc/nsswitch.conf
	mkpasswd -l -p "$(cygpath -H)" > /etc/passwd
	rm /etc/passwd
	rm /etc/group
	cd ~
	mkdir -p .ssh
	yes | ssh-keygen -q -N "" -f ~/.ssh/id_rsa -t rsa -b 4096 -C "luke.avery@live.co.uk"
	chmod 600 ~/.ssh/*
	cat ~/.ssh/id_rsa.pub

* https://bitbucket.org/account/user/Cogbot/ssh-keys/

    git clone git@bitbucket.org:Cogbot/unix_setup.git ; cd unix_setup ; ./install.sh

## ubuntu

    sudo -i
    chown -R /home luke
	rm -rf /home/*
	export HOME=/home
	echo "db_home: /home" >> /etc/nsswitch.conf
	echo "db_shell: /bin/zsh" >> /etc/nsswitch.conf
	rm /etc/group
	cd ~
	mkdir -p .ssh
	yes | ssh-keygen -q -N "" -f ~/.ssh/id_rsa -t rsa -b 4096 -C "luke.avery@live.co.uk"
	sudo chmod 600 ~/.ssh/*
	cat ~/.ssh/id_rsa.pub
    exit

## other things to install on new computer ##

* chrome
* sign in on both accounts
* visual studio
* unity 3d
* blender
* gimp
* git
* tortoise git

## other commands that haven't yet been incorporated

``` sh
curl -s https://raw.githubusercontent.com/tiangolo/babun-docker/master/setup.sh | source /dev/stdin
babun-docker-update
```
