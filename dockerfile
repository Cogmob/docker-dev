from ubuntu:latest
copy . /home/docker/unix_setup
run /home/docker/unix_setup/docker_init.sh
user docker
run ~/unix_setup/ubuntu_install.sh
expose 8080
