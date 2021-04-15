filetype plugin indent on
autocmd FileType scss setl iskeyword+=@-@
augroup bs
    autocmd!
    autocmd FocusGained * lua require('luafiles.init').quote()
augroup END
