# Source private tokens
if [ -f ~/.bash_profile_tokens ]; then
    source ~/.bash_profile_tokens
fi

# Source .gcloudrc
if [ -f ~/.gcloudrc ]; then
    source ~/.gcloudrc
fi

# PS1
export PS1='\[\033[1;34m\]\u@\h:\[\033[32m\]\w\[\033[33m\]$(__git_ps1 " (%s)")\[\033[00m\] $ '

# Git
source ~/.config/git/git-completion.bash
source ~/.config/git/git-prompt.sh

# Go
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$PATH

# Protoc
export PATH=$HOME/opt/protoc-3.1.0/bin:$PATH

# Java
export JAVA_HOME="$(/usr/libexec/java_home)"

# Maven
export M2_HOME=/opt/apache-maven-3.3.9/
export M2=$M2_HOME/bin
export PATH=$M2:$PATH

# MAMP PHP
export PATH=/Applications/MAMP/bin/php/php7.1.6/bin:$PATH

# Composer global bins
export PATH=~/.composer/vendor/bin:$PATH

# Aliases
alias h="cd ~"
alias g="cd $GOPATH/src"
alias l="ls -lhF"
alias ll="ls -alhF"
alias ..="cd .."
