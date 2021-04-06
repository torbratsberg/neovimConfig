" Import files
runtime! partials/plugins.vim
runtime! partials/options.vim
runtime! partials/lets.vim
runtime! partials/mappings.vim
runtime! partials/abbrevations.vim
runtime! partials/appearance.vim
runtime! partials/statusline.vim

" Dont know where to put this yet
filetype plugin indent on
autocmd FileType scss setl iskeyword+=@-@
