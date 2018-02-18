" copytoggle.vim - Vim's pastetoggle for copying
" Author:   Tim Schumacher <tim@timakro.de>
" License:  GPLv3
" Version:  1.0.1

if exists("g:loaded_copytoggle")
    finish
endif
let g:loaded_copytoggle = 1

if !exists("g:copytoggle_notify")
    let g:copytoggle_notify = 1
endif

let s:state = 0
let s:save = [
    \ ['list', 0, 0],
    \ ['linebreak', 0, 0],
    \ ['showbreak', '', 0],
    \ ['number', 0, 0]
    \ ]

function s:SID()
    return matchstr(expand('<sfile>'), '<SNR>\zs\d\+\ze_SID$')
endfun

function s:On()
    if s:state
        return
    endif
    for option in s:save
        execute 'let option[2] = &'.option[0]
        execute 'let &'.option[0].' = option[1]'
    endfor
    if g:copytoggle_notify
        echo 'copytoggle on'
    endif
    let s:state = 1
endfun

function s:Off()
    if !s:state
        return
    endif
    for option in s:save
        execute 'let untouched = &'.option[0].' == option[1]'
        if untouched
            execute 'let &'.option[0].' = option[2]'
        endif
    endfor
    if g:copytoggle_notify
        echo ''
    endif
    let s:state = 0
endfun

function s:Toggle()
    if !s:state
        call s:On()
        let s:state = 1
    else
        call s:Off()
        let s:state = 0
    endif
endfun

nnoremap <silent> <unique> <Plug>copytoggle :call <SID>Toggle()<CR>
nnoremap <silent> <unique> <Plug>CopytoggleOn :call <SID>On()<CR>
nnoremap <silent> <unique> <Plug>CopytoggleOff :call <SID>Off()<CR>
