return {
  {
    "nvim-lua/plenary.nvim",
  },
  {
    "nvim-tree/nvim-web-devicons",
    opts = {},
  },
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = function()
      -- telescope
      local builtin = require "telescope.builtin"
      vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
      vim.keymap.set("n", "<leader>F", builtin.live_grep, { desc = "Telescope live grep" })
      vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
      vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
      vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })
      vim.keymap.set("n", "<leader>sm", builtin.lsp_workspace_symbols, { desc = "List LSP symbol" })
      vim.keymap.set("n", "<leader>of", builtin.oldfiles, { desc = "Search through old files" })
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      rainbow = {
        enable = true,
        extended_mode = true,
        max_file_lines = nil,
      }
    },
    -- opts = function()
    -- 	    vim.cmd(':TSUpdate')
    -- end
  },
  {
    "mbbill/undotree",
  },
  {
    "nvim-tree/nvim-tree.lua",
    opts = {},
    --   opts = function()
    -- 	    vim.cmd(':NvimTreeToggle')
    -- end
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
  },
  {
    "christoomey/vim-tmux-navigator",
  },
  {
    "m4xshen/autoclose.nvim",
    opts = {},
  },
  {
    "numToStr/Comment.nvim",
    Opts = {},
  },
  { 'echasnovski/mini.statusline', version = false, opts = {} },
  {
    'romgrk/barbar.nvim',
    dependencies = {
      'lewis6991/gitsigns.nvim',     -- OPTIONAL: for git status
      'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
    },
    init = function() vim.g.barbar_auto_setup = false end,
    opts = {
      -- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
      -- animation = true,
      -- insert_at_start = true,
      -- …etc.
    },
    version = '^1.0.0', -- optional: only update when a new 1.x version is released
  },
  { "tpope/vim-fugitive" },
}
