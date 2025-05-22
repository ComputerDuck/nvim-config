return {
	"nvimdev/guard.nvim",
	dependencies = {
		"nvimdev/guard-collection"
	},
	config = function()
	    -- defaults
		vim.g.guard_config = {
		    -- format on write to buffer
		    fmt_on_save = false,
		    -- use lsp if no formatter was defined for this filetype
		    lsp_as_default_formatter = false,
		    -- whether or not to save the buffer after formatting
		    save_on_fmt = false,
		    -- automatic linting
		    auto_lint = true,
		    -- how frequently can linters be called
		    lint_interval = 500,
		    -- show diagnostic after format done
		    refresh_diagnostic = true,
		}
	  end,
}
