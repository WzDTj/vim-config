" Note
" For fzf search code, need install the_silver_searcher
"   brew install the_silver_searcher
" And put this code to ~/.zshrc
"   export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -g '''
"

" Vundle {
    set nocompatible
    filetype off

    set rtp+=~/.vim/bundle/Vundle.vim
    call vundle#begin()

    Plugin 'Chiel92/vim-autoformat'
    Plugin 'godlygeek/tabular'
    Plugin 'honza/vim-snippets'
    Plugin 'jwalton512/vim-blade'
    Plugin 'majutsushi/tagbar'
    Plugin 'mattn/emmet-vim'
    Plugin 'mxw/vim-jsx'
    Plugin 'scrooloose/nerdtree'
    Plugin 'scrooloose/nerdcommenter'
    Plugin 'skywind3000/asyncrun.vim'
    Plugin 'shawncplus/phpcomplete.vim'
    Plugin 'SirVer/ultisnips'
    Plugin 'tpope/vim-surround'
    Plugin 'vim-airline/vim-airline'
    Plugin 'vim-airline/vim-airline-themes'
    Plugin 'Valloric/YouCompleteMe'
    Plugin 'VundleVim/Vundle.vim'
    Plugin 'w0rp/ale'
    " Fzf
    Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
    Plugin 'junegunn/fzf.vim'
    " TypeScript
    Plugin 'HerringtonDarkholme/yats.vim'
    Plugin 'leafgarland/typescript-vim'
    " Git
    Plugin 'airblade/vim-gitgutter'
    Plugin 'tpope/vim-fugitive'
    call vundle#end()
" }

" General {
    filetype plugin indent on
    colorscheme atom-dark-256
    syntax enable

    set t_Co=256
    set makeprg=clang\ %
    set fileformat=unix
    set laststatus=2
    set cursorline

    set splitright
    set hidden
    set signcolumn=yes
    set number
    set autoread
    set ignorecase
    set hlsearch

    set encoding=utf-8
    set fileencoding=utf-8
    set fileencodings=utf-8

    set smartindent
    set showmatch

    set expandtab
    set shiftwidth=4
    set tabstop=4
    set backspace=2

    autocmd FileType javascript,less set shiftwidth=2 tabstop=2

    set completeopt=menuone,longest,preview

    let mapleader = ';'

    nnoremap <leader>q      :q<CR>
    nnoremap <leader><s-q>  :qa<CR>
    nnoremap <leader>w      :w<CR>

    inoremap ( ()<LEFT>
    inoremap ) <c-r>=ClosePair(')')<CR>
    inoremap { {}<LEFT>
    inoremap } <c-r>=ClosePair('}')<CR>
    inoremap [ []<LEFT>
    inoremap ] <c-r>=ClosePair(']')<CR>

    function! ClosePair(char)
        if getline('.')[col('.') - 1] == a:char
            return "\<Right>"
        else
            return a:char
        endif
    endfunction
" }

" buffer {
    nnoremap <silent><leader>bd :call DeleteBuffer()<CR>
    function DeleteBuffer()
      if len(filter(range(1, bufnr('$')), 'buflisted(v:val)')) != 1
        execute "bp | bd #"
      else
        execute "bd"
        execute NERDTreeFocus()
      endif
    endfunction
" }

" vim-gitgutter {
    set updatetime=100
    if exists('&signcolumn')
        set signcolumn=yes
    else
        let g:gitgutter_sign_column_always = 1
    endif
" }

" nerdtree {
    let NERDTreeShowHidden = 1
    autocmd StdinReadPre * let s:std_in=1
    autocmd VimEnter * :call StartupNerdTree()
    nnoremap <silent><F1> :NERDTreeToggle<CR>

    func StartupNerdTree()
      if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in")
        execute 'NERDTree' argv()[0] | wincmd p | ene
        call NERDTreeFocus()
      endif
    endfunc
" }

" Fzf {
    nnoremap <leader>ob :ls<CR>:b<space>
    nnoremap <leader>of :Files<CR>
    let g:ackprg = 'ag --nogroup --nocolor --column'
" }

" Tagbar {
    nnoremap <silent><F10> :TagbarToggle<CR>
