export EDITOR=nvim
export VISUAL=nvim

# Home bin
export PATH=$HOME/.local/bin:$PATH

# Go
export PATH=/usr/local/go/bin:$HOME/go/bin:$PATH

# Rust
. "$HOME/.cargo/env"

# Aliases
alias ..="cd .."
alias h="cd $HOME"
alias l="ls -lhF --time-style='+%Y-%m-%d %H:%M:%S.%N'"
alias ll="ls -AlhF --time-style='+%Y-%m-%d %H:%M:%S.%N'"
alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'
alias cat="batcat"
alias myip="curl -s ipv4.icanhazip.com | tee >(pbcopy)"
alias di="docker images"
alias dpsa="docker ps -a"
alias dspf="docker system prune -f"
alias ffmpeg="ffmpeg -v level -hide_banner"
alias ffprobe='ffprobe -v level -hide_banner'
