require("catppuccin").setup({
	flavour = "mocha", -- latte, frappe, macchiato, mocha
	background = { -- :h background
		light = "latte",
		dark = "mocha",
	},
	transparent_background = false,
	show_end_of_buffer = false, -- show the '~' characters after the end of buffers
	term_colors = false,
	dim_inactive = {
		enabled = false,
		shade = "dark",
		percentage = 0.15,
	},
	no_italic = false, -- Force no italic
	no_bold = false, -- Force no bold
	styles = {
		comments = { "italic" },
		conditionals = { "italic" },
	},
	color_overrides = {
		mocha = {
			base = "#1e1e1e",
			mantle = "#242424",
			crust = "#474747",
		},
	},
	integrations = {
		treesitter = true,
		telescope = true,
		nvimtree = true,
		cmp = true,
		gitsigns = true,
		mason = true,
		-- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
	},
})
vim.cmd.colorscheme("catppuccin")
