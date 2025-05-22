-- Defined in init.lua
vim.lsp.config('*', {
  capabilities = {
    textDocument = {
      semanticTokens = {
        multilineTokenSupport = true,
      }
    }
  },
  root_markers = { '.git' },
})

vim.diagnostic.config({
    virtual_text = {
        prefix = "●",
        source = "always",
    },
    float = {
        source = "always",
    },
})
