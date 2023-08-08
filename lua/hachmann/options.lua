vim.g.c_syntax_for_h = 1

vim.opt.guicursor = ""
vim.opt.showmode = false

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true
vim.opt.swapfile = false
vim.opt.backup = false

vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.termguicolors = true
vim.opt.scrolloff = 8
vim.opt.isfname:append("@-@")

vim.opt.signcolumn = "yes"
vim.opt.colorcolumn = "80"
if vim.bo.filetype == "text" then
    vim.opt_local.wrap = true
    vim.opt_local.linebreak = true
else
    vim.opt_local.wrap = false
    vim.opt_local.linebreak = false
end

vim.opt.timeoutlen=1000
vim.opt.ttimeoutlen=100
vim.opt.updatetime = 750

vim.opt.formatoptions:remove({ "c", "r", "o" }) -- don't insert the current comment leader automatically for auto-wrapping comments using 'textwidth', hitting <Enter> in insert mode, or hitting 'o' or 'O' in normal mode.

vim.opt.undofile = true
vim.opt.undodir = '~/.vim/undodir'
