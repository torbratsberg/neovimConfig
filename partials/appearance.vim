let g:theme = 'seoul256'

syntax on
set background=dark
set guifont=Meslo:h15
set guicursor=a:blinkoff0-block
set termguicolors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

if g:theme == 'horizon'
    colorscheme horizon
    highlight Pmenu guibg=#6c6f93
    highlight Cursor guifg=#000000 guibg=#e95678
    highlight htmlTagName gui=italic guifg=#21bfc2
    highlight Statement cterm=italic gui=italic ctermfg=171 guifg=#b877db
    highlight Visual gui=italic guibg=#2b2e3b guifg=#09f7a0
    highlight! link TabLineFill Character
    highlight! link TabLine Folded
    highlight! link TabLineSel Directory
elseif g:theme == 'seoul256'
    let g:seoul256_background = 235
    colorscheme seoul256
    hi! link SassClass Special
    hi! link PythonSelf WhiteSpace
    syn keyword PythonSelf self
endif
