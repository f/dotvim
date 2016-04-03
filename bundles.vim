set nocompatible
filetype off

set rtp+=~/dotvim/bundle/vundle/
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" Plugins

Plugin 'kien/ctrlp.vim'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-surround'
Plugin 'mattn/emmet-vim'
Plugin 'michaeljsmith/vim-indent-object'
Plugin 'surround.vim'
Plugin 'othree/html5.vim'
Plugin 'shougo/neocomplete.vim'
Plugin 'scrooloose/syntastic'
Plugin 'tomasr/molokai'
Plugin 'scrooloose/nerdtree'
Plugin 'mileszs/ack.vim'

" Load language based plugins
source ~/dotvim/languages/python.vim
source ~/dotvim/languages/ruby.vim
source ~/dotvim/languages/javascript.vim
source ~/dotvim/languages/html.vim
source ~/dotvim/languages/crystal.vim

call vundle#end()
