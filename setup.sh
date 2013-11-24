#!/bin/bash
#Simple setup.sh for configuring Ubuntu 13.10 EC2 instance.

# Update
sudo apt-get update

# Install nvm: node-version manager
sudo apt-get install -y git-core
sudo apt-get install -y curl
sudo apt-get install -y python-software-properties python g++ make
sudo add-apt-repository -y ppa:chris-lea/node.js
sudo apt-get update
sudo apt-get install nodejs
curl https://raw.github.com/creationix/nvm/master/install.sh | sh

# Install jshint
sudo npm install -g jshint

# Install rlwrap to provide libreadline features with node
# See: http://nodejs.org/api/repl.html#repl_repl
sudo apt-get install -y rlwrap

# Install Heroku toolbelt
# https://toolbelt.heroku.com/debian
wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh

git clone git@github.com:briansudev/setup_dotfiles.git
cd setup_dotfiles
mv .bash_profile ~/.bash_profile
mv .vimrc ~/.vimrc
sudo apt-get install -y zip
unzip vim_files.zip
mv home/cc/cs61b/fa13/class/cs61b-ba/.vim ~/.vim
 
