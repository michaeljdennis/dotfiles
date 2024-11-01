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

# Video
timestamps() {
    GREEN='\033[0;32m'
    NC='\033[0m'
    echo -e ${GREEN}first video packet:${NC}
    ffprobe -v fatal -show_entries packet=codec_type,pts,dts -of default=noprint_wrappers=1:nokey=0 -select_streams v $1 | head -3
    echo -e ${GREEN}last video packet:${NC}
    ffprobe -v fatal -show_entries packet=codec_type,pts,dts -of default=noprint_wrappers=1:nokey=0 -select_streams v $1 | tail -3
    echo -e ${GREEN}first audio packet:${NC}
    ffprobe -v fatal -show_entries packet=codec_type,pts,dts -of default=noprint_wrappers=1:nokey=0 -select_streams a $1 | head -3
    echo -e ${GREEN}last audio packet:${NC}
    ffprobe -v fatal -show_entries packet=codec_type,pts,dts -of default=noprint_wrappers=1:nokey=0 -select_streams a $1 | tail -3
}

start_pts_and_duration() {
    GREEN='\033[0;32m'
    NC='\033[0m'
    echo -e ${GREEN}video:${NC}
    ffprobe -v fatal -show_entries stream=codec_type,start_pts,duration_ts -of default=noprint_wrappers=1:nokey=0 -select_streams v $1 | head -3
    echo -e ${GREEN}audio:${NC}
    ffprobe -v fatal -show_entries stream=codec_type,start_pts,duration_ts -of default=noprint_wrappers=1:nokey=0 -select_streams a $1 | head -3
}

iframe_interval() {
    ffprobe -v fatal -show_entries packet=pts_time,flags -of csv=print_section=0 -select_streams v $1 | awk -F',' '/K/ {print $1}'
}

frame_types() {
    ffprobe -v fatal -show_entries frame=coded_picture_number,media_type,pict_type,key_frame -of default=noprint_wrappers=1:nokey=0 -select_streams v $1 | more
}

cfnlint() {
    if [[ -z "$@" ]]
    then
        echo error: specify one or more cloudformation files
        return 1
    fi

    files=""
    for arg in "$@"
    do
        files="${files}/data/${arg} "
    done

    docker run --rm -v `pwd`:/data cfn-lint:latest $files
}
