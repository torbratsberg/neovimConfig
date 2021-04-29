filetype plugin indent on
autocmd FileType scss setl iskeyword+=@-@
augroup bs
    autocmd!
    autocmd FocusGained * lua require('luafiles.init').quote()
augroup END

command FormatFile :call FormatFileFunc()

function FormatFileFunc()
    call CleanParentheses()
endfunction

function CleanParentheses()
    execute '%s/([ ]/(/g'
    execute '%s/[ ])/)/g'
endfunction
