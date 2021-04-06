syntax on
set background=dark
set synmaxcol=300
set visualbell
set number
set rnu
set guifont=Meslo:h14
set guicursor=n-v-c-i:block-Cursor
set guicursor+=n-v-c:blinkon0

" Horizon does not look too good without gui, but gruvbox does
if has("gui_running")
    colorscheme horizon
    highlight Pmenu guibg=#6c6f93
    highlight Cursor guifg=#000000 guibg=#e95678
    highlight htmlTagName gui=italic guifg=#21bfc2
    highlight Statement cterm=italic gui=italic ctermfg=171 guifg=#b877db
    highlight Visual gui=italic guibg=#2b2e3b guifg=#09f7a0
    highlight Delimiter guifg=#a95678
else
    colorscheme gruvbox
    let g:gruvbox_contrast_dark='hard'
    let g:gruvbox_contrast_light='hard'
endif

