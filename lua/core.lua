-- vim: nofoldenable

plugins = {
    -- done
	{'wbthomason/packer.nvim'},
	{'ayu-theme/ayu-vim'},
	{'cocopon/iceberg.vim'},
	{'farmergreg/vim-lastplace'},
	{'sheerun/vim-polyglot'},
	{'karb94/neoscroll.nvim'},

	-- menus, keymaps
	{'lewis6991/gitsigns.nvim',                 requires = {'nvim-lua/plenary.nvim'}},
	{'iamcco/markdown-preview.nvim',            config = "vim.call('mkdp#util#install')"},
	{'hoob3rt/lualine.nvim',                    requires = 'kyazdani42/nvim-web-devicons'},

	-- conf
    {'terrortylor/nvim-comment'},

    -- learn
    -- {"jose-elias-alvarez/buftabline.nvim",      requires = {'kyazdani42/nvim-web-devicons'}},
    -- {'kyazdani42/nvim-tree.lua',                requires = 'kyazdani42/nvim-web-devicons'},
    -- {'powerman/vim-plugin-AnsiEsc'},
    -- {'jiangmiao/auto-pairs'}
    -- {'ms-jpq/chadtree',                         branch='chad',  run = ':CHADdeps'}
    -- {'tpope/vim-surround'}
    -- {'ray-x/navigator.lua',                     requires = {'ray-x/guihua.lua', run = 'cd lua/fzy && make'}},
    -- {'mfussenegger/nvim-dap'},

	-- issues
    -- {'akinsho/nvim-bufferline.lua',             requires = 'kyazdani42/nvim-web-devicons'},                      -- hidden :h pages
    -- {'mhinz/vim-sayonara'},                                                                                      -- yeet with a homemade solution
    -- {'lukas-reineke/indent-blankline.nvim',      branch = 'lua'},                                                -- render bug
    -- {'norcalli/nvim-colorizer.lua'},                                                                             -- render bug
    -- {'nvim-treesitter/nvim-treesitter',	        run = ':TSUpdate'},                                             -- no folding, syntax crash sometimes

    -- testing
    {'neovim/nvim-lspconfig'},
    {'hrsh7th/nvim-compe'},
    -- {'glepnir/lspsaga.nvim'},

}
keymaps = {
	'base',
	'packer',
	'quit',
	'nvimcomment',
    'tabs',
    -- 'bufferline',
	-- 'sayonara',
	-- 'nvimtree',
}
configs = {
	'gitsigns',
	'nvimcomment',
	'neoscroll',
	'lualine',
	-- 'treesitter',
	-- 'buftabline',
	'compe',
	-- 'blankline',
	-- 'sayonara',
	-- 'colorizer',
	-- 'bufferline',
	-- 'nvimtree',
	-- 'navigator',
}
theme_curr = 1
themes = {
    {'ayu',		'dark'},
	{'ayu',		'mirage'},
    {'iceberg',	'dark'},
    {'ayu',		'light'},
	{'iceberg',	'light'},
}
miscs = {
	'aliases',
	-- 'edit_gz', --causing man pages to open with no color
	'open_uri',
}


-- empty preset
-- plugins = {
-- 	{'wbthomason/packer.nvim'},
-- }
-- keymaps = {
-- 	'base',
-- 	'tabs',
-- 	'quit',
-- }
-- configs = {
-- }
-- themes = {
--     {'ayu',		'dark'},
-- }
-- miscs = {
-- }
