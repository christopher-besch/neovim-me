-- vim: nofoldenable

plugins = {
	{'wbthomason/packer.nvim'},
	{'ayu-theme/ayu-vim'},
	{'cocopon/iceberg.vim'},
	{'karb94/neoscroll.nvim'},																		--learn
	{'lewis6991/gitsigns.nvim',				requires = {'nvim-lua/plenary.nvim'}},					--menu & keymaps
	{'farmergreg/vim-lastplace'},																	--noconf
	{'terrortylor/nvim-comment'},																	--learn
	{'iamcco/markdown-preview.nvim',		config = "vim.call('mkdp#util#install')"},				--menu & learn
	{'hoob3rt/lualine.nvim',				requires = 'kyazdani42/nvim-web-devicons'},				--menu

	-- {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}										--conf
	-- {'hrsh7th/nvim-compe'},																		--conf & learn
	-- {'kyazdani42/nvim-tree.lua',			requires = 'kyazdani42/nvim-web-devicons'},				--conf & learn

	-- {'powerman/vim-plugin-AnsiEsc'},																--learn
	-- {'jiangmiao/auto-pairs'} 																	--learn
	-- {'ms-jpq/chadtree', branch='chad', run = ':CHADdeps'}
	-- {'tpope/vim-surround'}
	
	-- {'mhinz/vim-sayonara'},																		--yeet with a homemade solution
	-- {'akinsho/nvim-bufferline.lua',			requires = 'kyazdani42/nvim-web-devicons'},			--help pages are hidden & menu
	-- {'norcalli/nvim-colorizer.lua'},																--render bug, menu
	-- {'lukas-reineke/indent-blankline.nvim',	branch = 'lua'},									--render bug
	-- {'sunjon/shade.nvim'},																		--render bug https://github.com/sunjon/Shade.nvim/issues/6
}
keymaps = {
	'base',
	'packer',
	'tabs',
	'quit',
	'nvimcomment',
	-- 'sayonara',
	-- 'nvimtree',
	-- 'bufferline',
}
configs = {
	'gitsigns',
	'nvimcomment',
	'neoscroll',
	'lualine',
	-- 'compe',
	-- 'blankline',
	-- 'sayonara',
	-- 'colorizer',
	-- 'bufferline',
	-- 'nvimtree',
	-- 'shade',
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
	'abbrevs',
	'edit_gz',
	'open_uri',
}

-- testing preset
-- plugins = {
-- 	{'wbthomason/packer.nvim'},
-- 	{'ayu-theme/ayu-vim'},
-- 	{'cocopon/iceberg.vim'},
-- }
-- keymaps = {
-- 	'base',
-- 	'packer',
-- 	'themes',
-- 	'tabs',
-- 	'quit',
-- }
-- configs = {
-- }
