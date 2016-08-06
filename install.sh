#!/bin/bash

if [ ! -f ~/.bash_profile ]; then
    echo "Linking ~/.bash_profile"
    ln -s ~/dotfiles/bash_profile ~/.bash_profile
else
    echo "~/.bash_profile already exists"
fi

if [ ! -f ~/.config/git/config ]; then
    echo "Linking ~/.config/git/config"
    ln -s ~/dotfiles/config/git/config ~/.config/git/config
else
    echo "~/.config/git/config already exists"
fi

if [ ! -f ~/.config/git/ignore ]; then
    echo "Linking ~/.config/git/ignore"
    ln -s ~/dotfiles/config/git/ignore ~/.config/git/ignore
else
    echo "~/.config/git/ignore already exists"
fi

if [ ! -f ~/.config/git/completion ]; then
    echo "Copying ~/.config/git/completion"
    cp /usr/local/git/contrib/completion/git-completion.bash ~/.config/git/completion
else
    echo "~/.config/git/completion already exists"
fi

if [ ! -f ~/.eslintrc ]; then
    echo "Linking ~/.eslintrc"
    ln -s ~/dotfiles/eslintrc ~/.eslintrc
else
    echo "~/.eslintrc already exists"
fi
