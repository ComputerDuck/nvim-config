local function gruvbox()
    vim.g.gruvbox_material_background = 'hard'
    vim.g.gruvbox_material_foreground = 'original'
    vim.g.gruvbox_material_better_performance = 1

    return "gruvbox-material"
end

local function moonbow()
	return "moonbow"
end

local function tokyonight()
    return "tokyonight-night"
end

local function ayu()
   return "ayu"
end

local themes = {gruvbox, moonbow, tokyonight, ayu}

function ColorNeovim(x)
    vim.opt.background= 'dark'

    local color = themes[x]()
    vim.cmd.colorscheme(color)

    vim.cmd.hi("Normal guibg=NONE ctermbg=NONE")
    vim.cmd.hi("NormalFloat guibg=NONE ctermbg=NONE")
    vim.cmd.hi("FloatBorder guibg=NONE ctermbg=NONE")
    vim.cmd.hi("EndOfBuffer guibg=NONE ctermbg=NONE")
    vim.cmd.hi("SignColumn guibg=NONE ctermbg=NONE")
    vim.cmd.hi("NormalNC guibg=NONE ctermbg=NONE")
    vim.cmd.hi("MsgArea guibg=NONE ctermbg=NONE")
    vim.cmd.hi("Pmenu guibg=NONE ctermbg=NONE")

    vim.cmd.hi("FidgetTitle guibg=NONE ctermbg=NONE")
    vim.cmd.hi("FidgetTask guibg=NONE ctermbg=NONE")

end

ColorNeovim(1)
