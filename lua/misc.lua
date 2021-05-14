M = {}

function M.aliases()
	-- write as sudo
	abbrev 'w!! w !sudo tee > /dev/null %'

	-- new tab help page
	-- abbrev 'h tab help'

	-- edit config file
	-- abbrev 'conf tabnew $VIM_ROOT/init.vim'
end

function M.edit_gz()
	-- edit compressed .gz files
	augroup [[
		autocmd BufReadPre,FileReadPre		*.gz set bin
		autocmd BufReadPost,FileReadPost	*.gz '[,']!gunzip
		autocmd BufReadPost,FileReadPost	*.gz set nobin
		autocmd BufReadPost,FileReadPost	*.gz execute ":doautocmd BufReadPost " . expand("%:r")
		autocmd BufWritePost,FileWritePost	*.gz !mv <afile> <afile>:r
		autocmd BufWritePost,FileWritePost	*.gz !gzip <afile>:r
		
		autocmd FileAppendPre				*.gz !gunzip <afile>
		autocmd FileAppendPre				*.gz !mv <afile>:r <afile>
		autocmd FileAppendPost				*.gz !mv <afile> <afile>:r
		autocmd FileAppendPost				*.gz !gzip <afile>:r
	]]
end

function M.open_uri()
	function OpenURIUnderCursor()
		local regex = "%a*:%/%/[%a%d%#%[%]%-%%+:;!$@/?&=_.,~*()]*"
		local word_under_cursor = vim.fn.expand("<cWORD>")
		local uri = string.match(word_under_cursor, regex)
		
		if type(uri) ~= 'nil' then
			uri = string.gsub(uri, "#", "\\#") --double escapes any # signs
			uri = '"'..uri..'"'
			cmd('!xdg-open '..uri..' > /dev/null')
			cmd('redraw!')
			-- print(uri)
		end
	end
	command('OpenURIUnderCursor lua OpenURIUnderCursor()')
end

for _, misc in pairs(Miscs) do M[misc]() end
