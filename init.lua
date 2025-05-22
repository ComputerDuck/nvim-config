-- faster startup time / impatient plugin replacement

-- Use nvim 0.9+ new loader with byte-compilation cache
-- https://neovim.io/doc/user/lua.html#vim.loader

if vim.loader then vim.loader.enable() end
require("hachmann.opt")
require("hachmann.lazy")
require("hachmann.remap")

-- Use this while cmp throws deprecated error / client.is_stopped
vim.deprecate = function() end

require("hachmann.cmp")
require("hachmann.guard")
require("hachmann.harpoon")

require("hachmann.lsp")
vim.lsp.enable({"lua_ls", "clangd", "rust-analyzer"})
