T = {}

function T.material(var)
    -- let('material_disable_background', true)
    -- let('material_italic_comments', true)
    -- let('material_italic_keywords', true)
    -- let('material_italic_functions', true)
    let('material_contrast', true)
    let('material_style', var)
    cmd 'colo material'
end

function T.ayu(var)
	if (var == 'mirage') then
		vim.g.ayu_mirage = true
		set('background=dark')
	else
		vim.g.ayu_mirage = false
		set('background='..var)
	end
	cmd 'colo ayu'
end

function T.default()
	cmd 'colo default'
end

local function ThemeChangeBefore()
end

local function ThemeChangeAfter()
    -- hi 'VertSplit cterm=NONE ctermbg=NONE ctermfg=233 gui=NONE guibg=NONE guifg=233'
    -- hi 'EndOfBuffer ctermfg=black ctermbg=black'
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
