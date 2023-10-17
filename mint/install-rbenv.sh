

git clone https://github.com/rbenv/rbenv.git ~/.rbenv
echo 'eval "$(~/.rbenv/bin/rbenv init - bash)"' >> ~/.bashrc
exec $SHELL
# ruby install command
git clone https://github.com/rbenv/ruby-build.git "$(rbenv root)"/plugins/ruby-build

