local M = {}

require('telescope').setup{
    defaults = {
        file_ignore_patterns = {'%.png', '%.jpg', '%.jpeg', '%.woff', '%.woff2', '%.map', 'build/*'},
    }
}

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
        theme = 'get_ivy'
    })
end

return M

