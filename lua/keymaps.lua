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

	-- shift vertically
	map(N,	'<A-Down>',			':m .+1<CR>==')
	map(N,	'<A-Up>',			':m .-2<CR>==')
	map(I,	'<A-Down>',			'<Esc>:m .+1<CR>==gi')
	map(I,	'<A-Up>',			'<Esc>:m .-2<CR>==gi')
	map(V,	'<A-Down>',			":m '>+1<CR>gv=gv")
	map(V,	'<A-Up>',			":m '<-2<CR>gv=gv")

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
	map(N,	'gx',				':lua OpenURIUnderCursor()<CR>')			-- open uri under cursor
	map(N,	'Y',				'y$')										-- making Y act like C and D
	map(N, '<A-Tab>',			'<C-w>p')									-- switch between last 2 windows
	map(N, '<F2>',				'a<C-R>=strftime("%c")<CR><Esc>')			-- insert date
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

function K.quit()
	map(N, '<C-q>',			   	':q<CR>')
	map(I, '<C-q>',			   	'<ESC>:q<CR>')
	map(V, '<C-q>',			  	'<ESC>:q<CR>')
	map(N, '<S-q>',			  	':q!<CR>')
	map(I, '<S-q>',			  	'<ESC>:q!<CR>')
	map(V, '<S-q>',			  	'<ESC>:q!<CR>')
end

function K.sayonara()
	map(N, '<C-q>',				':Sayonara<CR>')
	map(I, '<C-q>',				'<ESC>:Sayonara<CR>')
	map(V, '<C-q>',				'<ESC>:Sayonara<CR>')
	map(N, '<S-q>',				':Sayonara!<CR>')
	map(I, '<S-q>',				'<ESC>:Sayonara!<CR>')
	map(V, '<S-q>',				'<ESC>:Sayonara!<CR>')
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

for i, keymap in pairs(keymaps) do K[keymap]() end
