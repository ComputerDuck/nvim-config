vim.lsp.config("gradle_ls", {
    filetypes = {"groovy", "java", "kotlin"},
    root_markers = { "settings.gradle.kts", "build.gradle.kts", "settings.gradle", "build.gradle" }
})
