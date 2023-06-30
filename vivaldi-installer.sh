
# Install Required Packages
sudo apt install software-properties-common apt-transport-https curl ca-certificates -y

# Import Vivaldi Repository
curl -fsSL https://repo.vivaldi.com/archive/linux_signing_key.pub | gpg --dearmor | sudo tee /usr/share/keyrings/vivaldi.gpg > /dev/null

#  add the Vivaldi repository
echo deb [arch=amd64,armhf signed-by=/usr/share/keyrings/vivaldi.gpg] https://repo.vivaldi.com/archive/deb/ stable main | sudo tee /etc/apt/sources.list.d/vivaldi.list

# Update Package List
sudo apt update

# Install Vivaldi Browser Stable
sudo apt install vivaldi-stable

# verify
vivaldi --version


