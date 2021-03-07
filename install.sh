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

# Download Repo
git clone https://github.com/blaher/local-environment.git

# Install neeeded tools
for tool in ~/Projects/local-environment/tools/*
do
  /bin/bash "$tool"
done

# Link bash profile
ln -s ~/Projects/local-environment/.bash_profile ~/.bash_profile
