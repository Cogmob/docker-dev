cd /home/docker/unix_setup
./ubuntu_install_super.sh
apt-get update
apt-get -y install sudo
useradd -m docker && echo "docker:docker" | chpasswd && adduser docker sudo
