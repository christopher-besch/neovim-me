-- map-modes
N = 'n'
V = 'v'
I = 'i'
X = 'x'
_ = ''

-- :
function cmd(c) vim.cmd(c) end

-- :set
function set(prop) vim.cmd('set '..prop) end

-- :setlocal
function set_local(prop) vim.cmd('setlocal '..prop) end

-- :hi
function hi(args, mods)
	mods = mods or ''
	vim.cmd('hi'..mods..' '..args)
end

-- :call
function call(func_name, ...)
	local args = {}
	for i = 1, select('#', ...), 1 do
		local arg = select(i, ...)
		table.insert(args, arg)
	end
	return vim.api.nvim_call_function(func_name, args)
end

-- :cnoreabbrev
function abbrev(arg) vim.cmd('cnoreabbrev '..arg) end

-- :autocomd
function autocmd(cmd) vim.cmd('autocmd '..cmd) end

-- gets a color value from (group, id)
function get_col(group, id) return vim.fn.synIDattr(vim.fn.hlID(group), id) end

-- sets a global var
function let(k, v) vim.g[k] = v end

-- gets a global var
function get(k) return vim.g[k] end

-- maps a key
function map(mode, lhs, rhs, opts)
    opts = opts or { noremap = true, silent = true }
    vim.api.nvim_set_keymap(mode, lhs, rhs, opts)
end

-- maps a key with rhs expanded
function remap(mode, lhs, rhs, opts)
    opts = opts or { silent = true }
    vim.api.nvim_set_keymap(mode, lhs, rhs, opts)
end

-- creates a command
function command(cmd, nargs, attrs)
    attrs = attrs or ''
    nargs = nargs or 0
    vim.cmd('command'..attrs..' -nargs='..nargs..' '..cmd)
end

-- creates an auto group
function augroup(autocmd, name)
    name = name or 'end'
    vim.api.nvim_exec('augroup '..name..' \nautocmd!\n'..autocmd..'\naugroup end', false)
end

-- replace terminal codes in a vim map string
function term_codes(str)
	return vim.api.nvim_replace_termcodes(str, true, true, true)
end

function define_sign(name, text, hl)
	local def = {}
	if (text ~= nil) then def["text"] = text end
	if (hl ~= nil) then def["hl"] = hl end
	vim.fn.sign_define(name, def)
end

function seq(min, max, sep, step)
	step = step or 1
	local res = ""
	for i = min, max, step do
		res = res..i
		if (i ~= max) then res = res..sep end
	end
	return res
end

-- get cursor position
function get_pos() return call('getcurpos') end

-- set cursor position
function set_pos(pos) call('setpos', '.', pos) end

-- gets the current date/time according to pattern
function date(pattern)
	pattern = pattern or "%Y-%m-%d_%X"
	return os.date(pattern, os.time())
end

-- splits a string into a table
function split(str, sep)
	if sep == nil then sep = "%s" end
	local res = {}
	for s in string.gmatch(str, "([^"..sep.."]+)") do
		table.insert(res, s)
	end
	return res
end

-- inserts text at cursor position TODO: WIP
function insert_text(txt)
	-- vim.cmd('startinsert')
	-- vim.cmd('stopinsert')
	vim.cmd('normal a'..txt)
end

-- getters (WIP)
function get_curr_mode()
    local modes = { 110, "no", 118, 86, 22, "s", "S", "^S", 105, 99, "t" }
    local modes_names = { "Normal", "Pending Op", "Visual", "V-Line", "V-Block", "Select", "S-Line", "S-Block", "Insert", "Command", "Terminal" }

    local mode_curr = vim.fn.mode():byte()
    local selected_mode = "Unknown"

    for i, mode in pairs(modes) do
        if (mode == mode_curr) then selected_mode = modes_names[i] end
    end

    return selected_mode
end
