return {
	"tigion/nvim-asciidoc-preview",
	ft = { "asciidoc" },
	build = "cd server && npm install --omit=dev",
	opts = {
		server = {
			converter = "js",
		},
		preview = {
			position = "current",
		},
	},
}
