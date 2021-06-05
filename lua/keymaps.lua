local K = {}

function K.packer()
	map(N, '<leader>p',			':PackerSync<CR>')
end

function K.themes()
end

function K.nvimcomment()
	map(N, '<leader>c',			':CommentToggle<CR>')
	map(V, '<leader>c',			':CommentToggle<CR>')
end

function K.base()
    -- quit
	map(N, '<C-q>',			   	':q<CR>')
	map(N, '<S-q>',			  	':q!<CR>')

	-- write
	map(N,	'<C-s>',			':w<CR>')
	map(I,	'<C-s>',			'<ESC>:w<CR>')
	map(V,	'<C-s>',			'<ESC>:w<CR>')

	-- toggle modes insert mode
	map(N,	'<Insert>',			':startinsert<CR>')
	map(I,	'<Insert>',			'<C-o>:stopinsert<CR>')

	-- select all
	map(N,	'<leader>a',		'ggVG<CR>')

	-- undo
	map(N,	'<C-z>',			':undo<CR>')
	map(I,	'<C-z>',			'<ESC>:undo<CR>')
	map(V,	'<C-z>',			'<ESC>:undo<CR>')

	-- scroll vertically
	-- remap(N, '<S-Down>',	'<C-e>')
	-- remap(N, '<S-Up>',		'<C-y>')
	remap(N,'<S-Down>',			'<C-d>')
	remap(N,'<S-Up>',			'<C-u>')
	remap(N,'z<Down>',			'zb')
	remap(N,'z<Up>',			'zt')

	-- page shifting
	map(N,	'<C-Up>',			'<C-y>k')
	map(N,	'<C-Down>',			'<C-e>j')

	-- indent horizontally
	map(N,	'<Tab>',			'>>_')
	map(N,	'<S-Tab>',			'<<_')
	map(V,	'<Tab>',			'>gv')
	map(V,	'<S-Tab>',			'<gv')

	--misc
	map(N,	'<leader>h',		':set invhlsearch<CR>')						-- toggle search higlight
	map(N,	'<leader>s',		':set invspell<CR>')						-- toggle spell check
	map(N,	'<leader>n',		':set invrelativenumber<CR>')				-- toggle relative numbers
	map(N,	'<leader>t',		':ThemeCycle<CR>')							-- cycle between installed themes
	map(N,  'gx',				':lua OpenURIUnderCursor()<CR>')			-- open uri under cursor
	map(N,  '<A-Tab>',			'<C-w>p')									-- switch between last 2 windows
	map(N,  '<F2>',				'a<C-R>=strftime("%c")<CR><Esc>')			-- insert date
    map(N,	'Y',				'y$')										-- making Y act like C and D
    map(N,  'J',                'J$')                                       -- go to end after a join
	map(N,  'S',                'T hr<CR>k$')                               -- split (opposite of J)

	-- map(N, '<F5>', '') 													-- refresh
end

function K.tabs()
	-- tabs actions
	map(N, '<C-t>',				':tabnew<CR>')
	map(N, '<A-Right>',			':tabnext<CR>')
	map(N, '<A-Left>',			':tabprevious<CR>')

	-- tab switching with alt + {1-9}
	for n = 1, 9 do
		map(N, '<A-'..n..'>', n..'gt')
	end
end

function K.shifting()
	map(N,	'<A-Down>',			':m .+1<CR>==')
	map(N,	'<A-Up>',			':m .-2<CR>==')
	map(I,	'<A-Down>',			'<Esc>:m .+1<CR>==gi')
	map(I,	'<A-Up>',			'<Esc>:m .-2<CR>==gi')
	map(V,	'<A-Down>',			":m '>+1<CR>gv=gv")
	map(V,	'<A-Up>',			":m '<-2<CR>gv=gv")
end

function K.shifting_colorizer()
    local postfix = ':ColorizerReloadAllBuffers<CR>'
    -- local postfix = ''
	map(N,	'<A-Down>',			':m .+1<CR>=='..postfix)
	map(N,	'<A-Up>',			':m .-2<CR>=='..postfix)
	map(I,	'<A-Down>',			'<Esc>:m .+1<CR>'..postfix..'==gi')
	map(I,	'<A-Up>',			'<Esc>:m .-2<CR>'..postfix..'==gi')
    map(V,	'<A-Down>',			":m '>+1<CR>"..postfix.."gv=gv")
    map(V,	'<A-Up>',			":m '<-2<CR>"..postfix.."gv=gv")
end

function K.bufferline()
	-- tabs actions
	map(N, '<C-t>',				':tabnew<CR>')
	map(N, '<A-Right>',			':BufferLineCycleNext<CR>')
	map(N, '<A-Left>',			':BufferLineCyclePrev<CR>')
	map(N, '<S-Right>',			':BufferLineK.veNext<CR>')
	map(N, '<S-Left>',			':BufferLineK.vePrev<CR>')

	-- tab switching with alt + {1-9}
	for n = 1, 9 do
		map(N, '<A-'..n..'>', ':lua require"bufferline".go_to_buffer('..n..')<CR>')
	end
end

function K.nvimtree()
	map(N, '<C-e>',				':NvimTreeToggle<CR>')
	map(N, '<C-f>',				':NvimTreeFindFile<CR>')
	-- map(N, '<leader>r',			':NvimTreeRefresh<CR>')
end

function K.neorg()
    map(N, '<leader>d',			':Neorg keybind core.norg.qol.todo_items.todo.task_cycle<CR>')
end

function K.lsp()
    map(N, 'gD',                '<Cmd>lua vim.lsp.buf.declaration()<CR>')
    map(N, 'gd',                '<Cmd>lua vim.lsp.buf.definition()<CR>')
    map(N, 'K',                 '<Cmd>lua vim.lsp.buf.hover()<CR>')
    map(N, 'gi',                '<cmd>lua vim.lsp.buf.implementation()<CR>')
    map(N, '<C-k>',             '<cmd>lua vim.lsp.buf.signature_help()<CR>')
    map(N, '<leader>wa',        '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>')
    map(N, '<leader>wr',        '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>')
    map(N, '<leader>wl',        '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>')
    map(N, '<leader>D',         '<cmd>lua vim.lsp.buf.type_definition()<CR>')
    map(N, '<leader>rn',        '<cmd>lua vim.lsp.buf.rename()<CR>')
    map(N, '<leader>ca',        '<cmd>lua vim.lsp.buf.code_action()<CR>')
    map(N, 'gr',                '<cmd>lua vim.lsp.buf.references()<CR>')
    map(N, '<leader>e',         '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>')
    map(N, '[d',                '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>')
    map(N, ']d',                '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>')
    map(N, '<leader>q',         '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>')
    map(N, "<leader>f",         "<cmd>lua vim.lsp.buf.formatting()<CR>")
end


for _, keymap in pairs(Keymaps) do K[keymap]() end
