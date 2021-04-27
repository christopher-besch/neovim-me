map(_, '<Space>', '<Nop>')
let('mapleader', ' ')
let('maplocalleader', ' ')

cmd 'syntax on'
cmd 'filetype plugin on'


set 'number'
set 'noswapfile'
set 'cursorline'
set 'noshowmode'
set 'nospell'
set 'spelllang=en_us'
set 'nowrap'

set 'termguicolors'				-- Full Color Support
set 'smartindent'				-- Makes indenting smart
set 'hidden'					-- Required to keep multiple buffers open multiple buffers
set 'splitbelow'				-- Horizontal splits will automatically be below
set 'splitright'				-- Vertical splits will automatically be to the right
set 'nowritebackup'				-- Disable writebackup because some tools have issues with it
set 'ignorecase'				-- Ignore case when searching
set 'smartcase'					-- Don't ignore case if pattern has caps
set 'nocompatible'				-- Disable strange Vi defaults
set 'autoread'					-- Reload unchanged files automatically
set 'guicursor=a:hor25,v:block,i:ver25'		-- Changing cursor depending on mode

set 'encoding		=utf-8'			-- The encoding written to file (check encoding-names for more)
set 'fileencoding	=utf-8'			-- The encoding shown on screen (check encoding-names for more)
set 'scrolloff		=8'			-- Keep 8 lines above or below the cursor when scrolling
set 'pumheight		=10'			-- Makes popup menu smaller
set 'cmdheight		=2'			-- More space for displaying messages
set 'showtabline	=2'			-- Always show tabs
set 'laststatus		=2'			-- Always show status line
set 'mouse		=a'			-- Enable your mouse
set 'updatetime		=300'			-- Faster completion
set 'timeoutlen		=200'			-- By default timeoutlen is 1000 ms
set 'inccommand		=split'			-- Make substitution work in realtime
set 'clipboard		=unnamedplus'		-- Copy paste between vim and everything else
set 'whichwrap		+=<,>,[,],h,l'		-- move to next line with theses keys
set 'signcolumn		=yes'			-- Show the signcolumn
set 'sessionoptions	+=globals'		-- store global vars on session save
set 'shortmess		+=c'			-- Don't pass messages to |ins-completion-menu| (required by compe)
set 'completeopt	=menuone,noselect'	-- Set |ins-completion-menu| options (required by compe)

-- set 'ts             =4'			-- Insert 2 spaces for a tab
-- set 'sw             =4'			-- Change the number of space characters inserted for indentation

set 'nohlsearch'
set 'incsearch'

-- set 'nofoldenable'
-- set 'foldmethod		=syntax'
set 'foldmethod		=indent'
set 'foldnestmax	=2'
set 'foldminlines	=1'



-- set 'breakindent'
-- set 'relativenumber'
-- set 'title'
-- set 'titlestring	=filename nvim'
-- set 'titlestring	=%<%F%=%l/%L - nvim'
-- set 'complete	-=i'				-- Don't scan included files. The .tags file is more performant.
-- set 'completeopt=menuone,noselect'	--
-- set 'iskeyword	+='					-- set text object serparators'
-- set 'colorcolumn	=99999'				-- fix indentline for now
-- set 'conceallevel=0'					-- So that I can see `` in markdown files
-- set 't_Co		=256'				-- Support 256 colors
-- set 'expandtab'						-- Converts tabs to spaces
-- set 'keymodel	=startsel,stopsel'	-- enable shift + arrows selection
-- set 'mousemodel	=popup_setpos'
-- set 'mousemodel	=popup'
