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

" Neovim
" let $NVIM_TUI_ENABLE_TRUE_COLOR=1
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1

" Per Project Vimrc
set exrc

let mapleader=","

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
nmap \\ ``gg=<S-G>``

" Theming
set background=dark
colorscheme gruvbox

hi Normal ctermbg=None
hi Visual ctermbg=DarkBlue
hi Pmenu ctermbg=DarkGray ctermfg=White
hi PmenuSel ctermbg=Red
hi VertSplit ctermbg=None ctermfg=Black

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

let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_ignore_case = 1
let g:deoplete#enable_fuzzy_completion = 1
let g:netrw_liststyle=3

let g:syntastic_ignore_extensions='\c\v^([gx]?z|lzma|bz2)$'
set completeopt-=preview
set clipboard=unnamed

" autocmd BufWritePost *.js,*.jsx,*.rb,*.coffee,*.ts,*.css,*.scss,*.html silent! !ctags -R

function! s:incsearch_config(...) abort
  return incsearch#util#deepextend(deepcopy({
        \   'modules': [incsearch#config#easymotion#module({'overwin': 1})],
        \   'keymap': {
        \     "\<CR>": '<Over>(easymotion)'
        \   },
        \   'is_expr': 0
        \ }), get(a:, 1, {}))
endfunction

noremap <silent><expr> /  incsearch#go(<SID>incsearch_config())
noremap <silent><expr> ?  incsearch#go(<SID>incsearch_config({'command': '?'}))
noremap <silent><expr> g/ incsearch#go(<SID>incsearch_config({'is_stay': 1}))

function! s:config_easyfuzzymotion(...) abort
  return extend(copy({
        \   'converters': [incsearch#config#fuzzyword#converter()],
        \   'modules': [incsearch#config#easymotion#module({'overwin': 1})],
        \   'keymap': {"\<CR>": '<Over>(easymotion)'},
        \   'is_expr': 0,
        \   'is_stay': 1
        \ }), get(a:, 1, {}))
endfunction

noremap <silent><expr> <Space>/ incsearch#go(<SID>config_easyfuzzymotion())
