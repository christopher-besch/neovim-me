local lspconfig = require 'lspconfig'
local lspinstall = require'lspinstall'
-- local lsp_signature = require 'lsp_signature'
lspinstall.setup()

-- lookup server names https://github.com/kabouzeid/nvim-lspinstall#bundled-installers
-- lookup server configs https://github.com/neovim/nvim-lspconfig/blob/master/CONFIG.md
local installed_servers = lspinstall.installed_servers()
local configured_servers = {
	lua = {
		settings = {
			Lua = {
				-- runtime = {
				--	version = 'LuaJIT',
				--	path = vim.split(package.path, ';'),
				-- },
				diagnostics = {
					disable = { 'lowercase-global' },
					globals = { 'vim' },
				},
				workspace = {
					library = {
						[vim.fn.expand('$VIMRUNTIME/lua')] = true,
						[vim.fn.expand('$VIMRUNTIME/lua/vim/lsp')] = true,
					},
				},
				telemetry = { enable = false },
			},
		},
	},
}


-- registering installed servers
for _, server in pairs(installed_servers) do
	local server_args = configured_servers[server] or {}
	lspconfig[server].setup(server_args)
end

-- functions signature hint
-- lsp_signature.on_attach {
--	doc_lines = 10,
--	bind = true,
--	handler_opts = { border = "single" },
--	floating_window = false,
--	hint_enable = true,
--	hint_prefix = "- ",
--	hi_parameter = "WarningMsg",
--	extra_trigger_chars = {" ", "\t"},
--	max_height = 12,
--	max_width = 120,
-- }

-- lsp icons
define_sign("LspDiagnosticsSignError",		'')
define_sign("LspDiagnosticsSignWarning",	'')
define_sign("LspDiagnosticsSignInformation",'')
define_sign("LspDiagnosticsSignHint",		'')
-- define_sign('LspDiagnosticsSignError',		'')
-- define_sign("LspDiagnosticsSignWarning",	'')
-- define_sign("LspDiagnosticsSignInformation",'')
-- define_sign("LspDiagnosticsSignHint",		'')

-- codicon
vim.lsp.protocol.CompletionItemKind = { " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", }

-- vim.lsp.protocol.CompletionItemKind = {
-- 	"  Text",
-- 	"  Method",
-- 	"  Function",
-- 	"  Constructor",
-- 	"  Field",
-- 	"  Variable",
-- 	"  Class",
-- 	"  Interface",
-- 	"  Module",
-- 	"  Property",
-- 	"  Unit",
-- 	"  Value",
-- 	"  Enum",
-- 	"  Keyword",
-- 	"  Snippet",
-- 	"  Color",
-- 	"  File",
-- 	"  Reference",
-- 	"  Folder",
-- 	"  EnumMember",
-- 	"  Constant",
-- 	"  Struct",
-- 	"  Event",
-- 	"  Operator",
-- 	"  TypeParameter",
-- }
-- nerd fonts
-- vim.lsp.protocol.CompletionItemKind = { "	Text", "	Method", "	Func", "	Constructor", "ﴲ	Field", "	Var", "	Class", "ﰮ	Interface", "	Module", "襁 Prop", "	Unit", "	Value", "	Enum", "	Key", "	Snip", "	Color", "	File", "	Ref", "	Dir", "	Enum Member", "	Const", "ﳤ	Struct", "	Event", "	Op", "	Type Param" }

-- lsp status display TODO: optimize
function LspStatus()
	local all_servers = {}

	for name, _ in pairs(configured_servers) do all_servers[name] = {} end
	for _, name in pairs(installed_servers) do all_servers[name] = {} end
	for name, _ in pairs(all_servers) do all_servers[name] = { installed = false, configured = false } end

	for _, name in pairs(installed_servers) do all_servers[name].installed = true end
	for name, _ in pairs(configured_servers) do all_servers[name].configured = true end

	for name, data in pairs(all_servers) do print(name, '	 ', data.configured, data.installed) end
end
command 'LspStatus lua LspStatus()'

-- diagnostics configuration
local diag_cfg = {
	update_in_insert = true,
	underline = false,
	signs = true,
	virtual_text = {
		spacing = 4,
		prefix = '●',
	}
}

local diag_handler_default = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, diag_cfg)
-- local diag_handler_null = function() end
local diag_handler_active = diag_handler_default
function update_diag_handler() vim.lsp.handlers['textDocument/publishDiagnostics'] = diag_handler_active end
update_diag_handler()
