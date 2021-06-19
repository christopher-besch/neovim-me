<style>
:root { --acc: #8FFF6D; --info: #007EC6; }
.header { text-align: center; }
.title { color: var(--acc); }
.list li { list-style: none; }
.list li span { font-size: 24px; }
.list li p { font-size: 16px; color: var(--info) }
</style>

<div class="header">
<h1 class="title"> Neovim-Me </h1>
<h5> 100% LUA, 200% Modular </h5>

<a target="_blank" href="https://neovim.io"> ![Requires](https://img.shields.io/badge/requires-neovim%200.5%2B-green?style=flat-square&logo=neovim) </a>
<a href="#wip"> ![Status](https://img.shields.io/badge/status-WIP-informational?style=flat-square) </a>
</div>

<!-- ## TL;DR Summary -->
## Aims to Be:

<ul class="list">
	<li> <span>Readable<span> <p>Everything has its obvious place<p> </li>
	<li> <span>Modular<span> <p>Separation of concerns at its finest<p> </li>
	<li> <span>Low in file count<span> <p>No subdir hell<p> </li>
	<li> <span>Bleeding edge but Stable<span> <p>Sometimes modern featuers come with the cost of immaturity, That's where I draw the line.<p> </li>
</ul>

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
