syntax enable
set number

set showtabline=0

let g:solarized_termcolors=256
set background=dark
set nowrap
set tabstop=4
set showmatch   "for {}()[] to match"

set laststatus=2  "for commmand line show 2 row"

set ignorecase

set hlsearch
set cursorcolumn

set expandtab

let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1
:nmap <silent> <Leader>i <Plug>IndentGuidesToggle

filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'Lokaltog/vim-powerline'
Plugin 'Valloric/YouCompleteMe'
Plugin 'tell-k/vim-autopep8'
Plugin 'scrooloose/nerdtree'
Plugin 'Yggdroot/indentLine'
call vundle#end()
filetype plugin indent on

autocmd BufWritePost $MYVIMRC source $MYVIMRC
