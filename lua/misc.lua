M = {}

function M.aliases()
    -- write as sudo
    abbrev 'w!! w !sudo tee > /dev/null %'

    -- new tab help page
    abbrev 'h tab help'

    -- edit config file
    -- abbrev 'conf tabnew $VIM_ROOT/init.vim'
end

function M.open_uri()
    function OpenURIUnderCursor()
		local function open_uri(uri)
			if type(uri) ~= 'nil' then
				uri = string.gsub(uri, "#", "\\#") --double escapes any # signs
				uri = '"'..uri..'"'
				cmd('!xdg-open '..uri..' > /dev/null')
				cmd('redraw!')
				-- print(uri)
				return true
			else
				return false
			end
		end

        local word_under_cursor = vim.fn.expand("<cWORD>")

        -- any uri with a protocol segment
		local regex_protocol_uri = "%a*:%/%/[%a%d%#%[%]%-%%+:;!$@/?&=_.,~*()]*"
		if (open_uri(string.match(word_under_cursor, regex_protocol_uri))) then return end

		-- plugin github url
		local regex_plugin_url = "[%a%d%-%.%_]*%/[%a%d%-%.%_]*"
		if (open_uri('https://github.com/'..string.match(word_under_cursor, regex_plugin_url))) then return end
    end
    command('OpenURIUnderCursor lua OpenURIUnderCursor()')
end

function M.color_col()
	local seq_str = seq(80, 999, ',', 1)
	augroup('autocmd FileType help,text,markdown,tex setlocal colorcolumn='..seq_str, 'color_col')
end

function M.auto_groups()
	augroup('autocmd FileType lspinfo setlocal nofoldenable', 'default')
	-- augroup('autocmd BufAdd,BufNewFile,BufRead * nested tab sball', 'default')
end

for _, misc in pairs(Miscs) do M[misc]() end
