require("lsp-format").setup {}
vim.api.nvim_create_autocmd('LspAttach', {
    callback = function(args)
        local client = assert(vim.lsp.get_client_by_id(args.data.client_id))
        require("lsp-format").on_attach(client, args.buf)
    end,
})

local prettier = {
    formatCommand =
    [[/usr/local/node_modules/prettier/bin/prettier.cjs --stdin-filepath ${INPUT} ${--tab-width:tab_width}]],
    formatStdin = true,
}

local rustfmt = {
    formatCommand = [[rustfmt]],
    formatStdin = true,
}

require("lspconfig").efm.setup {
    on_attach = require("lsp-format").on_attach,
    init_options = { documentFormatting = true },
    settings = {
        languages = {
            typescript = { prettier },
            yaml = { prettier },
            rust = { rustfmt },
        },
    },
}
