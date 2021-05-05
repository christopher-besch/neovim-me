<div align="center">
<h1> NeovimMe - 100% LUA & Modular </h1>

<a href="https://github.com/neovim/neovim"> ![Requires](https://img.shields.io/badge/requires-neovim%200.5%2B-green?style=flat-square&logo=neovim) </a>
<a href="#wip"> ![Status](https://img.shields.io/badge/status-WIP-informational?style=flat-square) </a>
</div>


# TL;DR Summary
```python
.
├── init.lua			# entry point
│
└── lua
    ├── utils.lua		# helper functions
    ├── core.lua		# un/installs plugins, de/activates stuff
    ├── plugin_manager.lua	# inits a plugin manager
    ├── settings.lua		# all vim settings (mainly :set commands)
    │
    ├── themes.lua		# all colorschemes, variations, extra vars
    ├── configs.lua		# all plugins configs
    ├── keymaps.lua		# all keymaps
    └── misc.lua		# miscellaneous stuff
```

# Notes
- `plugin_manager.lua` is setup with [packer](https://github.com/wbthomason/packer.nvim) by default, 
however with a bit of lua knowledge one can implement whatever plugin manager desired.

- `themes.lua` implements
	- `:ThemeSet n` switches to the theme with index `n`
	- `:ThemeCycle` cycles between all themes
	- `ThemeChangeBefore()` before theme change hook
	- `ThemeChangeAfter()` after theme change hook

# WIP
- this project is a work in progress which will keep evolving over time as more features are introduced.
- somethings are implemented with `viml` in a `lua` api wrapper because the neovim lua implementation is a WIP currently.
