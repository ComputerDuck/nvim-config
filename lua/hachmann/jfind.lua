local jfind_status_ok, jfind = pcall(require, "jfind")
if not jfind_status_ok then
    return
end

-- remove <C-c> mapping
vim.api.nvim_set_keymap('n', '<C-c>', '<Nop>', {noremap = true, silent = true})


jfind.setup({
    exclude = {
        ".git",
        ".idea",
        ".vscode",
        ".sass-cache",
        ".class",
        "__pycache__",
        "node_modules",
        "target",
        "build",
        "tmp",
        "assets",
        "dist",
        "public",
        "*.iml",
        "*.meta"
    },
    border = "rounded",
    tmux = true,
});

local key_status_ok, key = pcall(require, "jfind.key")
if not key_status_ok then
    return
end

vim.keymap.set("n", "<c-f>", jfind.findFile)

vim.keymap.set("n", "<c-f>", function()
    jfind.findFile({
        formatPaths = true,
        callback = {
            [key.DEFAULT] = vim.cmd.edit,
            [key.CTRL_B] = vim.cmd.split,
            [key.CTRL_V] = vim.cmd.vsplit,
        }
    })
end)

-- grep
vim.keymap.set("n", "<leader><c-f>", function()
    jfind.liveGrep({
        exclude = {},
        hidden = true,             -- grep hidden files/directories
        caseSensitivity = "smart", -- sensitive, insensitive, smart
                                   --     will use vim settings by default
        callback = {
            [key.DEFAULT] = jfind.editGotoLine,
            [key.CTRL_B] = jfind.splitGotoLine,
            [key.CTRL_V] = jfind.vsplitGotoLine,
        }
    })
end)
