unsetopt correct

setopt no_beep
setopt no_hup
setopt no_check_jobs
setopt no_bg_nice
setopt no_menu_complete
setopt no_auto_menu
setopt no_no_match
setopt no_auto_remove_slash
setopt complete_in_word
setopt hist_ignore_all_dups
setopt rm_star_silent

autoload -U compinit && compinit -i
zmodload -i zsh/complist

bindkey -v
bindkey '^R' history-incremental-search-backward
bindkey '^P' history-incremental-search-backward
bindkey '^N' history-incremental-search-forward
bindkey '^?' backward-delete-char
# short escape delay
KEYTIMEOUT=1

alias vi=vim
alias p=python

alias ls='ls -1F'

export PS1="%~ %% "

export HISTFILE=~/.zsh_history
export HISTSIZE=50000
export SAVEHIST=$HISTSIZE

export EDITOR=vim
export VISUAL=$EDITOR
export PAGER=less

#prompt off
function precmd {
	local branch=`git rev-parse --abbrev-ref HEAD 2>/dev/null`
	if [[ -n "$branch" ]]
	then
		export PS1="%~ [$branch] %% "
	else
		export PS1="%~ %% "
	fi
}

eval "$(direnv hook zsh)"

# for meteor: https://github.com/meteor/meteor/issues/8057
#ulimit -n 65536 65536
# warning! setting this sets `ulimit -f` (file size limit) too. If uncommented, you'll want `ulimit
# -f unlimited` to compensate.

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
