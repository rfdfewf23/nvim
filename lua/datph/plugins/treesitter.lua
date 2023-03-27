-- make autopairs and completion work together
local treesitter = require("nvim-treesitter.configs")
treesitter.setup({
	-- enable syntax highlighting
	highlight = {
		enable = true,
	},
	-- enable indentation
	indent = { enable = true },
	-- enable autotagging (w/ nvim-ts-autotag plugin)
	autotag = { enable = true },
	ensure_installed = {
		"python",
		"lua",
		"javascript",
		"typescript",
		"html",
		"css",
		"go",
		"markdown",
		"markdown_inline",
		"graphql",
		"bash",
		"gitignore",
		"dockerfile",
		"json",
	},
	auto_install = true,
})
