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

if [ ! -f ~/.config/git/git-completion.bash ]; then
    echo "Copying ~/.config/git/git-completion.bash"
    cp /usr/local/git/contrib/completion/git-completion.bash ~/.config/git/git-completion.bash
else
    echo "~/.config/git/git-completion.bash already exists"
fi

if [ ! -f ~/.config/git/git-prompt.sh ]; then
    echo "Copying ~/.config/git/git-prompt.sh"
    cp /usr/local/git/contrib/completion/git-prompt.sh ~/.config/git/git-prompt.sh
else
    echo "~/.config/git/git-prompt.sh already exists"
fi
