
" viMproved
set nocompatible
set shell=/bin/bash
let mapleader=","

" Vundle plugin manager (run :PluginInstall after modification)
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

	" plugin manager
	Plugin 'VundleVim/Vundle.vim'

	" visual
	Plugin 'vim-airline/vim-airline'
	Plugin 'vim-airline/vim-airline-themes'
	Plugin 'flazz/vim-colorschemes'

	" git
	Plugin 'airblade/vim-gitgutter'
	Plugin 'tpope/vim-fugitive'

	" tools
	Plugin 'scrooloose/nerdtree'
	Plugin 'ctrlpvim/ctrlp.vim'
	Plugin 'junegunn/fzf'

	" syntax
	Plugin 'dag/vim-fish'
	Plugin 'pangloss/vim-javascript'

	" editing
	Plugin 'tpope/vim-repeat'       " repeat works with plugins
	Plugin 'tpope/vim-unimpaired'   " exchange lines & other stuff
	Plugin 'tommcdo/vim-exchange'   " swap text regions
	Plugin 'townk/vim-autoclose'    " matching parenthesis & co

call vundle#end()
filetype plugin indent on

" terminal type and themes
set term=xterm-256color
set encoding=utf-8
set mouse=a
set background=dark
set guioptions=aegm
colorscheme twilight

if has("osx")
	set guifont=Ubuntu\ Mono\ derivative\ Powerline\ Nerd\ Font\ Complete:h16
endif

" statusline
let g:airline_powerline_fonts = 1
let g:airline_theme = 'bubblegum'
set laststatus=2
set nonumber
set visualbell

" autoindent
set autoindent
set smartindent
set smarttab
set tabstop=4			" tabs print as 4 spaces
set shiftwidth=4
set softtabstop=4
set nowrap				" don't wrap lines
set linebreak			" wrap lines at convenient points

" Auto indent pasted text
nnoremap p p=`]<C-o>
nnoremap P P=`]<C-o>

" use system clipboard
set clipboard=unnamedplus

" improved search
set incsearch
set hlsearch

" coloration syntaxique
syntax on

" Display tabs and trailing spaces visually
set list
set listchars=tab:·\ ,trail:·

" http://items.sjbach.com/319/configuring-vim-right
set hidden

" tab completion
set wildmenu
set wildmode=list:longest

" nerd tree : autoload if no args passed, close when last open buffer
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
map <C-n> :NERDTreeToggle<CR>

" vim-unimpaired remapped to < and >
nmap < [
nmap > ]
omap < [
omap > ]
xmap < [
xmap > ]
