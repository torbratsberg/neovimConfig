runtime! partials/plugins.vim
runtime! partials/options.vim
runtime! partials/lets.vim
runtime! partials/appearance.vim
runtime! partials/mappings.vim
runtime! partials/statusline.vim
runtime! partials/abbrevations.vim
runtime! partials/misc.vim
runtime! partials/commands.vim

" LSP Stuff
lua require'lspconfig'.cssls.setup{on_attach=require'completion'.on_attach}
lua require'lspconfig'.tsserver.setup{on_attach=require'completion'.on_attach}
lua require'lspconfig'.intelephense.setup{on_attach=require'completion'.on_attach}
lua require'lspconfig'.pyls.setup{on_attach=require'completion'.on_attach}
lua require'lspconfig'.vuels.setup{on_attach=require'completion'.on_attach}

" Initiate Treesitter
lua << EOF
require'nvim-treesitter.configs'.setup{
    highlight = {
        enable = true
    },
    indent = {
        enable = true,
    }
}
EOF

let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']
lua require('luafiles.init')
