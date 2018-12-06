set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
Plugin 'wincent/command-t'
Plugin 'shawncplus/phpcomplete.vim'
Plugin 'Shougo/neocomplete'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tomlion/vim-solidity'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Omni complete
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#max_list = 25
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType php setlocal omnifunc=phpcomplete#CompletePHP
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Indentation settings
set expandtab
set tabstop=4
set shiftwidth=4

autocmd Filetype html setlocal ts=2 sw=2 expandtab
" jQuery standard is 4 space tabs
" autocmd Filetype javascript setlocal ts=2 sw=2 expandtab

" Colors
syntax enable
set background=dark
colorscheme solarized

" Mouse support
set mouse=a

" Line numbers
set number
set nowrap
