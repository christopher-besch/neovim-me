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
