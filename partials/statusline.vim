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

lua require("luafiles.statusline").init()
