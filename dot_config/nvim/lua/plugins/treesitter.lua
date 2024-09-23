require'nvim-treesitter.configs'.setup {
  ensure_installed = { "rust", "lua", "vim", "vimdoc", "javascript", "markdown", "markdown_inline" },
  highlight = {
    enable = true,
  },
}
