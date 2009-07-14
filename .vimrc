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
set modeline
nnoremap <F2> :set nonumber!<CR>

syntax on

com Q q
com W w
com Wq wq
com WQ wq

map ,b :BufExplorer<CR>

filetype plugin indent on

autocmd FileType python set complete+=k~/.vim/pydiction-0.5/pydiction "isk+=.,(

au BufRead,BufNewFile *.vala setfiletype cs

let python_highlight_all = 1
hi ModeMsg term=bold cterm=underline

set dir=$HOME/.vim/tmp

map <buffer> <S-e> :w<CR>:!python "%"<CR>

set foldminlines=99999

colorscheme dim
highlight DiffAdd    term=reverse guibg=#222222 guifg=green
highlight DiffChange term=reverse guibg=#222222 guifg=cyan
highlight DiffText   term=reverse guibg=#222222 guifg=yellow
highlight DiffDelete term=reverse guibg=#222222 guifg=red
