
" viMproved
set nocompatible

" Vundle
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
	Plugin 'VundleVim/Vundle.vim'
	"Plugin 'scrooloose/nerdtree'
	"Plugin 'kien/ctrlp.vim'
	Plugin 'vim-airline/vim-airline'
	Plugin 'vim-airline/vim-airline-themes'
call vundle#end()
filetype plugin indent on

" coloration syntaxique
syntax on

" statusline
let g:airline_powerline_fonts = 1
set term=xterm-256color
set laststatus=2
set encoding=utf-8
