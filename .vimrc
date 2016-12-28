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
map <Leader>f :YcmCompleter FixIt<CR>
map <Leader>ln :lnext<CR>
map <Leader>lp :lprev<CR>
map <Leader>lo :lopen<CR>
map <Leader>lc :lclose<CR>

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

map , <Leader>
imap jj <Esc>
imap js <Esc>:w<CR>
map <Leader>s :w<CR>


au FileType cpp,h,java inoremap {<CR> {<CR>}<ESC>k$a<CR>

" Eclim autocomplete
let g:EclimCompletionMethod = 'omnifunc'
