#!/bin/bash

echo "Installing GnuPG..."
brew install gnupg
gpg --full-generate-key
gpg --list-secret-keys --keyid-format LONG
read -p "Enter your GPG key from above: " gpgkey
gpg --armor --export gpgkey
git config --global user.signingkey gpgkey
git config --global pull.rebase false
