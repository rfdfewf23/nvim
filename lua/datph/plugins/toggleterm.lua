local toggleterm = require("toggleterm")

toggleterm.setup({
	open_mapping = [[<c-t>]],
	direction = "horizontal",
	size = 12,
	hide_numbers = true,
	autochdir = true,
	shading_factor = "-5",
})

local Terminal = require("toggleterm.terminal").Terminal
local lazygit = Terminal:new({
	cmd = "lazygit",
	dir = "git_dir",
	direction = "float",
	float_opts = {
		border = "double",
	},
	-- function to run on opening the terminal
	on_open = function(term)
		vim.cmd("startinsert!")
		vim.api.nvim_buf_set_keymap(term.bufnr, "n", "q", "<cmd>close<CR>", { noremap = true, silent = true })
	end,
	-- function to run on closing the terminal
	on_close = function(term)
		vim.cmd("startinsert!")
	end,
})

function _lazygit_toggle()
	lazygit:toggle()
end

vim.api.nvim_set_keymap("n", "<C-g>", "<cmd>lua _lazygit_toggle()<CR>", { noremap = true, silent = true })
