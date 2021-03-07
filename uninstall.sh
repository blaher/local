#!/bin/bash

echo "Removing local repo..."
rm -rf ~/Projects/local

echo "Reverting bash profile..."
rm ~/.bash_profile
mv ~/.bash_profile.bac ~/.bash_profile
