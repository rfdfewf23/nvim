vim.g.mapleader = " "

local keymap = vim.keymap.set -- for conciseness

-- general keymaps
keymap("n", "<C-RIGHT>", "<C-w>v") -- split window vertically
keymap("n", "<C-DOWN>", "<C-w>s") -- split window horizontally
keymap("n", "<leader>se", "<C-w>=") -- split windows equal width and height
keymap("n", "<leader>sx", "<cmd>close<CR>") -- close current split window

keymap("n", "<leader>to", "<cmd>tabnew<CR>") --open new tab
keymap("n", "<leader>tx", "<cmd>tabclose<CR>") -- close current tap
keymap("n", "<leader>tn", "<cmd>tabn<CR>") -- go to next tab
keymap("n", "<leader>tp", "<cmd>tabp<CR>") -- go to previous tab

keymap("n", "<C-w>", "<cmd>q<CR>") -- close current tab
keymap("n", "<C-s>", "<cmd>:w<CR>") -- save files

-- plugin keymaps
keymap("n", "<C-e>", "<cmd>NvimTreeToggle<CR>") --nvim-tree
keymap("n", "<leader>sm", "<cmd>MaximizerToggle<CR>") -- vim-maximize

-- telescope
keymap("n", "tfg", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
keymap("n", "tff", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
keymap("n", "tfs", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type

-- lspsaga
keymap("n", "<C-r>", "<cmd>Lspsaga rename<CR>") -- Rename all occurrences of the hovered word for the entire file, r stand for rename
keymap("n", "gt", "<cmd>Lspsaga peek_type_definition<CR>") -- Go to type definition
keymap("n", "<C-f>", "<cmd>Lspsaga lsp_finder<CR>") -- Find the symbol's definition, f stand for find
keymap("n", "<C-a>", "<cmd>Lspsaga show_buf_diagnostics<CR>") -- show error, a stand for action
keymap("n", "<C-o>", "<cmd>Lspsaga outline<CR>") -- show outline
keymap("n", "<C-d>", "<cmd>Lspsaga hover_doc ++quiet<CR>") -- show definition with more clear, d stand for definition
keymap("n", "D", "<cmd>Lspsaga peek_definition<CR>") -- Go to definition (their document), d stand for definition

-- gitsigns
keymap("n", "<C-p>", "<cmd>Gitsigns preview_hunk<CR>")
keymap("n", "P", "<cmd>Gitsigns diffthis<CR>")
keymap("n", "<C-z>", "<cmd>Gitsigns reset_hunk<CR>")

-- commend
-- Ctrl + / : line comment
-- Shift + /: Block comment
