vim.o.relativenumber = true
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true

local data_dir = vim.fn.stdpath('data')
if vim.fn.empty(vim.fn.glob(data_dir .. '/site/autoload/plug.vim')) == 1 then
  vim.cmd('silent !curl -fLo ' .. data_dir .. '/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim')
  vim.o.runtimepath = vim.o.runtimepath
  vim.cmd('autocmd VimEnter * PlugInstall --sync | source $MYVIMRC')
end

-- An example of vim-plug section --------------------------------------------
local vim = vim
local Plug = vim.fn['plug#']

vim.call('plug#begin')

Plug('nvim-lua/plenary.nvim')
Plug('nvim-tree/nvim-web-devicons')
Plug('nvim-telescope/telescope.nvim', { ['tag'] = '0.1.8' })
Plug('nvim-treesitter/nvim-treesitter', { ['do'] = ':TSUpdate'})
Plug('folke/tokyonight.nvim')
Plug('gelguy/wilder.nvim')
Plug('mbbill/undotree')
Plug('nvim-tree/nvim-tree.lua', { ['do'] = ':NvimTreeToggle' })
-- Plug 'folke/which-key.nvim', { 'keys': [ '<leader>', '<c-r>', '<c-w>', '`', 'c', 'v', 'g' ] }

vim.call('plug#end')

vim.cmd[[colorscheme tokyonight]]

require("nvim-tree").setup()
require('remap')


