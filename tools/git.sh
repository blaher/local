#!/bin/bash

curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash > ~/.bash_autocomplete
git config --global commit.gpgsign true
