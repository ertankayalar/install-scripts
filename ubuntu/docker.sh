sudo apt install docker.io docker-compose -y
sudo systemctl enable --now docker
sudo systemctl status docker
sudo usermod -aG docker $USER
docker --version
# docker run hello-world
