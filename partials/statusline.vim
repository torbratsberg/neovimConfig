set laststatus=2
" set statusline=
" set statusline+=%#Character#
" set statusline+=%#Special#
" set statusline+=\ [%M%R]\ \|"
" set statusline+=%#Character#
" set statusline+=\ %f
" set statusline+=%#Special#
" set statusline+=\ \|\ %{FugitiveHead()}
" set statusline+=%#Character#
" set statusline+=%=
" set statusline+=%#Character#
" set statusline+=\ %l:%c
" set statusline+=\ \|\ %L
" set statusline+=\ %#LineNr#
" set statusline+=\ "

" 'section_separators' : ['', ''],
" 'component_separators' : ['', ''],

let g:lualine = {
    \'options' : {
    \  'theme': g:lualine_theme,
    \  'section_separators' : ['', ''],
    \  'component_separators' : ['', ''],
    \  'icons_enabled' : v:true,
    \},
    \'sections' : {
    \  'lualine_a' : [['mode', {'upper': v:true,},],],
    \  'lualine_b' : [['branch', {'icon': '',}, ],],
    \  'lualine_c' : [['filename', {'file_status': v:true,}],],
    \  'lualine_x' : ['diff', 'filetype', 'encoding', 'fileformat'],
    \  'lualine_y' : ['progress'],
    \  'lualine_z' : ['location'],
    \},
    \'inactive_sections' : {
    \  'lualine_a' : [],
    \  'lualine_b' : [],
    \  'lualine_c' : [['filename', {'file_status': v:true,},],],
    \  'lualine_x' : ['filetype', 'encoding', 'fileformat'],
    \  'lualine_y' : ['location'],
    \  'lualine_z' : [],
    \},
\}

lua require("lualine").setup()
