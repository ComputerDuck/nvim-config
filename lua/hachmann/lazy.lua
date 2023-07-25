local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Use a protected call so we don't error out on first use
local status_ok, lazy = pcall(require, "lazy")
if not status_ok then
	return
end


return lazy.setup({
    defaults = {
        lazy = true,
    },

    {
        'sainnhe/gruvbox-material',
        config = function()
            vim.opt.background= 'dark'

            vim.g.gruvbox_material_background = 'hard'
            vim.g.gruvbox_material_foreground = 'original'
            vim.g.gruvbox_material_better_performance = 1

            vim.cmd([[colorscheme gruvbox-material]])
        end,
    },


    'nvim-lua/plenary.nvim',
    'itchyny/lightline.vim',
    'theprimeagen/harpoon',
    'numToStr/Comment.nvim',
    'RRethy/vim-illuminate',
    { 'nvim-treesitter/nvim-treesitter', build = ':TSUpdate', },
    { "jake-stewart/jfind.nvim", branch = "1.0", },
    {
       'j-hui/fidget.nvim',
        config = function() require("fidget").setup() end,
        tag = 'legacy',
    },

    'jose-elias-alvarez/null-ls.nvim', -- formatters and linters
    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        dependencies = {
            {
                'williamboman/mason.nvim',
                build = function()
                    pcall(vim.cmd, 'MasonUpdate')
                end,
            },

            {'neovim/nvim-lspconfig'},
            {'williamboman/mason-lspconfig.nvim'}, 
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'L3MON4D3/LuaSnip'},
            {'hrsh7th/cmp-buffer'},
            {'hrsh7th/cmp-path'},
        },
	},

})
