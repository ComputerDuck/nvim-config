local harpoon_mark_status_ok, harpoon_mark = pcall(require, "harpoon.mark")
if not harpoon_mark_status_ok then
    return
end
local harpoon_ui_status_ok, harpoon_ui = pcall(require, "harpoon.ui")
if not harpoon_ui_status_ok then
    return
end

vim.keymap.set("n", "<leader>a", function() harpoon_mark.add_file() end )
vim.keymap.set("n", "<C-e>", function() harpoon_ui.toggle_quick_menu()  end )

vim.keymap.set("n", "<C-h>", function() harpoon_ui.nav_file(1) end )
vim.keymap.set("n", "<C-t>", function() harpoon_ui.nav_file(2) end )
vim.keymap.set("n", "<C-n>", function() harpoon_ui.nav_file(3) end )
vim.keymap.set("n", "<C-s>", function() harpoon_ui.nav_file(4) end )


