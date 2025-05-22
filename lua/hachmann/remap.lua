vim.keymap.set('n', '<leader>f', ':Guard fmt<CR>', { noremap = true, silent = true })

-- Visual --
-- Stay in indent mode
vim.keymap.set("v", "<", "<gv", {noremap = true, silent = true })
vim.keymap.set("v", ">", ">gv", {noremap = true, silent = true })

-- Visual Block --
-- Move text up and down
vim.keymap.set("x", "J", ":move '>+1<CR>gv-gv", {noremap = true, silent = true})
vim.keymap.set("x", "K", ":move '<-2<CR>gv-gv", {noremap = true, silent = true})

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

vim.keymap.set('n', '<leader>pf', ':Ntree<CR>', {noremap = true, silent = true})
vim.api.nvim_create_autocmd("FileType", {
  pattern = "netrw",
  callback = function()
    vim.api.nvim_buf_set_keymap(0, 'n', '<ESC>', ':b#<CR>', { noremap = true, silent = true })
  end,
})
