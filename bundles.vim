set nocompatible
filetype off

source ~/dotvim/bundle/vim-plug/plug.vim
call plug#begin('~/.vim/plugged')

" Plugins

Plug 'kien/ctrlp.vim'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-surround'
Plug 'mattn/emmet-vim'
Plug 'michaeljsmith/vim-indent-object'
Plug 'surround.vim'
Plug 'othree/html5.vim'
Plug 'shougo/neocomplete.vim'
Plug 'scrooloose/syntastic'
Plug 'tomasr/molokai'
Plug 'scrooloose/nerdtree'
Plug 'mileszs/ack.vim'

" Load language based plugins
source ~/dotvim/languages/python.vim
source ~/dotvim/languages/ruby.vim
source ~/dotvim/languages/javascript.vim
source ~/dotvim/languages/html.vim
source ~/dotvim/languages/crystal.vim

call plug#end()
