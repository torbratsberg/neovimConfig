filetype plugin indent on
autocmd FileType scss setl iskeyword+=@-@

command! FormatFile call FormatFileFunc()

function! FormatFileFunc()
    execute '%s/([ ]/(/g'
    execute '%s/[ ])/)/g'
    execute '%s/[[][ ]/[/g'
    execute '%s/[ ][]]/]/g'
endfunction

function! SelectIndent ()
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
    let temp_var=indent(line("."))
    while indent(line(".")-1) >= temp_var || (indent(line(".")-1) == 0 && strwidth(getline(line(".")-1)) == 0)
        exe "normal k"
    endwhile
    exe "normal V"
    while indent(line(".")+1) >= temp_var || (indent(line(".")+1) == 0 && strwidth(getline(line(".")+1)) == 0)
        exe "normal j"
    endwhile
endfun

