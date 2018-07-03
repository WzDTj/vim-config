" Bracket Complement (Raimondi/delimitMate)
let delimitMate_matchpairs = "(:),[:],{:},<:>"

" Comment (scrooloose/nerdcommenter)
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'
let g:NERDAltDelims_java = 1
let g:NERDCustomDelimiters = {}
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1
let g:NERDToggleCheckAllLines = 1
map <leader>/ <plug>NERDCommenterToggle

" Outline (majutsushi/tagbar)
nnoremap <silent><leader>otl :TagbarToggle<CR>

" Code Formater (Chiel92/vim-autoformat)
nnoremap <silent><leader>i :Autoformat<CR>
let g:autoformat_autoindent = 1
let g:autoformat_retab = 1
let g:autoformat_remove_trailing_spaces = 1
let g:formatdef_phpcbf = '"/Users/sunfun/.composer/vendor/bin/phpcbf"'
let g:formatters_php = ['phpcbf']
let g:formatdef_tslint = '"/usr/local/bin/tslint --fix"'
let g:formatters_typescript = ['tslint']

" Code Complement (Valloric/YouCompleteMe)
let g:ycm_min_num_of_chars_for_completion = 2
let g:ycm_complete_in_comments = 0
let g:ycm_complete_in_strings = 1
let g:ycm_collect_identifiers_from_comments_and_strings = 0
let g:ycm_collect_identifiers_from_tags_files = 0
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
let g:ycm_filetype_blacklist = {
    \ 'tagbar' : 1,
    \ 'qf' : 1,
    \ 'notes' : 1,
    \ 'unite' : 1,
    \ 'text' : 1,
    \ 'vimwiki' : 1,
    \ 'pandoc' : 1,
    \ 'infolog' : 1,
    \ 'mail' : 1
    \}

" Code Snippets (SirVer/ultisnips)
let g:UltiSnipsExpandTrigger = "<c-c>"
let g:UltiSnipsJumpForwardTrigger = "<c-j>"
let g:UltiSnipsJumpBackwardTirrger = "<c-k>"
let g:UltiSnipsEditSplit = "vertical"

" Code Diagnose (w0rp/ale)
let g:ale_completion_enabled = 0
let g:ale_lint_on_enter = 1
let g:ale_linters_explicit = 1
let g:ale_linters = {
    \ 'javascript': ['eslint'],
    \ 'typescript': ['tslint', 'tsserver'],
    \ 'jsx': ['eslint'],
    \ 'php': ['phpcs'],
    \}
let g:ale_fixers = {
    \ 'javascript': ['eslint'],
    \ 'typescript': ['tslint'],
    \ 'jsx': ['eslint'],
    \ 'php': ['phpcbf'],
    \}
let g:ale_echo_msg_error_str = 'Error'
let g:ale_echo_msg_info_str = 'Info'
let g:ale_echo_msg_warning_str = 'Warning'
let g:ale_echo_msg_format = '[%linter%] [%severity%] [%code%] %s'
nnoremap <leader>fix :ALEFix<cr>
nnoremap <leader>ycm :YcmCompleter<space>
nnoremap <leader>def :YcmCompleter GoToDefinition<cr>
nnoremap <leader>ref :YcmCompleter GoToReferences<cr>
nnoremap <leader>doc :YcmCompleter GetDoc<cr>

" Version Control (airblade/vim-gitgutter)
" set updatetime=100
