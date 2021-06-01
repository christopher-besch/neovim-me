-- vim: nofoldenable

Plugins = {
    -- packers
    {'wbthomason/packer.nvim'},

    -- themes
    -- for more colorschemes with treesitter suuport https://github.com/rockerBOO/awesome-neovim#colorscheme
    {'marko-cerovac/material.nvim'},
    {'folke/tokyonight.nvim'},


    -- done
    {'farmergreg/vim-lastplace'},
    {'karb94/neoscroll.nvim'},
    {'terrortylor/nvim-comment'},
    {'lewis6991/gitsigns.nvim',                 requires = {'nvim-lua/plenary.nvim'}},
    {'iamcco/markdown-preview.nvim',            config = "vim.call('mkdp#util#install')"},
    {'sheerun/vim-polyglot'},
    -- {'tpope/vim-fugitive'},
    -- {'hoob3rt/lualine.nvim',                    requires = 'kyazdani42/nvim-web-devicons'},
    {'famiu/feline.nvim',                       requires = 'kyazdani42/nvim-web-devicons'},
    {'norcalli/nvim-colorizer.lua'},                                                             -- render bug (fixable with buffer reload)

    -- conf
    -- LSP for more language servers https://github.com/kabouzeid/nvim-lspinstall
    {'neovim/nvim-lspconfig'},
    {'hrsh7th/nvim-compe'},
    -- {'kabouzeid/nvim-lspinstall'},
    -- {'glepnir/lspsaga.nvim'},

    -- learn
    -- {"jose-elias-alvarez/buftabline.nvim",      requires = {'kyazdani42/nvim-web-devicons'}},
    -- {'kyazdani42/nvim-tree.lua',                requires = 'kyazdani42/nvim-web-devicons'},
    -- {'powerman/vim-plugin-AnsiEsc'},
    -- {'jiangmiao/auto-pairs'}
    -- {'ms-jpq/chadtree',                         branch='chad',  run = ':CHADdeps'}
    -- {'tpope/vim-surround'}
    -- {'mfussenegger/nvim-dap'},

    -- issues
    -- {'akinsho/nvim-bufferline.lua',             requires = 'kyazdani42/nvim-web-devicons'},      -- hidden :h pages
    
    -- syntax
    -- {'nvim-treesitter/nvim-treesitter',	        run = ':TSUpdate'},                                 -- no folding, syntax crash sometimes
    {'~/temp/neorg'},
}

require 'neorg'.setup {
    load = {
        ["core.defaults"] = {},
        -- ["core.norg.concealer"] = {},
    }
}

Keymaps = {
    'base',
    'packer',
    'nvimcomment',
    'tabs',
    'shifting_colorizer',
    'neorg',
    -- 'shifting',
    -- 'bufferline',
    -- 'nvimtree',
}
Configs = {
    'gitsigns',
    'nvimcomment',
    'neoscroll',
    'feline',
    'colorizer',
    -- 'lualine',
    -- 'treesitter',
    -- 'buftabline',
    -- 'bufferline',
    -- 'nvimtree',
}
Theme_curr = 1
Themes = {
    {'material', 'palenight'},
    {'material', 'lighter'},
    {'material', 'darker'},
    {'material', 'oceanic'},
    {'material', 'deep ocean'},
    -- {'tokyonight', 'storm'},
    -- {'tokyonight', 'night'},
    -- {'tokyonight', 'day'},
}
Miscs = {
    'aliases',
    'open_uri',
    -- 'edit_gz', --causing man pages to open with no color
}


-- empty preset
-- Plugins = {{'wbthomason/packer.nvim'}},
-- Keymaps = {'base', 'tabs', 'quit'}
-- Configs = {}
-- Themes = {}
-- Miscs = {}
