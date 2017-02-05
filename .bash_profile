# Git
source ~/.config/git/completion

# Go
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$PATH

# Protoc
export PATH=$HOME/opt/protoc-3.1.0/bin:$PATH

# Java
export JAVA_HOME="$(/usr/libexec/java_home -v 1.8)"

# Maven
export PATH=/opt/apache-maven-3.3.9/bin:$PATH

# MAMP PHP
export PATH=/Applications/MAMP/bin/php/php7.1.0/bin:$PATH

# Composer global bins
export PATH=~/.composer/vendor/bin:$PATH

# Aliases
alias h="cd ~"
alias g="cd $GOPATH/src"
alias l="ls -lhF"
alias ll="ls -alhF"
alias ..="cd .."