" }

" vim-autoformat {
    let g:autoformat_autoindent = 1
    let g:autoformat_retab = 1
    let g:autoformat_remove_trailing_spaces = 1
" }

" YouCompleteMe {
    let g:ycm_min_num_of_chars_for_completion = 2
    let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
    let g:ycm_confirm_extra_conf = 0
    let g:ycm_autoclose_preview_window_after_completion = 1
    let g:ycm_autoclose_preview_window_after_insertion = 1
    let g:ycm_collect_identifiers_from_tags_files = 1
    let g:ycm_collect_identifiers_from_comments_and_strings = 0
    let g:ycm_seed_identifiers_with_syntax = 1
    let g:ycm_cache_omnifunc = 0
    let g:ycm_complete_in_comments = 1
    let g:ycm_complete_in_strings = 1
    let g:ycm_use_ultisnips_completer = 1
    let g:ycm_key_invoke_completion = '<C-x>'
    let g:ycm_show_diagnostics_ui = 1

    let g:syntastic_enable_highlighting = 1
    let g:syntastic_stl_format = '[%E{Err: %fe #%e}%B{, }%W{Warn: %fw #%w}]'
    " ycm 黑名单
    let g:ycm_filetype_blacklist = {
                \ 'markdown' : 1,
                \ 'text' : 1,
                \ 'gitcommit' : 1,
                \}
    " ycm 触发
    let g:ycm_semantic_triggers =  {
                \   'c' : ['->', '.'],
                \   'objc' : ['->', '.'],
                \   'ocaml' : ['.', '#'],
                \   'cpp,objcpp' : ['->', '.', '::'],
                \   'perl' : ['->'],
                \   'php' : ['->', '::'],
                \   'typescript': ['.'],
                \   'cs,java,javascript,d,python,perl6,scala,vb,elixir,go' : ['.'],
                \   'vim' : ['re![_a-zA-Z]+[_\w]*\.'],
                \   'ruby' : ['.', '::'],
                \   'lua' : ['.', ':'],
                \   'erlang' : [':'],
                \ }

    autocmd FileType php set omnifunc=phpcomplete#CompletePHP
"}

" UltiSnips {
    let g:UltiSnipsSnippetDirectories = $HOME.'/.vim/UltiSnips'
    let g:UltiSnipsExpandTrigger = "<c-c>"
    let g:UltiSnipsJumpForwardTrigger = "<c-j>"
    let g:UltiSnipsJumpBackwardTirrger = "<c-k>"
    let g:UltiSnipsEditSplit = "vertical"
" }

" Emmet {
    let g:user_emmet_install_global = 0
    autocmd FileType html,htm,css,php,js,jsx EmmetInstall
" }

" MarkDown  {
"    let g:vim_markdown_folding_disabled = 1
" }

" Ale {
    let g:ale_lint_on_text_changed = 'never'
    let g:ale_lint_on_enter = 0
" }

" Airline  {
    let g:airline_theme = 'base16'

    " ale
    let g:airline#extensions#ale#enabled = 1
    let airline#extensions#ale#error_symbol = 'E:'
    let airline#extensions#ale#warning_symbol = 'W:'

    let g:airline#extensions#fugitiveline#enabled = 1
    let g:airline#extensions#tagbar#enabled = 1
    let g:airline#extensions#ycm#enabled = 1

    packloadall
    silent! helptags ALL
" }

" vim-jsx {
    let g:jsx_ext_required = 0
" }

" function {
    function! CompileAndRun()
        execute "w"
        execute "copen"
        execute "normal \<c-k>"
        if &filetype == 'c' || &filetype == 'cpp'
            execute "AsyncRun g++ -g % -o %< && ./%<"
        elseif &filetype == 'html' || &filetype == 'php'
            execute "AsyncRun open % -a Safari"
        endif
    endfunction

    function! Rungdb()
        execute "w"
        execute "AsyncRun g++ % -g -o %<"
        execute "AsyncRun gdb ./%<"
    endfunction

    " F1 ~ F12
    nnoremap <F5>  :call CompileAndRun()<CR>
    nnoremap <F6>  :call Rungdb()<CR>
" }
