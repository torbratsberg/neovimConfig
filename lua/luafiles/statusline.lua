local M = {}

M.init = function()
    local lualine = require 'lualine'

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

    local colors = {}
    if vim.g.theme == 'seoul256' or vim.g.theme == 'gruvbox' then
        colors = {
            bg       = '#3f3f3f',
            fg       = '#d9d9d9',
            cyan     = '#6FBCBD',
            green    = '#719872',
            orange   = '#E19972',
            magenta  = '#d9d9d9',
            blue     = '#98bcbd',
            red      = '#ffbfbd',
            inactive = '#666666',
        }
    elseif vim.g.theme == 'horizon' then
        colors = {
            bg       = '#202328',
            fg       = '#bbc2cf',
            cyan     = '#008080',
            green    = '#98be65',
            orange   = '#FF8800',
            magenta  = '#c678dd',
            blue     = '#51afef',
            red      = '#ec5f67',
            inactive = '#444444',
        }
    end

    config.options = {
        -- Disable sections and component separators
        component_separators = "",
        section_separators = "",
        theme = {
            normal = {c = {fg = colors.fg, bg = colors.bg}},
            inactive = {c = {fg = colors.inactive, bg = colors.bg}}
        }
    }

    ins_left {
        function() return '▊' end,
        color = "LualineMode",
        left_padding = 0
    }

    ins_left {
        -- mode component
        function()
            local mode_color = {
                n      = colors.red,
                i      = colors.magenta,
                v      = colors.blue,
                V      = colors.blue,
                [''] = colors.blue,
                c      = colors.magenta,
                R      = colors.cyan,
                t      = colors.red
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
