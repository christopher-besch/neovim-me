-- vim: nofoldenable

Plugins = {
	-- packers
	{'wbthomason/packer.nvim'},

	-- themes
	-- for more colorschemes with treesitter suuport https://github.com/rockerBOO/awesome-neovim#colorscheme
	{'marko-cerovac/material.nvim'},
	{'shatur/neovim-ayu'},

	-- done
	{'farmergreg/vim-lastplace'},
	{'karb94/neoscroll.nvim'},
	{'terrortylor/nvim-comment'},
	{'lewis6991/gitsigns.nvim',					requires = {'nvim-lua/plenary.nvim'}},
	{'iamcco/markdown-preview.nvim',			config = "vim.call('mkdp#util#install')"},
	{'sheerun/vim-polyglot'},
	-- {'hoob3rt/lualine.nvim',					requires = 'kyazdani42/nvim-web-devicons'},
	{'famiu/feline.nvim',						requires = 'kyazdani42/nvim-web-devicons'},
	{'norcalli/nvim-colorizer.lua'},																-- render bug (fixable with buffer reload)

	-- conf
	{'hrsh7th/nvim-compe'},
	{'sbdchd/neoformat'},
	{'nvim-telescope/telescope.nvim',			requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}, {'nvim-telescope/telescope-media-files.nvim'}}},

	{'neovim/nvim-lspconfig'},
	{'kabouzeid/nvim-lspinstall'},
	{'L3MON4D3/LuaSnip'},
	{'skywind3000/vim-quickui'},
	-- {'hrsh7th/vim-vsnip'},
	-- {'jose-elias-alvarez/null-ls.nvim'},

	-- learn
	-- {"jose-elias-alvarez/buftabline.nvim",	   requires = {'kyazdani41/nvim-web-devicons'}},
	-- {'kyazdani42/nvim-tree.lua',				   requires = 'kyazdani42/nvim-web-devicons'},
	-- {'powerman/vim-plugin-AnsiEsc'},
	-- {'ms-jpq/chadtree',						   branch='chad',  run = ':CHADdeps'}
	-- {'tpope/vim-surround'},
	-- {'mfussenegger/nvim-dap'},

	-- issues
	-- {'akinsho/nvim-bufferline.lua',			   requires = 'kyazdani42/nvim-web-devicons'},		-- hidden :h pages
	-- {'ray-x/lsp_signature.nvim'},																-- isn't really needed since lsp supports hover calls
	-- {'nvim-treesitter/nvim-treesitter',			run = ':TSUpdate'},									-- no folding, syntax crash sometimes
	-- {'Xuyuanp/scrollbar.nvim'},																	-- requires proper tab closing

	-- {'~/temp/neorg'},
}

Keymaps = {
	'base',
	'quit',
	'packer',
	'nvimcomment',
	'tabs',
	'shifting_colorizer',
	'neorg',
	'neoformat',
	'telescope',
	'compe',
	-- 'treesitter',
	'quickui',
	-- 'lsp',
	-- 'shifting',
	-- 'bufferline',
	-- 'nvimtree',
}
Configs = {
	'gitsigns',
	'nvimcomment',
	'neoscroll',
	'telescope',
	'compe',
	'feline',
	'colorizer',
	'quickui',
	-- 'scrollbar',
	-- 'neorg',
	-- 'lualine',
	-- 'treesitter',
	-- 'buftabline',
	-- 'bufferline',
	-- 'nvimtree',
}
Theme_curr = 1
Themes = {
	{'material',	'darker'},
	{'ayu',			'dark'},
	{'ayu',			'mirage'},
	{'material',	'palenight'},
	-- {'material',	'lighter'},
	{'material',	'oceanic'},
	{'material',	'deep ocean'},
	-- {'ayu',			'light'},
}
Miscs = {
	'aliases',
	'open_uri',
	-- 'color_col',
	'auto_groups',
}


-- empty preset
-- Plugins = {{'wbthomason/packer.nvim'}}
-- Keymaps = {'base'}
-- Configs = {}
-- Themes = {}
-- Miscs = {}
