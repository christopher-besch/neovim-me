<div style="text-align:center">
<h1> NeovimMe </h1>
<h3> A modular 100% LUA Neovim setup </h3>
</div>


### TL;DR Summary
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

---
### Notes
- `plugin_manager.lua` is setup with [packer](https://github.com/wbthomason/packer.nvim) by default,
however with a bit of lua knowledge one can implement whatever plugin manager desired.

- `themes.lua` implements
	- `:ThemeSet n` switches to the theme with index `n`
	- `:ThemeCycle` cycles between all themes

### WIP
this project is a wip which will keep evolving over time as more features are introduced.
