-- import mason plugin safely
local mason = require("mason")
-- import mason-lspconfig plugin safely
local mason_lspconfig = require("mason-lspconfig")
--import null-ls
local mason_null_ls = require("mason-null-ls")
-- mason
mason.setup()
-- mason lsp
mason_lspconfig.setup({
	ensure_installed = {
		"lua_ls", -- lua
		"pyright", -- py
		"gopls", -- go
		"tsserver", --js,ts
		"html", -- html
		"tailwindcss", -- css
		"sqlls", -- sql
	},
})
-- mason null-ls (formater)
mason_null_ls.setup({
	ensure_installed = {
		-- Formatter
		"prettier", -- JavaScript TypeScript Flow JSX JSON CSS SCSS LESS HTML Vue Angular GraphQL Markdown YAML
		"stylua", -- lua
		"goimports", -- go
		"sql_formatter", -- py
		-- Linter
		"eslint_d", -- TypeScript JavaScript
	},
})
