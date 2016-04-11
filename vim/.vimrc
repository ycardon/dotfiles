
" viMproved
set nocompatible
let mapleader=","

" Vundle plugin manager (run :PluginInstall after modification)
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
	Plugin 'VundleVim/Vundle.vim'
	Plugin 'vim-airline/vim-airline'
	Plugin 'vim-airline/vim-airline-themes'
	Plugin 'flazz/vim-colorschemes'
	Plugin 'airblade/vim-gitgutter'
  Plugin 'scrooloose/nerdtree'
  Plugin 'tpope/vim-fugitive'
  Plugin 'ctrlpvim/ctrlp.vim'
  Plugin 'dag/vim-fish'
call vundle#end()
filetype plugin indent on

" terminal type and themes
set term=xterm-256color
set encoding=utf-8
set mouse=a
set guifont=Ubuntu\ Mono\ derivative\ Powerline\ 12
set background=dark
colorscheme molokai

" statusline
let g:airline_powerline_fonts = 1
set laststatus=2
set nonumber
set visualbell

" autoindent
set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab
set nowrap       "Don't wrap lines
set linebreak    "Wrap lines at convenient points

" Auto indent pasted text
nnoremap p p=`]<C-o>
nnoremap P P=`]<C-o>

" coloration syntaxique
syntax on

" Display tabs and trailing spaces visually
set list listchars=tab:\ \ ,trail:·

" http://items.sjbach.com/319/configuring-vim-right
set hidden		

" tab completion
set wildmenu
set wildmode=list:longest
