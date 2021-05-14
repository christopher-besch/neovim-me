T = {}

local function ThemeChangeBefore()
end

local function ThemeChangeAfter()
    hi 'VertSplit cterm=NONE ctermbg=NONE ctermfg=233 gui=NONE guibg=NONE guifg=233'
end

function T.ayu(var)
	Theme_lualine = 'ayu_'..var
	let('ayucolor', var)
	cmd 'colo ayu'
end

function T.iceberg(var)
	Theme_lualine = 'iceberg_'..var
	set ('background='..var)
	cmd 'colo iceberg'
end

function T.gruvbox(var)
	Theme_lualine = 'gruvbox_'..var
	set ('background='..var)
	cmd 'colo gruvbox'
end

function T.zephyr()
	Theme_lualine = 'auto'
	cmd 'colo zephyr'
end

function ThemeSet(n)
	n = tonumber(n)
	local theme = Themes[n]
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
	Theme_curr = Theme_curr + 1
	if (Theme_curr > #Themes) then Theme_curr = 1 end
	if (Theme_curr < 1) then Theme_curr = #Themes end
	ThemeSet(Theme_curr)
end
command 'ThemeCycle lua ThemeCycle()'


ThemeSet(Theme_curr)
