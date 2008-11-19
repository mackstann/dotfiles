set nocompatible 
set sts=4
set sw=4
set backspace=indent,eol,start
set expandtab
set showcmd
set showmatch
set ruler
set showmode
set notitle
set wildmode=longest:full
set wildmenu
set hidden
set vb t_vb=
set pastetoggle=<F11>
set t_Co=8

syntax on

com Q q
com W w
com Wq wq
com WQ wq

map ,b :BufExplorer<CR>

if has("autocmd")
  filetype plugin indent on
  autocmd FileType text setlocal textwidth=78
endif

let python_highlight_all = 1
hi ModeMsg term=bold cterm=underline

set backup
set backupdir=$HOME/.vim/backup
set directory=$HOME/.vim/tmp

