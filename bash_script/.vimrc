set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'morhetz/gruvbox'

" syntax
Plugin 'pangloss/vim-javascript'
Plugin 'elzr/vim-json'
Plugin 'othree/html5.vim'
Plugin 'vim-perl/vim-perl'
Plugin 'plasticboy/vim-markdown'

call vundle#end()
filetype plugin indent on

" aesthetics
syntax on
colorscheme gruvbox
set background=dark
set wrap
let g:gruvbox_contrast_dark='hard'

" show white spaces as character
set list
set listchars=tab:>-,trail:-

" spacing settings
set ts=4 sw=4 et
set softtabstop=4
set autoindent

set mouse=c
" searches
set incsearch
set ignorecase
set expandtab

" ruler is the bottom right line tab thing
set ruler

" show cursor vertical and horizontally
set cursorcolumn
set cursorline
set laststatus=2
:hi CursorLine ctermfg=Black ctermbg=Green cterm=bold
:hi CursorColumn ctermfg=Black ctermbg=Green cterm=bold

" highlight search
:set hlsearch

" :help last-position-jump
autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
" remove ending spaces
autocmd BufWritePre * %s/\s\+$//e
