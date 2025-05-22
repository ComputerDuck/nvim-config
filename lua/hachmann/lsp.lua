-- Defined in init.lua
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

vim.cmd [[
  highlight DiagnosticError guifg=#f44747
  highlight DiagnosticWarn guifg=#FF8800
  highlight DiagnosticInfo guifg=#3399FF
  highlight DiagnosticHint guifg=#00FFFF
]]

local function on_lsp_attach(bufnr)
	-- Check if LSP is attached to the buffer (bufnr)
    vim.api.nvim_buf_set_keymap(
        0,
        "n",
        "<leader>vd",
        ':lua vim.diagnostic.open_float({ border = "rounded", source = "always", focusable = false })<CR>',
        { noremap = true, silent = true }
    )
end

-- Set up autocommand to call the function when an LSP attaches to a buffer
vim.api.nvim_create_autocmd("LspAttach", {
	callback = on_lsp_attach,
})
