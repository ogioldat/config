vim.g.mapleader = " "

-- nvim tree
vim.api.nvim_set_keymap("n", "<leader>d", ":NvimTreeToggle<cr>", {silent = true, noremap = true})
vim.api.nvim_set_keymap("n", "<leader>D", ":NvimTreeFocus<cr>", {silent = true, noremap = true})

-- native
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>F', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
vim.keymap.set('n', '<leader>sm', builtin.lsp_workspace_symbols, { desc = 'List LSP symbol' })
vim.keymap.set('n', '<leader>of', builtin.oldfiles, { desc = 'Search through old files' })

-- undotree
vim.keymap.set('n', '<leader>U', vim.cmd.UndotreeToggle)
