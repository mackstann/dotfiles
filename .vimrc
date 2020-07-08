set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" use :PluginInstall to install/update these
Plugin 'gmarik/Vundle.vim'
Bundle 'jlanzarotta/bufexplorer'
Plugin 'scrooloose/syntastic'
Plugin 'kien/ctrlp.vim'
Plugin 'fatih/vim-go'
Plugin 'dgryski/vim-godef'
Plugin 'elzr/vim-json'
Plugin 'chase/vim-ansible-yaml'
Plugin 'airblade/vim-gitgutter'
Plugin 'flazz/vim-colorschemes'
Plugin 'xolox/vim-colorscheme-switcher'
Plugin 'xolox/vim-misc'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

let g:godef_split=3
"let g:go_highlight_functions = 1 " slow
let g:go_highlight_methods = 1
"let g:go_highlight_structs = 1 " slow
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
"let g:syntastic_go_checkers = ['go', 'gometalinter']
let g:syntastic_go_checkers = ['gometalinter']
let g:syntastic_go_gometalinter_args = '--vendored-linters --disable-all --enable golint --enable ineffassign --enable deadcode --enable gofmt --enable misspell'
"let g:go_metalinter_enabled = ['go', 'errcheck', 'unused', 'convert', 'golint', 'gosimple', 'vet', 'ineffassign', 'deadcode', 'vetshadow', 'staticcheck', 'gofmt', 'misspell']
"let g:go_metalinter_autosave_enabled = ['golint', 'gosimple', 'vet', 'ineffassign', 'deadcode', 'vetshadow', 'staticcheck', 'gofmt', 'misspell']
"let g:go_metalinter_autosave = 1
let g:go_fmt_options = "-s"
let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['cucumber'] } " too slow

let g:syntastic_python_python_exec = '/usr/local/bin/python3.6'

" basic settings

set backspace=indent,eol,start
set showcmd
set showmatch
set ruler
set showmode
set notitle
set wildmode=longest:full
set wildmenu
set hidden
set vb t_vb=
set t_Co=256
"set background=dark

set modeline
set ai
set smartindent
set encoding=utf-8
set dir=$HOME/.vim/tmp

" code formatting/parsing/etc.

syntax on
colorscheme 256-jungle
set lazyredraw
"colorscheme jellybeans
"colorscheme badwolf
"colorscheme base
"colorscheme blackboard
"colorscheme buddy
"colorscheme cobalt2

" fix background color
highlight Normal ctermbg=NONE
highlight nonText ctermbg=NONE

filetype plugin indent on
let python_highlight_all = 1
hi SpellBad term=underline gui=undercurl guisp=#cc33aa " for pyflakes.vim errors
hi ModeMsg term=bold cterm=underline " for pyflakes, i think
set foldminlines=99999 " avoid folding
let loaded_matchparen = 0 " matchparen can slow things down a lot sometimes

set sw=4
set sts=4
set ts=8
set expandtab
set tw=120

autocmd Filetype gitcommit setlocal textwidth=72
autocmd Filetype javascript setlocal sw=2 sts=2 expandtab

" key bindings

com! Q q
com! W w
com! Wq wq
com! WQ wq
com! Qa qa
com! Wqa wqa
com! WQa wqa
map ,b :BufExplorer<CR>
nnoremap <F2> :set nonumber!<CR>
set pastetoggle=<F12>

" show cursorline, but only in active window.
" ugh, too slow
"augroup CursorLine
"	au!
"	au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
"	au WinLeave * setlocal nocursorline
"augroup END
"hi CursorLine cterm=NONE ctermbg=234
