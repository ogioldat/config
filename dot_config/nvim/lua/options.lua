vim.o.relativenumber = true
vim.o.shiftwidth = 2
vim.o.autoindent = true
vim.o.termguicolors = true

vim.opt.incsearch = true
vim.opt.laststatus = 3

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.g.mapleader = " "

-- nvim tree
vim.api.nvim_set_keymap("n", "<leader>d", ":NvimTreeToggle<cr>", { silent = true, noremap = true })
vim.api.nvim_set_keymap("n", "<leader>D", ":NvimTreeFocus<cr>", { silent = true, noremap = true })

-- native
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<C-`>", vim.cmd.Ex)
-- vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- undotree
vim.keymap.set("n", "<leader>U", vim.cmd.UndotreeToggle)


