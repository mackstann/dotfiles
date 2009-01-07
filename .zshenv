# zshenv is always loaded

umask 022
ulimit -c unlimited

export PATH=\
$HOME/dev/bin:\
$HOME/sw/bin:\
/usr/local/bin:\
/usr/local/sbin:\
/bin:\
/sbin:\
/usr/bin:\
/usr/sbin:\
/usr/X11R6/bin:\
/usr/games

export CVS_RSH=ssh
export EMAIL="Nick Welch <mack@incise.org>"
export MAILDIR=$HOME/Maildir
export MANPATH=$HOME/sw/share/man:
export MPRIS_REMOTE_PLAYER=corn
export PYTHONPATH="$HOME/dev/whimsy:$PYTHONPATH"

