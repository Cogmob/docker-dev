from ubuntu:latest
copy . /home/docker/docker-dev
run /home/docker/docker-dev/docker_init.sh
user docker
run ~/docker-dev/ubuntu_install.sh
expose 8080
