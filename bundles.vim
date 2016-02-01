set nocompatible
filetype off

set rtp+=./bundle/vundle/
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
Plugin 'AutoComplPop'
Plugin 'scrooloose/syntastic'
Plugin 'altercation/vim-colors-solarized'

" Load language based plugins
source ./languages/python.vim
source ./languages/ruby.vim
source ./languages/javascript.vim
source ./languages/html.vim

call vundle#end()
