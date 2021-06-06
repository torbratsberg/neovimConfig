local M = {}

M.init = function()
    local lualine = require 'lualine'

    -- Make new colors for other colorschemes
    local colors = {
        bg = '#202328',
        fg = '#bbc2cf',
        yellow = '#ECBE7B',
        cyan = '#008080',
        green = '#98be65',
        orange = '#FF8800',
        violet = '#a9a1e1',
        magenta = '#c678dd',
        blue = '#51afef',
        red = '#ec5f67',
        inactive = "#444444",
    }

    local conditions = {
        buffer_not_empty = function() return vim.fn.empty(vim.fn.expand('%:t')) ~= 1 end,
        hide_in_width = function() return vim.fn.winwidth(0) > 80 end,
        check_git_workspace = function()
            local filepath = vim.fn.expand('%:p:h')
            local gitdir = vim.fn.finddir('.git', filepath .. ';')
            return gitdir and #gitdir > 0 and #gitdir < #filepath
        end
    }

    local config = {
        options = {
            -- Disable sections and component separators
            component_separators = "",
            section_separators = "",
            theme = {
                normal = {c = {fg = colors.fg, bg = colors.bg}},
                inactive = {c = {fg = colors.inactive, bg = colors.bg}}
            }
        },
        sections = {
            -- these are to remove the defaults
            lualine_a = {},
            lualine_b = {},
            lualine_y = {},
            lualine_z = {},
            -- These will be filled later
            lualine_c = {},
            lualine_x = {}
        },
        inactive_sections = {
            -- these are to remove the defaults
            lualine_a = {},
            lualine_v = {},
            lualine_y = {},
            lualine_z = {},
            lualine_c = {},
            lualine_x = {}
        }
    }

    local function ins_left(component)
        table.insert(config.sections.lualine_c, component)
    end

    local function ins_right(component)
        table.insert(config.sections.lualine_x, component)
    end

    ins_left {
        function() return '▊' end,
        color = "LualineMode",
        left_padding = 0
    }

    ins_left {
        -- mode component
        function()
            local mode_color = {
                n = colors.red,
                i = colors.magenta,
                v = colors.blue,
                V = colors.blue,
                [''] = colors.blue,
                -- [''] = colors.blue,
                c = colors.magenta,
                -- no = colors.red,
                -- s = colors.orange,
                -- S = colors.orange,
                -- [''] = colors.orange,
                -- ic = colors.yellow,
                R = colors.cyan,
                -- Rv = colors.violet,
                -- cv = colors.red,
                -- ce = colors.red,
                -- r = colors.cyan,
                -- rm = colors.cyan,
                -- ['r?'] = colors.cyan,
                -- ['!'] = colors.red,
                t = colors.red
            }
            vim.api.nvim_command(
            'hi! LualineMode guifg=' .. mode_color[vim.fn.mode()] .. " guibg=" .. colors.bg)
            return string.upper(vim.fn.mode())
        end,
        color = "LualineMode",
        left_padding = 0
    }

    ins_left {
        'filename',
        condition = conditions.buffer_not_empty,
        color = {fg = colors.magenta, gui = 'italic'},
    }

    ins_left {
        'filetype',
        icons_enabled = true,
        color = {fg = colors.green},
    }

    -- Insert mid section
    ins_left {function() return '%=' end}

    ----------------
    -- Right side -- 
    ----------------

    ins_right {'location'}

    ins_right {
        'diff',
        symbols = {added = '+', modified = '•', removed = '-'},
        color_added = colors.green,
        color_modified = colors.orange,
        color_removed = colors.red,
        condition = conditions.hide_in_width
    }

    ins_right {
        'branch',
        icon = '',
        condition = conditions.check_git_workspace,
        color = {fg = colors.magenta, gui = 'italic'},
    }

    ins_right {
        function() return '▊' end,
        color = "LualineMode",
        right_padding = 0
    }

    lualine.setup(config)
end

return M
