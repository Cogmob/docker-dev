# docker

    sudo docker prune
    sudo docker build -t docker-dev .
    sudo docker run -d -it -p 80:8080 --name=docker-dev docker-dev zsh
    sudo docker attach docker-dev

# windows / babun

## install these first ##

https://autohotkey.com/download/ahk.zip

https://nodejs.org/en/download/

(https://github.com/dotnet/cli)

(http://projects.reficio.org/babun/download)

## (babun only) initialise it

    mkdir -p /home
	export HOME=/home
	echo "db_home: /home" >> /etc/nsswitch.conf
	echo "db_shell: /bin/zsh" >> /etc/nsswitch.conf
	mkpasswd -l -p "$(cygpath -H)" > /etc/passwd

update.bat

## both

    mkdir -p .ssh
	yes | ssh-keygen -q -N "" -f ~/.ssh/id_rsa -t rsa -b 4096 -C "luke.avery@live.co.uk"
	chmod 601 ~/.ssh/*
    chmod 700 ~/.ssh/id_rsa
	cat ~/.ssh/id_rsa.pub

https://github.com/settings/keys

    git clone git@github.com:Cogmob/docker-dev.git ; cd docker-dev
    
(windows)    

    ./ubuntu_install.sh

(ubuntu)

    ./babun-install.sh

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

# ubuntu vm

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
    cd docker-dev
    chmod +x ubuntu_install.sh
    sudo ./ubuntu_install_super.sh
    sudo ./ubuntu_install.sh

# font for powershell

.\InstallConsoleFont.ps1 -FontName "LM Mono Slanted 10" -FontFile "C:\Users\lga\.babun\cygwin\home\docker-dev\storage\Latin-Modern-Mono\lmmonoslant10-regular.otf"
