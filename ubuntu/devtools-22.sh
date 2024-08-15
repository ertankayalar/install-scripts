sudo apt-get update

sudo apt-get -y install git-core zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev software-properties-common libffi-dev

mise use --global ruby@3.3
mise x ruby -- gem install rails --no-document

mise use --global node@lts

# yarn automaticy installed with node
corepack enable yarn
yarn -v # || npm install -g yarn
