syntax on
set background=dark
set guifont=Meslo:h15
set guicursor=n-v-c-i:block-Cursor
set guicursor+=n-v-c:blinkon0

if (exists("+termguicolors"))
    colorscheme horizon
    set termguicolors
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
    highlight Pmenu guibg=#6c6f93
    highlight Cursor guifg=#000000 guibg=#e95678
    highlight htmlTagName gui=italic guifg=#21bfc2
    highlight Statement cterm=italic gui=italic ctermfg=171 guifg=#b877db
    highlight Visual gui=italic guibg=#2b2e3b guifg=#09f7a0
    highlight Delimiter guifg=#a95678
else
    colorscheme gruvbox
    let g:gruvbox_contrast_dark='medium'
endif
