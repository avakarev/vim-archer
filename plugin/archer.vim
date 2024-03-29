function! DelEmptyLineAbove()
    if line(".") == 1
        return
    endif
    let l:line = getline(line(".") - 1)
    if l:line =~ '^\s*$'
        let l:colsave = col(".")
        .-1d
        silent normal! <C-y>
        call cursor(line("."), l:colsave)
    endif
endfunction

function! AddEmptyLineAbove()
    let l:scrolloffsave = &scrolloff
    " Avoid jerky scrolling with ^E at top of window
    set scrolloff=0
    call append(line(".") - 1, "")
    if winline() != winheight(0)
        silent normal! <C-e>
    endif
    let &scrolloff = l:scrolloffsave
endfunction

function! DelEmptyLineBelow()
    if line(".") == line("$")
        return
    endif
    let l:line = getline(line(".") + 1)
    if l:line =~ '^\s*$'
        let l:colsave = col(".")
        .+1d
        ''
        call cursor(line("."), l:colsave)
    endif
endfunction

function! AddEmptyLineBelow()
    call append(line("."), "")
endfunction

" Arrow key remapping:
"
" Up/Dn      - move line up/dn;
"
" nnoremap <silent> <Up> <Esc>:call DelEmptyLineAbove()<CR>
" nnoremap <silent> <Down>  <Esc>:call AddEmptyLineAbove()<CR>
" vnoremap <silent> <Up> <Esc>:call DelEmptyLineAbove()<CR>gv
" vnoremap <silent> <Down>  <Esc>:call AddEmptyLineAbove()<CR>gv
" inoremap <silent> <Up> <Esc>:call DelEmptyLineAbove()<CR>a
" inoremap <silent> <Down> <Esc>:call AddEmptyLineAbove()<CR>a
