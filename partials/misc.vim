filetype plugin indent on
autocmd FileType scss setl iskeyword+=@-@
command! -nargs=0 Prettier :CocCommand prettier.formatFile

lua require("luafiles.statusline").init()

" Easymotion search triggered all possible errors in Coc, this is fix for that
augroup EasyMotionFix
    autocmd!
    autocmd User EasyMotionPromptBegin silent! CocDisable
    autocmd User EasyMotionPromptEnd silent! CocEnable
augroup END

command FormatFile :call FormatFileFunc()
function FormatFileFunc()
    execute '%s/([ ]/(/g'
    execute '%s/[ ])/)/g'
endfunction

" Prints the highlight group of word under cursor
nmap <Leader>. :call <SID>SynStack()<CR>
function! <SID>SynStack()
    if !exists("*synstack")
        return
    endif
    echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

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
    while indent(line(".")-1) >= temp_var ||
                \(indent(line(".")-1) == 0 &&
                \strwidth(getline(line(".")-1)) == 0)
        exe "normal k"
    endwhile
    exe "normal V"
    while indent(line(".")+1) >= temp_var ||
                \(indent(line(".")+1) == 0 &&
                \strwidth(getline(line(".")+1)) == 0)
        exe "normal j"
    endwhile
endfun

