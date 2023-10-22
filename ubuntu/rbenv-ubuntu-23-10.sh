sudo apt-get update
sudo apt-get -y install git-core zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev software-properties-common libffi-dev
cd
git clone https://github.com/excid3/asdf.git ~/.asdf
echo '. "$HOME/.asdf/asdf.sh"' >>~/.bashrc
echo '. "$HOME/.asdf/completions/asdf.bash"' >>~/.bashrc
echo 'legacy_version_file = yes' >>~/.asdfrc
echo 'export EDITOR="code --wait"' >>~/.bashrc
exec $SHELL

# install asdf plugin ruby
asdf plugin add ruby
asdf install ruby 3.2.2
