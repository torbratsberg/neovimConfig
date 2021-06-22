--Enable (broadcasting) snippet capability for completion
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

require'lspconfig'.cssls.setup{on_attach=require'completion'.on_attach, capabilities=capabilities}
require'lspconfig'.tsserver.setup{on_attach=require'completion'.on_attach}
require'lspconfig'.intelephense.setup{on_attach=require'completion'.on_attach}
require'lspconfig'.pyls.setup{on_attach=require'completion'.on_attach}
require'lspconfig'.vuels.setup{on_attach=require'completion'.on_attach}
require'lspconfig'.gopls.setup{on_attach=require'completion'.on_attach}

-- Initiate Treesitter
require'nvim-treesitter.configs'.setup{
    highlight = {
        enable = true
    },
    indent = {
        enable = true,
    }
}

-- Telescope configs
require('telescope').setup{
    defaults = {
        file_ignore_patterns = {'%.png', '%.jpg', '%.jpeg', '%.woff', '%.woff2', '%.map', 'build/*'},
        file_sorter = require('telescope.sorters').get_fzy_sorter,
    },
    extensions = {
        fzy_native = {
            override_generic_sorter = false,
            override_file_sorter = true,
        }
    }
}
