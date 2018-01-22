#!/bin/bash

if [ ! -f ~/.bash_profile ]; then
    echo "Linking ~/.bash_profile"
    ln -sf ~/dotfiles/.bash_profile ~/.bash_profile
else
    echo "~/.bash_profile already exists"
fi

if [ ! -f ~/.inputrc ]; then
    echo "Linking ~/.inputrc"
    ln -sf ~/dotfiles/.inputrc ~/.inputrc
else
    echo "~/.inputrc already exists"
fi

if [ ! -f ~/.config/git/config ]; then
    echo "Linking ~/.config/git/config"
    ln -sf ~/dotfiles/.config/git/config ~/.config/git/config
else
    echo "~/.config/git/config already exists"
fi

if [ ! -f ~/.config/git/ignore ]; then
    echo "Linking ~/.config/git/ignore"
    ln -sf ~/dotfiles/.config/git/ignore ~/.config/git/ignore
else
    echo "~/.config/git/ignore already exists"
fi
