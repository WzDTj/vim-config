filetype plugin indent on
syntax enable

if has('gui_running')
    colorscheme atom-dark
else
    colorscheme atom-dark-256
endif

" General
set nocompatible
set t_Co=256
set lines=100
set columns=150
set guifont=monaco:h14
set guioptions=
let mapleader = "`"
" File
set fileformat=unix
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8,ucs-bom,GB2312,big5
set autoread

" Editor
set splitright
set hidden
set number
set signcolumn=yes
set laststatus=2
set textwidth=100
" set colorcolumn=121
set showmatch
set cursorline
set splitright
set backspace=indent,eol,start
set completeopt=menuone,longest,preview
 
" Search
set hlsearch
set smartcase
set ignorecase
set incsearch
 
" Indent
set autoindent
set expandtab
set shiftwidth=4
set softtabstop=4
 
" Other
set confirm
set ruler
set undolevels=1000
 
" File Explorer (scrooloose/nerdtree)
nnoremap <silent><leader>e :NERDTreeToggle<cr>

" General Operation
nnoremap <silent><leader>w :w<cr>
nnoremap <silent><leader>q :q<cr>
nnoremap <leader>vs :vs<space>

" Buffer Operation
nnoremap <silent><leader>db :bd<cr>
nnoremap <leader>ls :ls<cr>:b<space>

" File Operation
nnoremap <leader>o :edit<space>
nnoremap <leader>sf :Files<cr>

" Copy & Paste
nnoremap <leader>p "+p
vnoremap <leader>y "+y

" Status Line (vim-airline/vim-airline)
let g:airline_theme = 'base16'

let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#ale#error_symbol = 'E:'
let g:airline#extensions#ale#warning_symbol = 'W:'

let g:airline#extensions#fugitiveline#enabled = 1
let g:airline#extensions#tagbar#enabled = 1
let g:airline#extensions#ycm#enabled = 1
let g:airline#extensions#ycm#error_symbol = 'E:'
let g:airline#extensions#ycm#warning_symbol = 'W:'

" Search Text (junegunn/fzf + ripgrep)
command! -bang -nargs=*
  \ Find call fzf#vim#grep('rg'.
  \                        ' --column'.
  \                        ' --line-number'.
  \                        ' --no-heading'.
  \                        ' --fixed-strings'.
  \                        ' --ignore-case'.
  \                        ' --no-ignore'.
  \                        ' --hidden'.
  \                        ' --follow'.
  \                        ' --glob "!{.git,node_modules,vendor}/*"'.
  \                        ' --color "always" '.
  \                        shellescape(<q-args>),
  \                        1,
  \                        <bang>0)
nnoremap <leader>st :Find<space>

" Additional shortcut
nnoremap <leader>f1 :Files<space>
nnoremap <leader>f2 :Buffer<space>
nnoremap <leader>f3 :Find<space>

" Mapping selecting mappings
nmap <leader><tab> <plug>(fzf-maps-n)
xmap <leader><tab> <plug>(fzf-maps-x)
omap <leader><tab> <plug>(fzf-maps-o)

" Insert mode completion
imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-j> <plug>(fzf-complete-file-ag)
imap <c-x><c-l> <plug>(fzf-complete-line)

" Advanced customization using autoload functions
inoremap <expr> <c-x><c-k> fzf#vim#complete#word({'left': '16%'})
