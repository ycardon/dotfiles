
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
	Plugin 'tpope/vim-fugitive'
	Plugin 'scrooloose/nerdtree'
	Plugin 'ctrlpvim/ctrlp.vim'
	Plugin 'tommcdo/vim-exchange'
	Plugin 'dag/vim-fish'
	Plugin 'pangloss/vim-javascript'
	Plugin 'townk/vim-autoclose'
call vundle#end()
filetype plugin indent on

" terminal type and themes
set term=xterm-256color
set encoding=utf-8
set mouse=a
set background=dark
colorscheme twilight

if has("osx")
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
set shiftwidth=2
set softtabstop=2
set tabstop=2
set nowrap       "Don't wrap lines
set linebreak    "Wrap lines at convenient points

" Auto indent pasted text
"nnoremap p p=`]<C-o>
"nnoremap P P=`]<C-o>

" improved search
set incsearch
set hlsearch

" coloration syntaxique
syntax on

" Display tabs and trailing spaces visually
set list listchars=tab:·\ ,trail:·

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

