"--------------------------------------------
" Vundle part begins
"--------------------------------------------

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'git://github.com/Valloric/YouCompleteMe.git'
let g:ycm_global_ycm_extra_conf = "~/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py"
map <Leader>d :YcmCompleter GoToDefinition<CR>

Plugin 'The-NERD-Commenter'

call vundle#end()

filetype plugin indent on

"--------------------------------------------
" Vundle part ends
" -------------------------------------------

if has("syntax")
  syntax on
endif

" Remembering last position
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

set nobackup

set incsearch
set nohlsearch

set autowrite

set autoindent
set smartindent
set shiftwidth=4

set softtabstop=4
set tabstop=4
set expandtab

set linebreak

set encoding=utf8
set termencoding=utf8

set showcmd
set showmode

set mouse=a

set nu

set backspace=indent,eol,start

set clipboard=unnamedplus

imap <F2> <Esc>:w<CR>
map <F2> <Esc>:w<CR>
imap <F1> <Esc>:w<CR>
map <F1> <Esc>:w<CR>

map , <Leader>

au FileType cpp,h inoremap {<CR> {<CR>}<ESC>k$a<CR>
