local C = {}

function C.gitsigns()
    require 'gitsigns'.setup()
end

function C.colorizer()
    require 'colorizer'.setup({'*'}, {
        RGB			= true,
        RRGGBB		= true,
        names		= true,
        RRGGBBAA	= true,
        rgb_fn		= true,
        hsl_fn 		= true,
        mode     	= 'background'
    })
end

function C.nvimcomment()
    require 'nvim_comment'.setup {
        create_mappings = false,
        marker_padding = true,
    }
    -- vim.api.nvim_buf_set_option(0, "commentstring", "# %s")
end

function C.neoscroll()
    require 'neoscroll'.setup {
        mappings = {'<C-u>', '<C-d>', '<C-b>', '<C-f>', '<C-y>', '<C-e>', 'zt', 'zz', 'zb'},
        hide_cursor = false,
        stop_eof = true,
        respect_scrolloff = false,
        cursor_scrolls_alone = true,
    }
end

function C.bufferline()
    require 'bufferline'.setup {
        options = {
            view = "default",
            numbers = "none",
            mappings = false,
            tab_size = 10,
            max_name_length = 30,
            separator_style = "thin",
            show_buffer_close_icons = false,
            show_close_icon = false,
            show_tab_indicators = false,
            modified_icon = '●',
            left_trunc_marker = '<',
            right_trunc_marker = '>',

            custom_filter = function(buf_number)
                -- filter out filetypes you don't want to see
                if vim.bo[buf_number].filetype ~= "<i-dont-want-to-see-this>" then
                    return true
                end
                -- filter out by buffer name
                if vim.fn.bufname(buf_number) ~= "<buffer-name-I-dont-want>" then
                    return true
                end
                -- filter out based on arbitrary rules
                -- e.g. filter out vim wiki buffer from tabline in your work repo
                if vim.fn.getcwd() == "<work-repo>" and vim.bo[buf_number].filetype ~= "wiki" then
                    return true
                end
            end,
            -- sort_by = function(buffer_a, buffer_b) if (buffer_a.modified) then return true end return false end,
            -- diagnostics = "nvim_lsp",
            -- diagnostics_indicator = function(count, level, diagnostics_dict)
            --   local icon = level:match("error") and " " or " "
            --   return " " .. icon .. count
            -- end,
        }
    }
end

function C.buftabline()
    require("buftabline").setup {
        modifier = ":t",
        index_format = "%d: ",
        icons = false,
        auto_hide = false,
        padding = 4,
        go_to_maps = false,
        kill_maps = false,
        start_hidden = false,

        disable_commands = false,
        custom_map_prefix = nil,
        custom_command = nil,
        hlgroup_current = "TabLineSel",
        hlgroup_normal = "TabLineFill",
    }
end

function C.lualine()
    -- cmd ':hi! link DiffDelete WarningMsg'
    require 'lualine'.setup {
        options = {
            theme = Theme_lualine,
        },
        sections = {
            lualine_a = {'mode'},
            lualine_b = {'branch', {'diff', colored = true, color_added = get_col('DiffAdd', 'fg'), color_modified = get_col('DiffChange', 'fg'), color_removed = get_col('DiffDelete', 'fg')}},
            lualine_c = {},
            lualine_x = {{'diagnostics', sources={'nvim_lsp'}}},
            lualine_y = {'filetype'},
            lualine_z = {'location'},
        },
        inactive_sections = {
            lualine_a = {},
            lualine_b = {'filename'},
            lualine_c = {},
            lualine_x = {},
            lualine_y = {'location'},
            lualine_z = {},
        }
    }
end

