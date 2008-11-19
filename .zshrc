# zshrc is for interactive shells only

eval `keychain --quiet --eval ~/.ssh/id_[dr]sa`

setopt no_beep
setopt no_hup
setopt no_check_jobs
setopt no_bg_nice
setopt no_menu_complete
setopt no_auto_menu
setopt complete_in_word
setopt hist_ignore_all_dups
setopt rm_star_silent

bindkey -v
bindkey '^R' history-incremental-search-backward

autoload -Uz compinit
compinit

zstyle :compinstall filename '/home/death/.zshrc'
zstyle ':completion:*:descriptions' format '%U%B%d%b%u'
zstyle ':completion:*:warnings' format '%Bno matches for: %d%b'
#zstyle ':completion::*:(foo|bar):*' file-patterns '*'
#zstyle ':completion::*:mplayer:*' file-patterns '*'
zstyle ':completion::*:*:*' file-patterns '*'

alias p=python
alias more=less
alias vi=vim
alias ls='ls -1F'
alias vim='vim -X'
alias ack=ack-grep
alias procs='ps awfuxxww | grep ^$USER'
alias mpc='mpc --format "[%artist% - [%album% - ##%track% - ]%title%]|[%file%]"'
alias Lower="rename 'y/A-Z/a-z/'"
alias Bitrate="mp3info -p '%r\t%F\n' -r a"
alias Playtime="mp3info -p '%m:%s\t%F\n' -r a"

export PS1="%~ %% "

export HISTFILE=~/.zsh_history
export HISTSIZE=5000
export SAVEHIST=$HISTSIZE

if [ x$TERM = xkterm -o x$TERM = xrxvt ]
then
    export TERM=xterm
fi

if [ -x `which vim` ]
then
    export EDITOR=vim
else
    export EDITOR=vi
fi

export VISUAL=$EDITOR
export PAGER=less
export PYTHONSTARTUP="$HOME/.pythonstartup.py"

