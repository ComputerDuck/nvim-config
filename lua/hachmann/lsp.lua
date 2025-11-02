vim.lsp.config("*", {
    capabilities = {
        textDocument = {
            semanticTokens = {
                multilineTokenSupport = true,
            },
        },
    },
    root_markers = { ".git" },
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

vim.cmd([[
  highlight DiagnosticError guifg=#f44747
  highlight DiagnosticWarn guifg=#FF8800
  highlight DiagnosticInfo guifg=#3399FF
  highlight DiagnosticHint guifg=#00FFFF
  "highlight @lsp.type.variable guifg=#83a598
  "highlight @lsp.type.macro guifg=#83a598
]])

local function on_lsp_attach(args)
    local client = assert(vim.lsp.get_client_by_id(args.data.client_id))
    if client.supports_method('textDocument/documentHighlight') then
        vim.lsp.buf.document_highlight()
    end
    vim.keymap.set(
        "n",
        "<leader>vd",
        function()
            vim.diagnostic.open_float({ border = "rounded", source = "always", focusable = false })
        end,
        { buffer = true }
    )
    vim.keymap.set(
        "n",
        "gd",
        vim.lsp.buf.definition,
        { buffer = true }
    )
    vim.keymap.set(
        "n",
        "gD",
        vim.lsp.buf.declaration,
        { buffer = true }
    )
end

-- Set up autocommand to call the function when an LSP attaches to a buffer
vim.api.nvim_create_autocmd("LspAttach", {
    callback = on_lsp_attach,
})

vim.keymap.set(
    "n",
    "F",
    vim.lsp.buf.format,
    { buffer = true }
)
