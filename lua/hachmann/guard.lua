local ft = require("guard.filetype")

ft("lua"):fmt("stylua")
ft("c"):fmt("clang-format")
