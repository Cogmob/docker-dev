# docker

    sudo docker prune
    sudo docker build -t unix_setup .
    sudo docker run -d -it -p 80:8080 --name=unix_setup unix_setup zsh
    sudo docker attach unix_setup

# babun

## install these first ##

http://projects.reficio.org/babun/download

https://nodejs.org/en/download/

https://github.com/dotnet/cli

https://autohotkey.com/download/ahk.zip

## initialise it

    mkdir -p /home
	export HOME=/home
	echo "db_home: /home" >> /etc/nsswitch.conf
	echo "db_shell: /bin/zsh" >> /etc/nsswitch.conf
	mkpasswd -l -p "$(cygpath -H)" > /etc/passwd

update.bat

    mkdir -p .ssh
	yes | ssh-keygen -q -N "" -f ~/.ssh/id_rsa -t rsa -b 4096 -C "luke.avery@live.co.uk"
	chmod 601 ~/.ssh/*
    chmod 700 ~/.ssh/id_rsa
	cat ~/.ssh/id_rsa.pub

https://bitbucket.org/account/user/Cogbot/ssh-keys/

    git clone git@github.com:Cogmob/docker-dev.git ; cd unix_setup ; ./babun-install.sh

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
compaudit | xargs chmod g-w
pact install the_silver_searcher
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

    git clone git@github.com:Cogmob/docker-dev.git
    cd unix_setup
    chmod +x ubuntu_install.sh
    sudo ./ubuntu_install_super.sh
    ./ubuntu_install.sh

# font for powershell

.\InstallConsoleFont.ps1 -FontName "LM Mono Slanted 10" -FontFile "C:\Users\lga\.babun\cygwin\home\unix_setup\storage\Latin-Modern-Mono\lmmonoslant10-regular.otf"
