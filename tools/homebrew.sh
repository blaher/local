#!/bin/bash

echo "Installing Homebrew..."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo "Installing Homebrew tools..."
for tool in ~/Projects/local/tools/homebrew/*
do
  /bin/bash "$tool"
done
