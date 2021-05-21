if [ -f ~/.bash_aliases ]; then
    source ~/.bash_aliases
fi
if [ -f ~/.bash_autocomplete ]; then
    source ~/.bash_autocomplete
fi

export GPG_TTY=$(tty)