function C.feline()
    -- inits
    local props = { force_inactive = { filetypes = {}, buftypes = {}, bufnames = {} } }
    local comps = {left = {active = {}, inactive = {}}, mid = {active = {}, inactive = {}}, right = {active = {}, inactive = {}}}
    local cols = {
        bg = get_col('Normal', 'bg'),
        fg = get_col('Title', 'fg'),
        red = get_col('DiffDelete', 'fg'),
        green = get_col('DiffAdd', 'fg'),
        blue = get_col('DiffChange', 'fg'),
    }
    local function new_prop(name, type, val) table.insert(props[name][type], val) end
    local function new_comp(pos, prov, c)
        if c == nil then c = {} end

        c.provider = prov

        if pos == 'left' then c.right_sep = ' ' end
        if pos == 'right' then c.left_sep = ' ' end
        -- if pos == 'left' then c.right_sep = ' ' end
        -- if pos == 'right' then c.left_sep = ' ' end
        -- str = ' ',
        -- hl = {
        --     fg = 'NONE',
        --     bg = 'oceanblue'
        -- }
        -- 
        -- 

        table.insert(comps[pos]['active'], c)
    end
    local function comp_hl(fg, bg, style) return function() return { fg = fg, bg = bg, style = style } end end

    -- properties
    new_prop('force_inactive', 'filetypes', 'packer')
    new_prop('force_inactive', 'buftypes', 'terminal')

    -- components
    new_comp('left', get_curr_mode, { hl = comp_hl(cols.fg, cols.bg, 'bold') })
    new_comp('left', "file_info", { hl = comp_hl(cols.fg, cols.bg, 'bold') })
    new_comp('left', "git_branch", { hl = comp_hl(cols.red, cols.bg, 'bold'), icon = ' ' })
    new_comp('left', "git_diff_added", { hl = comp_hl(cols.green, cols.bg, nil), icon = '+' })
    new_comp('left', "git_diff_removed", { hl = comp_hl(cols.red, cols.bg, nil), icon = '-' })
    new_comp('left', "git_diff_changed", { hl = comp_hl(cols.blue, cols.bg, nil), icon = '~' })

    new_comp('right', "position")
    new_comp('right', "file_type", { hl = comp_hl(cols.blue, cols.bg, nil) })
    new_comp('right', "file_size", { hl = comp_hl(cols.fg, cols.bg, nil), enabled = function() return vim.fn.getfsize(vim.fn.expand('%:p')) > 0 end })
    -- new_comp('right', "file_encoding")
    -- new_comp("right", "lsp_client_names")
    -- new_comp("right", "diagnostic_errors")
    -- new_comp("right", "diagnostic_warnings")
    -- new_comp("right", "diagnostic_hints")
    -- new_comp("right", "diagnostic_info")

    -- padding the bar on both sides
    comps['left']['active'][1].left_sep = ' '
    comps['right']['active'][#comps['right']['active']].right_sep = ' '
    -- comps['left']['inactive'][1].left_sep = ' '
    -- comps['right']['inactive'][1].right_sep = ' '

    require 'feline'.setup {
        components = comps,
        properties = props,
        default_fg = get_col("Normal", "fg"),
        default_bg = get_col("Normal", "bg"),
    }
end

function C.nvimtree()
    let('nvim_tree_show_icons', {git = 1, folders = 1, files = 1})
end

function C.treesitter()
    require 'nvim-treesitter.configs'.setup {
        ensure_installed = {
            'comment',
            'graphql',
            'latex',
            'regex',
            'query',
            'bash',
            'json',
            'rst',
            'toml',
            'yaml',

            'c_sharp',
            'cpp',
            'c',

            'javascript',
            'typescript',
            'svelte',
            'scss',
            'html',
            'tsx',
            'vue',
            'css',

            'gdscript',
            'python',
            'kotlin',
            'java',
            'ruby',
            'rust',
            'php',
            'lua',
            'go',
            'r',
        },
        highlight = { enable = true },
        -- indent = { enable = true },
        -- incremental_selection = {
        -- 		enable = true,
        -- 		keymaps = {
        -- 	init_selection = "gnn",
        -- 	node_incremental = "grn",
        -- 	scope_incremental = "grc",
        -- 	node_decremental = "grm",
        -- 		},
        -- }
    }
end

function C.neorg()
	require 'neorg'.setup {
		load = {
			["core.defaults"] = {},
			-- ["core.norg.concealer"] = {},
		}
	}
end

for _, config in pairs(Configs) do C[config]() end
