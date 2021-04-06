-- require('telescope').setup{
--   defaults = {
--     prompt_position = "top",
--     prompt_prefix = " > ",
--     selection_caret = " > ",
--     entry_prefix = "   ",
--     sorting_strategy = "ascending",
--     layout_strategy = "center",
--     width = 0.35,
--   }
-- }


local M = {}

M.search_notes = function()
    require('telescope.builtin').find_files({
        prompt_title = 'Notes',
        cwd = '~/main/notes/',
    })
end

M.search_config = function()
    require('telescope.builtin').find_files({
        prompt_title = 'NVIM Config files',
        cwd = '~/.config/nvim/',
    })
end

return M

