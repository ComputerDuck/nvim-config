return {
	"morhetz/gruvbox",
	lazy = false,
	priority = 1000,
	config = function()
        vim.g.gruvbox_guisp_fallback = "bg"
		vim.cmd([[colorscheme gruvbox]])
	end,
}
