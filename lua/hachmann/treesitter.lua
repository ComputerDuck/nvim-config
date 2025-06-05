require'nvim-treesitter'.setup {
  install_dir = vim.fn.stdpath('data') .. '/site'
}

require'nvim-treesitter'.install { 'c', 'lua', 'vim', 'vimdoc', 'ocaml', 'rust', 'javascript', 'zig' }

vim.api.nvim_create_autocmd('FileType', {
  pattern = { 'rust', 'lua' },
  callback = function() vim.treesitter.start() end,
})

