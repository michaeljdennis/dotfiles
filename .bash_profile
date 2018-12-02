# Source private tokens
if [ -f ~/.bash_profile_tokens ]; then
    source ~/.bash_profile_tokens
fi

# Source .gcloudrc
if [ -f ~/.gcloudrc ]; then
    source ~/.gcloudrc
fi

# Git - source completion and prompt
if [ -f /usr/local/git/contrib/completion/git-completion.bash ]; then
    source /usr/local/git/contrib/completion/git-completion.bash
fi

if [ -f /usr/local/git/contrib/completion/git-prompt.sh ]; then
    source /usr/local/git/contrib/completion/git-prompt.sh
fi

# PS1
export PS1='\[\033[1;34m\]\u@\h:\[\033[32m\]\w\[\033[33m\]$(__git_ps1 " (%s)")\[\033[00m\] $ '

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
export PATH=/Applications/MAMP/bin/php/php7.2.10/bin:$PATH

# Composer global bins
export PATH=~/.composer/vendor/bin:$PATH

# Colorized output for ls command
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

# Aliases
alias h="cd ~"
alias g="cd $GOPATH/src"
alias l="ls -lhFG"
alias ll="ls -alhFG"
alias ..="cd .."
