require('luafiles.util')

local M = {}

M.search_notes = function()
    require('telescope.builtin').find_files({
        prompt_title = 'Notes',
        cwd = '~/main/notes/',
        previewer = false,
    })
end

M.search_config = function()
    require('telescope.builtin').find_files({
        prompt_title = 'NVIM Config files',
        cwd = '~/.config/nvim/',
        previewer = false,
    })
end

M.quote = function()
    local quotes = require('luafiles.quotes')
    local quote = quotes[math.random(1, TableLength(quotes))]
    print(quote)
end

return M

