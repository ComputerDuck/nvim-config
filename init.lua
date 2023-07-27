-- faster startup time / impatient plugin replacement

-- Use nvim 0.9+ new loader with byte-compilation cache
-- https://neovim.io/doc/user/lua.html#vim.loader
-- if vim.loader then vim.loader.enable() end


require("hachmann.remap")
require("hachmann.lazy")
require("hachmann.options")
require("hachmann.treesitter")
require("hachmann.jfind")
require("hachmann.harpoon")
require("hachmann.lsp")
require("hachmann.comment")
require("hachmann.colors")
