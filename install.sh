#!/bin/bash

xcode-select --install

mkdir ~/Projects
cd ~/Projects
git clone https://github.com/blaher/local-environment.git
cd local-environment

for tool in /tools/*
do
  /bin/bash "$tool"
done

ln -s ~/.bash_profile ./.bash_profile
