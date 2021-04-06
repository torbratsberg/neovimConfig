local M = {}

-- M.search_notes = function()
--     require('telescope.builtin').find_files({
--         prompt_title = 'Notes',
--         cwd = '~/.vim/notes/',
--     })
-- end

M.search_config = function()
    require('telescope.builtin').find_files({
        prompt_title = 'NVIM Config files',
        cwd = '~/.config/nvim/',
    })
end

return M

