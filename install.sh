#!/bin/bash
default_github="blaher"
default_name="Benjamin J. Young"
default_name=${default_name:-"$(git config --global user.name)"}
default_email=""
default_email=${default_email:-"$(git config --global user.email)"}

# Setup xcode
echo "Setting up xcode..."
xcode-select --install

# Configure Git
echo "Configuring git..."
read -p "Enter your github username [$default_github]: " github
github=${name:-"$default_github"}
read -p "Enter your name [$default_name]: " name
name=${name:-"$default_name"}
git config --global user.name "$name"
read -p "Enter your email [$default_email]: " email
git config --global user.email "$email"

# Setting up SSH key
ssh-keygen -t ed25519 -C "$email"
eval "$(ssh-agent -s)"
touch ~/.ssh/config
printf "\nHost *\n  AddKeysToAgent yes\n  IdentityFile ~/.ssh/id_ed25519\n" >> ~/.ssh/config
ssh-add -K ~/.ssh/id_ed25519

# Setup Projects Folder
echo "Setting up projects..."
mkdir ~/Documents/Code
ln -s ~/Documents/Code ~/Projects

# Download Repo
echo "Downloading repo from ${github}/local..."
git clone https://github.com/${github}/local.git ~/Projects/local

# Link bash profile
echo "Linking bash profile and aliases..."
mv ~/.bash_profile ~/.bash_profile.bac
mv ~/.bash_aliases ~/.bash_aliases.bac
ln -s ~/Projects/local/.bash_profile ~/.bash_profile
ln -s ~/Projects/local/.bash_aliases ~/.bash_aliases
source ~/.bash_profile
source ~/.bash_aliases

# Install needed tools
echo "Installing tools..."
for tool in ~/Projects/local/tools/*
do
  /bin/bash "$tool"
done

# Setting Projects icon
fileicon set ~/Projects ~/Projects/local/projects.png

# Finshed
echo "Please either restart all terminals or run 'source ~/.bash_profile'!"
