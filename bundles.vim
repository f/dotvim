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
Plug 'scrooloose/syntastic'
" Plug 'w0ng/vim-hybrid'
" Plug 'tomasr/molokai'
" Plug 'frankier/neovim-colors-solarized-truecolor-only'
Plug 'morhetz/gruvbox'
Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'}
Plug 'mileszs/ack.vim'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/vim-github-dashboard'
Plug 'easymotion/vim-easymotion'
Plug 'haya14busa/incsearch.vim'
Plug 'haya14busa/incsearch-easymotion.vim'
Plug 'haya14busa/incsearch-fuzzy.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'shougo/deoplete.nvim'
Plug 'takac/vim-spotifysearch'
Plug 'tomtom/tcomment_vim'
" Plug 'shougo/neocomplete.vim'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'vim-scripts/TwitVim'
Plug 'miyakogi/seiya.vim'

" Load language based plugins
source ~/dotvim/languages/python.vim
source ~/dotvim/languages/ruby.vim
source ~/dotvim/languages/javascript.vim
source ~/dotvim/languages/html.vim
source ~/dotvim/languages/crystal.vim

call plug#end()
