function! ClosePair(char)
    if getline('.')[col('.') - 1] == a:char
        return "\<Right>"
    else
        return a:char
    endif
endfunction

function DeleteBuffer()
    if len(filter(range(1, bufnr('$')), 'buflisted(v:val)')) != 1
        execute "bp | bd #"
    else
        execute "bd"
    endif
endfunction

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

function! DeleteEmptyBuffers()
    let [i, n; empty] = [1, bufnr('$')]

    while i <= n
        if bufexists(i) && bufname(i) == ''
            call add(empty, i)
        endif
        let i += 1
    endwhile
    if len(empty) > 0
        exe 'bdelete' join(empty)
    endif
endfunction

function! RelocatePreviewWindow()
    if &previewwindow
        wincmd L
        vertical resize 50
    endif
endfunction

