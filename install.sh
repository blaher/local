#!/bin/bash

for tool in /tools/*
do
  /bin/bash "$tool"
done

ln -s ~/.bash_profile ./.bash_profile
