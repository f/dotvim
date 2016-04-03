" Load Bundles
source ~/dotvim/bundles.vim
filetype plugin indent on
syntax on

" Generic
set encoding=utf-8
set fileencodings=utf-8

set autoindent
set smartindent
set expandtab
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set ignorecase
set smartcase
set hlsearch
set incsearch
set shiftround
set history=1000
set undolevels=1000
set noswapfile
set nobackup
set linespace=3
set scrolloff=3
set cursorline

set backspace=2
set laststatus=2

set relativenumber
set number

set nowrap

" Per Project Vimrc
set exrc

" Enable Mouse
if has("mouse")
  set mouse=a
endif
map <ScrollWheelUp> <C-Y>
map <ScrollWheelDown> <C-E>

" Bindings
nmap <silent> <Tab> :CtrlPBuffer<CR>
nmap <silent> <Enter> :CtrlPTag<CR>
map <C-f> :CtrlPLine<CR>
imap <S-Tab> <Esc><<i
nmap - :NERDTreeToggle<CR>

" Theming
set background=dark
colorscheme molokai
hi Normal ctermbg=None
hi Visual ctermbg=DarkBlue
hi Pmenu ctermbg=DarkGray ctermfg=White
hi PmenuSel ctermbg=Red

" Airline
let g:airline_theme="term"
let g:airline_powerline_fonts=0
let g:airline_left_sep=""
let g:airline_right_sep=""
let g:airline_detect_paste=1
let g:airline_detect_modified=1

" Enable Airline Tabs
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#fnamemod = ':t'

" Emmet
let g:user_emmet_mode='a'
let g:user_emmet_install_global = 0
autocmd FileType html,css,scss,less,eruby EmmetInstall
autocmd FileType html,css,scss,less,eruby imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")

autocmd BufNewFile,BufRead * if match(expand('%:t'),'\.jsx') != -1 | set filetype=javascript.jsx | endif

" CtrlP
let g:ctrlp_match_window='bottom,order:ttb,min:1,max:5,results:15'

" Omni Completion
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" 3 esc buffer close, wow easy.
map <silent> <esc><esc><esc> :bd<CR>
imap <silent> <esc><esc><esc> <esc>:bd<CR>

" clear search
map <silent> <space><space> :let @/=''<CR>

inoremap <expr> <C-D-Space> "\<C-X>\<C-O>"

" keep blocks selected when indenting
vnoremap < <gv
vnoremap > >gv

" trailing whitespaces
highlight ExtraWhitespace ctermbg=red guibg=red
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWritePre * :%s/\s\+$//e

" italics
highlight Comment cterm=italic
highlight htmlArg cterm=italic

let g:neocomplete#enable_at_startup=1
let g:netrw_liststyle=3

let g:syntastic_ignore_extensions='\c\v^([gx]?z|lzma|bz2|cr)$'
set completeopt-=preview
set clipboard=unnamed

" autocmd BufWritePost *.js,*.jsx,*.rb,*.coffee,*.ts,*.css,*.scss,*.html silent! !ctags -R

