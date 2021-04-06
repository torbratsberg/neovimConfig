local M = {}

M.search_config = function()
    require('telescope.builtin').find_files({
        prompt_title = 'VimRC',
        cwd = '~/.config/nvim/',
    })
end

return M
