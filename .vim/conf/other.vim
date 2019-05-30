" PHP
autocmd FileType php set omnifunc=phpcomplete#CompletePHP

" Emmet
let g:user_emmet_install_global = 0
autocmd FileType html,htm,css,php,js,jsx EmmetInstall

" MarkDown
let g:vim_markdown_folding_disabled = 1

" JSX
" let g:jsx_ext_required = 0

" Golang
autocmd FileType go nmap <leader>r  <Plug>(go-run)
autocmd FileType go nmap <leader>b  <Plug>(go-build)
autocmd FileType go nmap <leader>t  <Plug>(go-test)
autocmd FileType go nmap <Leader>c  <Plug>(go-coverage-toggle)

" Markdown
