require('global')

local data_dir = vim.fn.stdpath('data')
if vim.fn.empty(vim.fn.glob(data_dir .. '/site/autoload/plug.vim')) == 1 then
  vim.cmd('silent !curl -fLo ' .. data_dir .. '/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim')
  vim.o.runtimepath = vim.o.runtimepath
  vim.cmd('autocmd VimEnter * PlugInstall --sync | source $MYVIMRC')
end

vim.cmd('silent !defaults write Alacritty ApplePressAndHoldEnabled -bool false')

-- An example of vim-plug section --------------------------------------------
local vim = vim
local Plug = vim.fn['plug#']

vim.call('plug#begin')

Plug('nvim-lua/plenary.nvim')
Plug('nvim-tree/nvim-web-devicons')
Plug('nvim-telescope/telescope.nvim', { ['tag'] = '0.1.8' })
Plug('nvim-treesitter/nvim-treesitter', { ['do'] = ':TSUpdate'})
Plug('mbbill/undotree')
Plug('nvim-tree/nvim-tree.lua', { ['do'] = ':NvimTreeToggle' })
Plug('catppuccin/nvim')
Plug('christoomey/vim-tmux-navigator')
Plug('m4xshen/autoclose.nvim')
Plug('nvim-lualine/lualine.nvim')

-- lsp
Plug('neovim/nvim-lspconfig')
Plug('hrsh7th/nvim-cmp')
Plug('hrsh7th/cmp-nvim-lsp')
Plug('VonHeikemen/lsp-zero.nvim', { ['branch'] = 'v4.x'})
Plug('williamboman/mason-lspconfig.nvim')
Plug('williamboman/mason.nvim')

-- Plug 'folke/which-key.nvim', { 'keys': [ '<leader>', '<c-r>', '<c-w>', '`', 'c', 'v', 'g' ] }

vim.call('plug#end')

vim.cmd.colorscheme "catppuccin"


require("nvim-tree").setup()
require('remap')

