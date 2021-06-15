-- Bootstrapping
local execute = vim.api.nvim_command
local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
IsPackerInit = false

if fn.empty(fn.glob(install_path)) > 0 then
	IsPackerInit = true
	fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
	execute 'packadd packer.nvim'
end

-- Settings
local packer = require('packer')
packer.init({
	compile_path = fn.stdpath("data")..'/plugin/packer_compiled.vim',
	-- opt_default = false,
	git = {
		clone_timeout = 100,
	},
})

-- Plugins
local use = packer.use
packer.reset()


for _, plugin in pairs(Plugins) do use(plugin) end

if (IsPackerInit) then execute 'PackerSync' end
