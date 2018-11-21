set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" syntax
Plugin 'pangloss/vim-javascript'
Plugin 'elzr/vim-json'
Plugin 'othree/html5.vim'
Plugin 'vim-perl/vim-perl'
Plugin 'plasticboy/vim-markdown'
Plugin 'craigemery/vim-autotag'

" Status line
Plugin 'vim-airline/vim-airline'

" auto bracket completion
Plugin 'raimondi/delimitmate'

" vim easy-motion
Plugin 'easymotion/vim-easymotion'

" tag bar
Plugin 'majutsushi/tagbar'

" nerd tree
Plugin 'scrooloose/nerdtree'

" theme
Plugin 'dracula/vim'

call vundle#end()
filetype plugin indent on

" airline on
let g:airline#extensions#tabline#enabled = 1

" aesthetics
syntax on
color dracula

set background=dark
set wrap

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
":hi CursorLine ctermfg=Black ctermbg=Gray cterm=bold
":hi CursorColumn ctermfg=Black ctermbg=Gray cterm=bold

set scrolloff=15 " Keep 3 lines below and above the cursor"

" make sure backspaces work
set backspace=indent,eol,start

" start nerd tree if no files specified
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" highlight search
:set hlsearch

" :help last-position-jump
" autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif

" remove ending spaces
autocmd BufWritePre * %s/\s\+$//e

" keeping histories in another directory
set undodir=~/.vim/undo//
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//

set tags=./tags;

" functions
function! ToggleLine()
    set number!
endfunction


function! FindTag()
    let co = matchstr(expand('<cword>'), '[a-zA-Z0-9._^\\]*$')
    if matchstr(expand('<cWORD>'), '[$@%]'.co)  == ''
        let tag_string = split(execute("tselect ".co), "\n")[1]
        let tag_file_name = matchstr(tag_string, '[a-zA-Z0-9._^\\]*$')
        if tag_file_name == expand('%:t')
            :exec("tag ".co)
        else
            :exec("tab tag ".co)
        endif
    else
        normal! gD
    endif
endfunction

" default function calls
call ToggleLine()

" key bindings
map <Leader> <Plug>(easymotion-prefix)
map <F5> :NERDTreeToggle<CR>
noremap <C-]> :call FindTag()<CR>
noremap <F3> :call ToggleLine()<CR>



