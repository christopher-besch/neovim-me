T = {}

local function ThemeChangeBefore()
end

local function ThemeChangeAfter()
    hi 'VertSplit cterm=NONE ctermbg=NONE ctermfg=233 gui=NONE guibg=NONE guifg=233'
end

function T.ayu(var)
	theme_lualine = 'ayu_'..var
	let('ayucolor', var)
	cmd 'colo ayu'
end

function T.iceberg(var)
	theme_lualine = 'iceberg_'..var
	set ('background='..var)
	cmd 'colo iceberg'
end

function ThemeSet(n)
	n = tonumber(n)
	local theme = themes[n]
	if (type(theme) == 'string') then
	    ThemeChangeBefore()
	    T[theme]()
	    ThemeChangeAfter()
	end
	if (type(theme) == 'table') then
	    ThemeChangeBefore()
	    T[theme[1]](theme[2])
	    ThemeChangeAfter()
	end
end
command('ThemeSet lua ThemeSet(<f-args>)', 1)

function ThemeCycle()
	theme_curr = theme_curr + 1
	if (theme_curr > #themes) then theme_curr = 1 end
	if (theme_curr < 1) then theme_curr = #themes end
	ThemeSet(theme_curr)
end
command 'ThemeCycle lua ThemeCycle()'


ThemeSet(theme_curr)
