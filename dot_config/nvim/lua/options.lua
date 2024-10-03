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
vim.keymap.set("n", "<leader>u", ":UndotreeToggle<cr>:UndotreeFocus<cr>",
  { silent = true, noremap = true })

local opts = { silent = true, noremap = true }
-- tabs
-- Move to previous/next
vim.keymap.set('n', '<A-,>', '<Cmd>BufferPrevious<CR>', opts)
vim.keymap.set('n', '<A-.>', '<Cmd>BufferNext<CR>', opts)
-- Re-order to previous/next
vim.keymap.set('n', '<A-<>', '<Cmd>BufferMovePrevious<CR>', opts)
vim.keymap.set('n', '<A->>', '<Cmd>BufferMoveNext<CR>', opts)
-- Goto buffer in position...
vim.keymap.set('n', '<A-1>', '<Cmd>BufferGoto 1<CR>', opts)
vim.keymap.set('n', '<A-2>', '<Cmd>BufferGoto 2<CR>', opts)
vim.keymap.set('n', '<A-3>', '<Cmd>BufferGoto 3<CR>', opts)
vim.keymap.set('n', '<A-4>', '<Cmd>BufferGoto 4<CR>', opts)
vim.keymap.set('n', '<A-5>', '<Cmd>BufferGoto 5<CR>', opts)
vim.keymap.set('n', '<A-6>', '<Cmd>BufferGoto 6<CR>', opts)
vim.keymap.set('n', '<A-7>', '<Cmd>BufferGoto 7<CR>', opts)
vim.keymap.set('n', '<A-8>', '<Cmd>BufferGoto 8<CR>', opts)
vim.keymap.set('n', '<A-9>', '<Cmd>BufferGoto 9<CR>', opts)
vim.keymap.set('n', '<A-0>', '<Cmd>BufferLast<CR>', opts)
-- Pin/unpin buffer
vim.keymap.set('n', '<A-p>', '<Cmd>BufferPin<CR>', opts)
vim.keymap.set('n', '<A-P>', '<Cmd>BufferPin<CR>', opts)
vim.keymap.set('n', '<A-x>', '<Cmd>BufferClose<CR>', opts)
