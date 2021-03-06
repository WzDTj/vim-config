" Bracket Complement (Raimondi/delimitMate)
let delimitMate_matchpairs = "(:),[:],{:},<:>"
autocmd FileType go let delimitMate_matchpairs="(:),[:],{:}"
autocmd FileType go set shiftwidth=8 | set softtabstop=8

" Comment (scrooloose/nerdcommenter)
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'
let g:NERDAltDelims_java = 1
let g:NERDCustomDelimiters = {}
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1
let g:NERDToggleCheckAllLines = 1
map // <plug>NERDCommenterToggle

" Outline (majutsushi/tagbar)
nnoremap <silent><leader>otl :TagbarToggle<CR>
let g:tagbar_type_markdown = {
  \ 'ctagstype' : 'markdown',
  \ 'kinds' : [
    \ 'h:Heading_L1',
    \ 'i:Heading_L2',
    \ 'k:Heading_L3'
  \ ]
\ }

" Code Complement (Valloric/YouCompleteMe)
nnoremap <leader>ycm :YcmCompleter<space>
nnoremap <leader>def :YcmCompleter GoToDefinition<cr>
nnoremap <leader>ref :YcmCompleter GoToReferences<cr>
nnoremap <leader>doc :YcmCompleter GetDoc<cr>

let g:ycm_min_num_of_chars_for_completion = 2
let g:ycm_always_populate_location_list = 1
let g:ycm_complete_in_comments = 0
let g:ycm_complete_in_strings = 1
let g:ycm_collect_identifiers_from_comments_and_strings = 0
let g:ycm_collect_identifiers_from_tags_files = 0
let g:ycm_autoclose_preview_window_after_completion = 1
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
nmap <leader>i <Plug>(ale_fix)

let g:ale_completion_enabled = 0
let g:ale_lint_on_enter = 1
let g:ale_fix_on_save = 1
let g:ale_open_list = 1
let g:ale_set_loclist = 0
let g:ale_set_quickfix = 1
let g:ale_linters_explicit = 1
let g:ale_linters = {
    \ 'php': ['phpcs'],
    \ 'javascript': ['eslint'],
    \ 'jsx': ['eslint'],
    \ 'typescript': ['eslint'],
    \ 'vue': ['eslint'],
    \}
let g:ale_fixers = {
    \ '*': ['remove_trailing_lines', 'trim_whitespace'],
    \ 'html': ['prettier'],
    \ 'css': ['prettier'],
    \ 'php': ['phpcbf'],
    \ 'javascript': ['eslint'],
    \ 'jsx': ['eslint'],
    \ 'typescript': ['eslint'],
    \ 'vue': ['prettier'],
    \ 'markdown': ['prettier'],
    \}
let g:ale_echo_msg_error_str = 'Error'
let g:ale_echo_msg_info_str = 'Info'
let g:ale_echo_msg_warning_str = 'Warning'
let g:ale_echo_msg_format = '[%linter%] [%severity%] [%code%] %s'

" Version Control (airblade/vim-gitgutter)
" set updatetime=100

" Preview Window
autocmd BufWinEnter * call RelocatePreviewWindow()
