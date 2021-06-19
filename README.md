<div align="center">
<h1 class="title" style="color: #8FFF6D;">◈  Neovim-Me ◈ </h1>
<h4> 100% LUA, 200% Modular </h4>

<a target="_blank" href="https://neovim.io"> ![Requires](https://img.shields.io/badge/requires-neovim%200.5%2B-green?style=flat-square&logo=neovim) </a>
<a href="#wip"> ![Status](https://img.shields.io/badge/status-WIP-informational?style=flat-square) </a>
</div>


## Aims to Have:
- #### Readability
	###### Everything has its obvious place

- #### Modularity
	###### Separation of concerns at its finest

- #### Low File Count
	###### No subdir hell

- #### Stability
	###### Sometimes modern featuers come with the cost of immaturity, That's where I draw the line


## Project Hierarchy
```python
.
├── init.lua				# entry point
│
└── lua
	├── utils.lua			# helper functions
	├── core.lua			# un/installs plugins, de/activates stuff
   	├── plugin_manager.lua		# inits a plugin manager
   	├── settings.lua		# all vim settings (mainly :set commands)
	│
   	├── themes.lua			# all colorschemes, variations, extra vars
	├── configs.lua			# all plugins configs
	├── lsp_installer.lua		# lsp unstable testing stuff (temporary)
	├── lsp.lua			# all lsp related setup
   	├── keymaps.lua			# all keymaps
   	└── misc.lua			# miscellaneous stuff
```


## Implementations

| Endpoint				| Description							|
| --------------------- | -------------------------------------	|
| `:ThemeSet n`			| Switches to the theme with index `n`	|
| `:ThemeCycle`			| Cycles between all themes				|
| `ThemeChangeBefore()` | Before theme change hook				|
| `ThemeChangeAfter()`	| After theme change hook				|
| `:LspStatus`			| Show LSP status (WIP)					|

## Notes
- `plugin_manager.lua` is setup with [packer](https://github.com/wbthomason/packer.nvim)
however with a bit of lua knowledge one can implement whatever plugin manager desired.

- `lsp.lua` is setup with
[nvim-lspconfig](https://github.com/neovim/nvim-lspconfig/blob/master/CONFIG.md) and
[nvim-lspinstall](https://github.com/kabouzeid/nvim-lspinstall#bundled-installers)
however with a bit of lua knowledge one can implement whatever lsp setup desired.

- somethings are implemented with `viml` in a `lua` api wrapper because not everything in neovim has been ported to lua yet.
