local M = {}

M.search_config = function()
    require('telescope.builtin').find_files({
        prompt_title = 'NVIM Config files',
        cwd = '~/.config/nvim/',
    })
end

M.search_notes = function()
    require('telescope.builtin').find_files({
        prompt_title = 'NVIM Config files',
        cwd = '~/main/notes/',
    })
end

return M
