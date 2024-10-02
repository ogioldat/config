return {
  {
    'neovim/nvim-lspconfig',
  },
  {
    'williamboman/mason-lspconfig.nvim',
    opts = {
      ensure_installed = { 'lua_ls', 'rust_analyzer', 'ts_ls' },
      handlers = {
        function(server_name)
          require('lspconfig')[server_name].setup({})
        end,

        lua_ls = function()
          require('lspconfig').lua_ls.setup({
            settings = { Lua = { diagnostics = { globals = { "vim" } } } },
          })
        end
      },
    },
  },
  {
    'williamboman/mason.nvim',
    opts = {}
  },
  {
    'VonHeikemen/lsp-zero.nvim',
    opts = function()
      local lsp_zero = require('lsp-zero')
      lsp_zero.format_on_save({
        format_opts = {
          async = true,
          timeout_ms = 10000,
        },
        servers = {
          ['lua_ls'] = { 'lua' },
          ['rust_analyzer'] = { 'rust' }
        }
      })

      return {
        extend_lspconfig = function()
          local lsp_attach = function(client, bufnr)
            local opts = { buffer = bufnr }

            lsp_zero.highlight_symbol(client, bufnr)

            vim.keymap.set('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>', opts)
            vim.keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>', opts)
            vim.keymap.set('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<cr>',
              opts)
            vim.keymap.set('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<cr>',
              opts)
            vim.keymap.set('n', 'go', '<cmd>lua vim.lsp.buf.type_definition()<cr>',
              opts)
            vim.keymap.set('n', 'gr', '<cmd>lua vim.lsp.buf.references()<cr>', opts)
            vim.keymap.set('n', 'gs', '<cmd>lua vim.lsp.buf.signature_help()<cr>',
              opts)
            vim.keymap.set('n', '<F2>', '<cmd>lua vim.lsp.buf.rename()<cr>', opts)
            vim.keymap.set({ 'n', 'x' }, '<F3>',
              '<cmd>lua vim.lsp.buf.format({async = true})<cr>', opts)
            vim.keymap.set('n', '<F4>', '<cmd>lua vim.lsp.buf.code_action()<cr>',
              opts)
          end

          lsp_zero.extend_lspconfig({
            sign_text = true,
            lsp_attach = lsp_attach,
            capabilities = require('cmp_nvim_lsp').default_capabilities(),
          })
        end
      }
    end
  },
  {
    'hrsh7th/nvim-cmp',
    opts = {
      sources = {
        { name = 'nvim_lsp' },
      },
      snippet = {
        expand = function(args)
          vim.snippet.expand(args.body)
        end,
      },
    }
  },
  {
    'hrsh7th/cmp-nvim-lsp',
  }
}
