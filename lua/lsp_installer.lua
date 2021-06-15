-- this file serves as a place to mess with lspconfig & lspinstall with no strings attached

local lspconfig = require 'lspconfig'

-- emmet-ls installer
require 'lspinstall/servers'.emmet = {
	install_script = [[
	! test -f package.json && npm init -y --scope=lspinstall || true
	npm install emmet-ls
	]],
	default_config = {
		cmd = { "./node_modules/.bin/emmet-ls", "--stdio" },
		filetypes = { 'html', 'css' },
		root_dir = lspconfig.util.root_pattern(".git", vim.fn.getcwd()),
	}
}


-- local capabilities = vim.lsp.protocol.make_client_capabilities()
-- capabilities.textDocument.completion.completionItem.snippetSupport = true

-- if not lspconfig.emmet_ls then
--	require 'lspconfig/configs'.emmet_ls = {
-- 		default_config = {
-- 			cmd = {'emmet-ls', '--stdio'},
-- 			filetypes = {'html', 'css'},
-- 			root_dir = function(fname) return vim.loop.cwd() end,
-- 			settings = {},
-- 		},
-- 	}
-- end
-- lspconfig.emmet_ls.setup{ capabilities = capabilities }

-- -- 1. get the default config from nvim-lspconfig
-- local config = require"lspinstall/util".extract_config("bashls")
-- -- 2. update the cmd. relative paths are allowed, lspinstall automatically adjusts the cmd and cmd_cwd for us!
-- config.default_config.cmd[1] = "./node_modules/.bin/bash-language-server"
-- -- 3. extend the config with an install_script and (optionally) uninstall_script
-- require'lspinstall/servers'.bash = vim.tbl_extend('error', config, {
--   -- lspinstall will automatically create/delete the install directory for every server
--   install_script = [[
--   ! test -f package.json && npm init -y --scope=lspinstall || true
--   npm install bash-language-server@latest
--   ]],
--   uninstall_script = nil -- can be omitted
-- })
