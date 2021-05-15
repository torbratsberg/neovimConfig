filetype plugin indent on
autocmd FileType scss setl iskeyword+=@-@
command! -nargs=0 Prettier :CocCommand prettier.formatFile

" Easymotion searcg triggered all possible errors in Coc, this is fix for that
augroup EasyMotionFix
    autocmd!
    autocmd User EasyMotionPromptBegin silent! CocDisable
    autocmd User EasyMotionPromptEnd silent! CocEnable
augroup END

augroup LuaGroup
    autocmd!
    autocmd FocusGained * lua require('luafiles.init').quote()
augroup END

command FormatFile :call FormatFileFunc()
function FormatFileFunc()
    execute '%s/([ ]/(/g'
    execute '%s/[ ])/)/g'
    norm gg=G
endfunction

" Prints the highlight group of word under cursor
nmap <Leader>. :call <SID>SynStack()<CR>
function! <SID>SynStack()
    if !exists("*synstack")
        return
    endif
    echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc
