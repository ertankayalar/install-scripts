sudo apt-get -y install postgresql postgresql-contrib
sudo systemctl start postgresql.service
sudo systemctl enable postgresql.service
sudo systemctl status postgresql.service

# Execute the following command to access the Postgres shell and create a new password to the Postgres account.
# sudo su - postgres
# psql -c "ALTER USER postgres WITH PASSWORD 'newpassword'"
# https://hevodata.com/learn/install-postgresql-on-ubuntu/#i2
