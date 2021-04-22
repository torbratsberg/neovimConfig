filetype plugin indent on
autocmd FileType scss setl iskeyword+=@-@
augroup bs
    autocmd!
    autocmd FocusGained * lua require('luafiles.init').quote()
    " filetype=php has bad indenting when writing HTML in PHP files
    autocmd BufEnter *.php setl filetype=html
    " But still use PHP syntax highlighting
    autocmd BufEnter *.php setl syntax=php
augroup END
