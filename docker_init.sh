cd /home/docker/docker-dev
./ubuntu_install_super.sh
apt-get update
apt-get -y install sudo
useradd -m docker && echo "docker:docker" | chpasswd && adduser docker sudo
