require("mason").setup()
require("mason-lspconfig").setup({})

require("mason-lspconfig").setup_handlers({
  function(server_name)
    local capabilities = require("cmp_nvim_lsp").default_capabilities(vim.lsp.protocol.make_client_capabilities())

    capabilities.textDocument.foldingRange = {
      dynamicRegistration = false,
      lineFoldingOnly = true,
    }

    local opts = {
      capabilities = capabilities,
    }

    require("lspconfig")[server_name].setup(opts)
  end,
})

require("mason-null-ls").setup({
  ensure_installed = { "stylua", "jsonls" },
  automatic_installation = true,
  handlers = {},
})

require("null-ls").setup({})
require("lspsaga").setup({})
require("trouble").setup({})
