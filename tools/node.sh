#!/bin/bash

echo "Installing NVM..."
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash

echo "Refreshing bash profile..."
source ~/.bash_profile

echo "Installing Node..."
nvm install node
nvm use node

echo "Installing NPM tools..."
for tool in ~/Projects/local/tools/npm/*
do
  /bin/bash "$tool"
done
