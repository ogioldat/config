vim.api.nvim_create_autocmd(
    "BufWritePost",
    {
        pattern = "*.lua",
        callback = function()
	  vim.lsp.buf.format()
        end,
    }
)
