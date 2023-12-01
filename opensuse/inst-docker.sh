# https://en.opensuse.org/Docker
# tumbleweed
sudo zypper install docker docker-compose docker-compose-switch

sudo systemctl enable docker

sudo usermod -G docker -a $USER

newgrp docker

sudo systemctl restart docker

docker version
