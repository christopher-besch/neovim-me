-- map-modes
N = 'n'
V = 'v'
I = 'i'
X = 'x'
_ = ''

-- :
function cmd(prop) vim.cmd(prop) end

-- :set
function set(prop) vim.cmd('set '..prop) end

-- :setlocal
function setlocal(prop) vim.cmd('setlocal '..prop) end

-- :
function hi(prop) vim.cmd('hi '..prop) end

-- :cnoreabbrev
function abbrev(arg) vim.cmd('cnoreabbrev '..arg) end

-- :autocomd
function autocmd(cmd) vim.cmd('autocmd '..cmd) end


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
    local attrs = attrs or ''
    local nargs = nargs or 0
    vim.cmd('command'..attrs..' -nargs='..nargs..' '..cmd)
end

-- creates an auto group
function augroup(autocmd, name)
    name = name or 'end'
    vim.api.nvim_exec('augroup '..name..' \nautocmd!\n'..autocmd..'\naugroup end', false)
end
