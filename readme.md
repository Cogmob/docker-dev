# babun

## install these first ##

http://projects.reficio.org/babun/download

https://nodejs.org/en/download/

https://github.com/dotnet/cli

https://autohotkey.com/download/ahk.zip

## create a new babun install

change the target address as appropriate:

    mkdir downloads ; cd downloads ; wget http://projects.reficio.org/babun/download ; unzip download
    cd ~/downloads/babun-1.2.0 ; yes | ./install.bat /target "C:\Users\[username]\babun"

## update it

run the update.bat

## initialise it

    mkdir -p /home
	export HOME=/home
	echo "db_home: /home" >> /etc/nsswitch.conf
	echo "db_shell: /bin/zsh" >> /etc/nsswitch.conf
	mkpasswd -l -p "$(cygpath -H)" > /etc/passwd
	cd ~
	mkdir -p .ssh
	yes | ssh-keygen -q -N "" -f ~/.ssh/id_rsa -t rsa -b 4096 -C "luke.avery@live.co.uk"
	chmod 601 ~/.ssh/*
	cat ~/.ssh/id_rsa.pub

https://bitbucket.org/account/user/Cogbot/ssh-keys/

    git clone git@bitbucket.org:Cogbot/unix_setup.git ; cd unix_setup ; ./install.sh

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

# ubuntu

    sudo apt-get install openssh-server -y
    mkdir .ssh
    chmod 600 .ssh
    yes | ssh-keygen -q -N "" -f .ssh/id_rsa -t rsa -b 4096 -C "luke.avery@live.co.uk"
    cat .ssh/id_rsa.pub
    hostname -I

on other machine

    ssh-keygen -R [ip address]

after successful ssh

    git clone git@bitbucket.org:Cogbot/unix_setup.git
    cd unix_setup
    chmod +x ubuntu_install.sh
    sudo ./ubuntu_install_super.sh
    ./ubuntu_install.sh
