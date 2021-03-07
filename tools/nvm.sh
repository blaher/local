#!/bin/bash

echo "Installing NVM..."
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash

echo "Refreshing bash profile..."
source ~/.bash_profile

echo "Installing Node..."
nvm use node
