map(_, '<Space>', '<Nop>')
let('mapleader', ' ')
let('maplocalleader', ' ')

cmd 'syntax on'					                -- Enable syntax highlighting
cmd 'filetype plugin indent on'			        -- Enable filetype detection, plugins, and indentation

set 'number'
set 'noswapfile'
set 'cursorline'
set 'noshowmode'
set 'nospell'
set 'spelllang=en_us'
set 'nowrap'
-- set 'hidden'                                 -- 
set 'termguicolors'                             -- Full Color Support
set 'splitbelow'                                -- Horizontal splits will automatically be below
set 'splitright'                                -- Vertical splits will automatically be to the right
set 'nowritebackup'                             -- Disable writebackup because some tools have issues with it
set 'ignorecase'                                -- Ignore case when searching
set 'smartcase'                                 -- Don't ignore case if pattern has caps
set 'nocompatible'                              -- Disable strange Vi defaults
set 'autoread'                                  -- Reload unchanged files automatically
set 'nohlsearch'                                -- Disable search highligh by default
set 'incsearch'                                 -- Update highlighted words while searching


set 'fillchars=fold:\\ ,eob:\\ '                -- filling chars for different places
set 'guicursor		=a:hor25,v:block,i:ver25'   -- Changing cursor depending on mode
set 'encoding		=utf-8'			            -- The encoding written to file (check encoding-names for more)
set 'fileencoding	=utf-8'			            -- The encoding shown on screen (check encoding-names for more)
set 'scrolloff		=8'			                -- Keep 8 lines above or below the cursor when scrolling
set 'pumheight		=10'			            -- Makes popup menu smaller
set 'cmdheight		=2'			                -- More space for displaying messages
set 'showtabline	=2'			                -- Always show tabs
set 'laststatus		=2'			                -- Always show status line
set 'mouse		=a'			                    -- Enable your mouse
set 'updatetime		=300'                       -- Faster completion
set 'timeoutlen		=200'                       -- By default timeoutlen is 1000 ms
set 'inccommand		=split'                     -- Preview substitution in realtime
set 'clipboard		=unnamedplus'               -- Copy paste between vim and everything else
set 'whichwrap		+=<,>,[,],h,l'              -- Move to next line with theses keys
set 'signcolumn		=yes'                       -- Show the signcolumn
set 'sessionoptions	+=globals'                  -- Store global vars on session save
set 'shortmess		+=c'                        -- Don't pass messages to |ins-completion-menu| (required by compe)
set 'completeopt	=menuone,noselect'          -- Set |ins-completion-menu| options (required by compe)
set 'backspace		=indent,eol,nostop'         -- Backspace like normal

-- set 'nofoldenable'
-- set 'foldmethod		=syntax'
set 'foldmethod		=indent'
-- set 'foldmethod		=expr'
-- set 'foldexpr=nvim_treesitter#foldexpr()'
set 'foldnestmax	=3'
set 'foldminlines	=1'

set 'shiftwidth		=4'
set 'tabstop        =4'
set 'softtabstop	=4'
set 'noexpandtab'
set 'copyindent'
set 'autoindent'
set 'smartindent'

-- set 'relativenumber'
-- set 'title'
-- set 'titlestring	=filename nvim'
-- set 'titlestring	=%<%F%=%l/%L - nvim'
-- set 'complete	-=i'			    -- Don't scan included files. The .tags file is more performant.
-- set 'iskeyword	+='			    -- set text object serparators'
-- set 'colorcolumn	=99999'			    -- fix indentline for now
-- set 'conceallevel=0'				    -- So that I can see `` in markdown files
-- set 't_Co		=256'			    -- Support 256 colors
-- set 'keymodel	=startsel,stopsel'	    -- enable shift + arrows selection
-- set 'mousemodel	=popup_setpos'
-- set 'mousemodel	=popup'


function meh()
    local a = 1
    local b = 1
    local c = 1
    local d = 1
    local e = 1
end
