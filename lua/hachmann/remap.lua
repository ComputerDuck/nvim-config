-- define leader keys
vim.api.nvim_set_keymap('n', '<Space>', '<Nop>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<C-Space>', '<Nop>', {noremap = true, silent = true})
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
-- >>>>>>>> general mappings <<<<<<<<

-- in normal mode, when leader t is pressed, open vim file manager
vim.keymap.set("n", "<leader>t", vim.cmd.Ex)
vim.keymap.set("n", "<leader>b", vim.cmd.bp)

vim.keymap.set("n", "<leader>w", vim.cmd.wq)

vim.keymap.set('v', '<leader>y', '"+y', {noremap = true, silent = true})
vim.keymap.set('n', '<leader>yy', '"+yy', {noremap = true, silent = true})
vim.keymap.set('n', '<leader>p', '"+p', {noremap = true, silent = true})

-- Visual --
-- Stay in indent mode
vim.keymap.set("v", "<", "<gv", {noremap = true, silent = true })
vim.keymap.set("v", ">", ">gv", {noremap = true, silent = true })

-- Visual Block --
-- Move text up and down
vim.keymap.set("x", "J", ":move '>+1<CR>gv-gv", {noremap = true, silent = true})
vim.keymap.set("x", "K", ":move '<-2<CR>gv-gv", {noremap = true, silent = true})
