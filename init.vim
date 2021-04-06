" Import files
runtime! partials/plugins.vim
runtime! partials/options.vim
runtime! partials/lets.vim
runtime! partials/mappings.vim
runtime! partials/abbrevations.vim
runtime! partials/appearance.vim
runtime! partials/statusline.vim

" Lua stuff
" lua require("luafiles")
nnoremap <leader>vrc :lua require('luafiles').search_config()<CR>
nnoremap <leader>nn :lua require('luafiles').search_notes()<CR>

" Dont know where to put this yet
filetype plugin indent on
autocmd FileType scss setl iskeyword+=@-@
