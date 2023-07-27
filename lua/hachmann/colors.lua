function ColorNeovim(color)
    color = color or "gruvbox-material"
    vim.cmd.colorscheme(color)

    vim.opt.background= 'dark'
    vim.g.gruvbox_material_background = 'hard'
    vim.g.gruvbox_material_foreground = 'original'
    vim.g.gruvbox_material_better_performance = 1

    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    vim.cmd.hi("EndOfBuffer guibg=NONE ctermbg=NONE")

end

ColorNeovim()
