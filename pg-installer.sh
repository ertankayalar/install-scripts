#!/usr/bin/env bash

# Install PostgreSQL
sudo apt update
sudo apt install -y apt-transport-https lsb-release ca-certificates curl dirmngr gnup

sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -


sudo apt update
sudo apt install -y postgresql

# enable systemctl
sudo systemctl start postgresql
sudo systemctl enable postgresql


#
# Setup the repository
#

# Install the public key for the repository (if not done previously):
curl -fsS https://www.pgadmin.org/static/packages_pgadmin_org.pub | sudo gpg --dearmor -o /usr/share/keyrings/packages-pgadmin-org.gpg

# Create the repository configuration file:
sudo sh -c 'echo "deb [signed-by=/usr/share/keyrings/packages-pgadmin-org.gpg] https://ftp.postgresql.org/pub/pgadmin/pgadmin4/apt/$(lsb_release -cs) pgadmin4 main" > /etc/apt/sources.list.d/pgadmin4.list && apt update'

#
# Install pgAdmin
#

# Install for both desktop and web modes:
sudo apt install -y pgadmin4

# Install for desktop mode only:
#sudo apt install pgadmin4-desktop

# Install for web mode only: 
#sudo apt install pgadmin4-web 

# Configure the webserver, if you installed pgadmin4-web:
#sudo /usr/pgadmin4/bin/setup-web.sh
