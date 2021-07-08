filetype plugin indent on
autocmd FileType scss setl iskeyword+=@-@

" Since <cr> is mapped to SelectIndent(), selecting from qf list did not work
augroup CrMapFix
    autocmd!
    autocmd FileType qf nmap <buffer> <cr> <cr>
augroup END

command! FormatFile call FormatFileFunc()

function! FormatFileFunc()
    execute '%s/([ ]/(/g'
    execute '%s/[ ])/)/g'
    execute '%s/[[][ ]/[/g'
    execute '%s/[ ][]]/]/g'
endfunction

function! SelectIndent ()
    if indent(line(".")) == 0
        exe "normal vap"
        return
    endif
    let temp_var=indent(line("."))
    while indent(line(".")-1) >= temp_var
        exe "normal k"
    endwhile
    exe "normal V"
    while indent(line(".")+1) >= temp_var
        exe "normal j"
    endwhile
endfun

" Selects indentation level including empty lines
function! SelectIndentWithSpace ()
    if indent(line(".")) == 0
        exe "normal vap"
        return
    endif
    let temp_var=indent(line("."))
    while indent(line(".")-1) >= temp_var || (indent(line(".")-1) == 0 && strwidth(getline(line(".")-1)) == 0)
        exe "normal k"
    endwhile
    exe "normal V"
    while indent(line(".")+1) >= temp_var || (indent(line(".")+1) == 0 && strwidth(getline(line(".")+1)) == 0)
        exe "normal j"
    endwhile
endfun
