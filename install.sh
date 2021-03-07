#!/bin/bash
default_name="Benjamin J. Young"

# Setup xcode
echo "Setting up xcode..."
xcode-select --install

# Configure Git
echo "Configuring git..."
read -p "Enter your name [$default_name]: " name
name=${name:-"$default_name"}
git config --global user.name "$name"
read -p "Enter your email: " name
git config --global user.email "$email"

# Setup Projects Folder
echo "Setting up projects..."
mkdir ~/Projects

# Download Repo
git clone https://github.com/blaher/local.git ~/Projects/local

# Install needed tools
echo "Installing tools..."
for tool in ~/Projects/local/tools/*
do
  /bin/bash "$tool"
done

# Link bash profile
echo "Finishing up..."
ln -s ~/Projects/local/.bash_profile ~/.bash_profile
