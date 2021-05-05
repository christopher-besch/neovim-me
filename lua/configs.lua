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

function C.blankline()
	-- let('indent_blankline_char', '┊')
	-- let('indent_blankline_filetype_exclude', { 'help', 'packer' })
	-- let('indent_blankline_buftype_exclude', { 'terminal', 'nofile'})
	-- let('indent_blankline_char_highlight', 'LineNr')
end

function C.compe()	
    require 'compe'.setup {
	enabled = true,
	autocomplete = true,
	debug = false,
	min_length = 1,
	preselect = 'enable',
	throttle_time = 80,
	source_timeout = 200,
	incomplete_delay = 400,
	max_abbr_width = 100,
	max_kind_width = 100,
	max_menu_width = 100,
	documentation = true,

	source = {
	    buffer = true,
	    nvim_lua = true,
	    path = false,
	    calc = false,
	    vsnip = false,
	    nvim_lsp = false,
	}
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

function C.sayonara()
	let('sayonara_confirm_quit', false)
end

function C.lualine()
	cmd ':hi! link DiffDelete WarningMsg'
	require 'lualine'.setup {
		options = {
			theme = theme_lualine,
			section_separators = {'', ''},
			component_separators = {'', ''},
			icons_enabled = true,
		},
		sections = {
			lualine_a = {'mode'},
			lualine_b = {'branch', {'diff'}},
			lualine_c = {},
			-- lualine_c = {{'filename', file_status=false}},
			-- lualine_x = {{'diagnostics', sources={'nvim_lsp'}}},
			lualine_x = {},
			lualine_y = {'filetype'},
			lualine_z = {'location'},
		},
		inactive_sections = {
			lualine_a = {},
			lualine_b = {},
			lualine_c = {},
			lualine_x = {'filetype', 'location'},
			lualine_y = {},
			lualine_z = {},
		}
	}
end

function C.nvimtree()
	let('nvim_tree_show_icons', {git = 1, folders = 1, files = 1})
end

function C.shade()
	require 'shade'.setup {
		overlay_opacity = 40,
	}
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

function C.navigator()
	require 'navigator'.setup()
end

for i, config in pairs(configs) do C[config]() end
