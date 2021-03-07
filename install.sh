#!/bin/bash

# Setup xcode
xcode-select --install

# Configure Git
git config --global user.name "Benjamin J. Young"
echo "Enter Email:"
read email
git config --global user.email "$email"

# Setup Projects Folder
mkdir ~/Projects
cd ~/Projects

# Download Repo
git clone https://github.com/blaher/local-environment.git
cd local-environment

# Install neeeded tools
for tool in ./tools/*
do
  /bin/bash "$tool"
done

# Link bash profile
ln -s ./.bash_profile ~/.bash_profile
