-- vim: nofoldenable

plugins = {
	{'wbthomason/packer.nvim'},
	{'ayu-theme/ayu-vim'},
	{'cocopon/iceberg.vim'},
	{'farmergreg/vim-lastplace'},
	{'sheerun/vim-polyglot'},
	{'karb94/neoscroll.nvim'},
	{'lewis6991/gitsigns.nvim',                 requires = {'nvim-lua/plenary.nvim'}},                          -- menu, keymaps
	{'terrortylor/nvim-comment'},                                                                               -- conf
	{'iamcco/markdown-preview.nvim',            config = "vim.call('mkdp#util#install')"},                      -- menu
	{'hoob3rt/lualine.nvim',                    requires = 'kyazdani42/nvim-web-devicons'},                     -- menu

	-- {"jose-elias-alvarez/buftabline.nvim",      requires = {'kyazdani42/nvim-web-devicons'}},                   -- conf, learn, keymaps
	
	{'hrsh7th/nvim-compe'},                                                                                     -- conf, learn
	-- {'kyazdani42/nvim-tree.lua',             requires = 'kyazdani42/nvim-web-devicons'},                     -- conf, learn

    -- {'akinsho/nvim-bufferline.lua',          requires = 'kyazdani42/nvim-web-devicons'},                     -- menu, help pages are hidden
	-- {'powerman/vim-plugin-AnsiEsc'},                                                                         -- learn
	-- {'jiangmiao/auto-pairs'}
	-- {'ms-jpq/chadtree',                      branch='chad',  run = ':CHADdeps'}
	-- {'tpope/vim-surround'}
	
	-- {'mhinz/vim-sayonara'},                                                                                  -- yeet with a homemade solution
	-- {'norcalli/nvim-colorizer.lua'},                                                                         -- render bug, menu
	-- {'lukas-reineke/indent-blankline.nvim',  branch = 'lua'},                                                -- render bug

    {'neovim/nvim-lspconfig'},                                                                                  -- conf
    {'glepnir/lspsaga.nvim'},                                                                                   -- conf
	-- {'nvim-treesitter/nvim-treesitter',	        run = ':TSUpdate'},                                             -- menu, conf folding
	-- {'ray-x/navigator.lua',                     requires = {'ray-x/guihua.lua', run = 'cd lua/fzy && make'}},   -- conf
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
