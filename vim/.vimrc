
" viMproved
set nocompatible

" terminal type
set term=xterm-256color
set encoding=utf-8

" Vundle
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
	Plugin 'VundleVim/Vundle.vim'
	Plugin 'vim-airline/vim-airline'
	Plugin 'vim-airline/vim-airline-themes'
	Plugin 'flazz/vim-colorschemes'
call vundle#end()
filetype plugin indent on

" coloration syntaxique
syntax on

" statusline
let g:airline_powerline_fonts = 1
set laststatus=2

" themes
set guifont=Ubuntu\ Mono\ derivative\ Powerline\ 13
set background=dark
colorscheme molokai

