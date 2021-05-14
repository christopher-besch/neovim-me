-- vim: nofoldenable

Plugins = {
    -- packers
	{'wbthomason/packer.nvim'},

	-- themes
    {'npxbr/gruvbox.nvim',                      requires = {'rktjmp/lush.nvim'}},
	{'ayu-theme/ayu-vim'},
	{'cocopon/iceberg.vim'},
    {'glepnir/zephyr-nvim'},

    -- done
	{'farmergreg/vim-lastplace'},
	{'sheerun/vim-polyglot'},
	{'karb94/neoscroll.nvim'},
    {'terrortylor/nvim-comment'},
	{'lewis6991/gitsigns.nvim',                 requires = {'nvim-lua/plenary.nvim'}},
	{'iamcco/markdown-preview.nvim',            config = "vim.call('mkdp#util#install')"},
	{'hoob3rt/lualine.nvim',                    requires = 'kyazdani42/nvim-web-devicons'},

	-- conf
    -- LSP for more language servers https://github.com/kabouzeid/nvim-lspinstall
    {'neovim/nvim-lspconfig'},
    {'kabouzeid/nvim-lspinstall'},
    {'hrsh7th/nvim-compe'},
    {'onsails/lspkind-nvim'},
    -- {'glepnir/lspsaga.nvim'},

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
    -- {'lukas-reineke/indent-blankline.nvim',     branch = 'lua'},                                                 -- render bug
    -- {'norcalli/nvim-colorizer.lua'},                                                                             -- render bug
    -- {'nvim-treesitter/nvim-treesitter',	        run = ':TSUpdate'},                                             -- no folding, syntax crash sometimes
}

let('livepreview_previewer', 'open -a zathura')

Keymaps = {
	'base',
	'packer',
	'quit',
	'nvimcomment',
    'tabs',
    -- 'bufferline',
	-- 'sayonara',
	-- 'nvimtree',
}
Configs = {
	'gitsigns',
	'nvimcomment',
	'neoscroll',
	'lualine',
	-- 'treesitter',
	-- 'buftabline',
    'lsp',
    'lspkind',
    'compe',
	-- 'blankline',
	-- 'sayonara',
	-- 'colorizer',
	-- 'bufferline',
	-- 'nvimtree',
	-- 'navigator',
}
Theme_curr = 1
Themes = {
    {'zephyr'},
    {'ayu',		'mirage'},
    {'ayu',		'dark'},
    {'ayu',		'light'},
    {'gruvbox',	'dark'},
    {'gruvbox',	'light'},
    {'iceberg',	'dark'},
    {'iceberg',	'light'},
}
Miscs = {
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
