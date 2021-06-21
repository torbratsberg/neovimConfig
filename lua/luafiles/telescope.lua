local M = {}

M.search_config = function()
    require('telescope.builtin').find_files({
        prompt_title = 'NVIM Config files',
        cwd = '~/.config/nvim/',
        theme = 'get_ivy'
    })
end

return M
