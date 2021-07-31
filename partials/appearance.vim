let g:theme = 'horizon'

syntax on
set background=dark
set guifont=Meslo:h15
set guicursor=a:blinkoff0-block
set termguicolors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

if g:theme == 'horizon'
    colorscheme horizon
    hi! Pmenu guibg=#6c6f93
    hi! Cursor guifg=#000000 guibg=#e95678
    hi! htmlTagName gui=italic guifg=#21bfc2
    hi! Statement cterm=italic gui=italic ctermfg=171 guifg=#b877db
    hi! Visual gui=italic guibg=#2b2e3b guifg=#09f7a0
    hi! link TabLineFill Character
    hi! link TabLine Folded
    hi! link TabLineSel Directory
elseif g:theme == 'seoul256'
    let g:seoul256_background = 234
    colorscheme seoul256
    hi! link SassClass Special
    hi! link PythonSelf WhiteSpace
    syn keyword PythonSelf self
    hi! LineNr guibg=#h5h5h5 guifg=#555555
endif
