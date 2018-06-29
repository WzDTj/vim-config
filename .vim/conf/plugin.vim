set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"--- General ---
" Plugin Manager
Plugin 'VundleVim/Vundle.vim'

" Status Line
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" File Explorer
Plugin 'scrooloose/nerdtree'

" Search File or Code
Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plugin 'junegunn/fzf.vim'

" Other
Plugin 'editorconfig/editorconfig-vim'

"--- Programming ---
" Bracket Complement
Plugin 'Raimondi/delimitMate'

" Code Formatter
Plugin 'Chiel92/vim-autoformat'
Plugin 'godlygeek/tabular'
Plugin 'tpope/vim-surround'

" Code Snippets
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

" Outline
Plugin 'majutsushi/tagbar'

" Comments
Plugin 'scrooloose/nerdcommenter'

" Code Complement
Plugin 'Valloric/YouCompleteMe'

" Code Diagnose
Plugin 'w0rp/ale'

" Language Support
Plugin 'jwalton512/vim-blade'
Plugin 'mattn/emmet-vim'
Plugin 'mxw/vim-jsx'
Plugin 'shawncplus/phpcomplete.vim'
" TypeScript
Plugin 'HerringtonDarkholme/yats.vim'
Plugin 'leafgarland/typescript-vim'

" Version Control
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'

call vundle#end()
filetype plugin indent on