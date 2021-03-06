# Files to source
filesToSource=(
    ~/.bash_profile_tokens
    ~/.gcloudrc
    /usr/local/git/contrib/completion/git-completion.bash
    /usr/local/git/contrib/completion/git-prompt.sh
)

for i in "${filesToSource[@]}"
do
   :
    if [ -f $i ]; then
        source $i
    else
        echo $i "not found"
    fi
done

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
# export PATH=/Applications/MAMP/bin/php/php7.3.1/bin:$PATH
export PATH=/Applications/MAMP/bin/php/php7.2.14/bin:$PATH

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
