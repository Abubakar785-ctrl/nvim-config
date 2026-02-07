return {
    "ThePrimeagen/harpoon",
    config = function()
        local ok, harpoon = pcall(require, "harpoon")
        if not ok then
            vim.notify("Harpoon not found!", vim.log.levels.WARN)
            return
        end

        local mark = require("harpoon.mark")
        local ui = require("harpoon.ui")

        vim.keymap.set("n", "<leader>f", mark.add_file)
        vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)
        vim.keymap.set("n", "<C-i>", function() ui.nav_file(1) end)
        vim.keymap.set("n", "<C-t>", function() ui.nav_file(2) end)
        vim.keymap.set("n", "<C-n>", function() ui.nav_file(3) end)
        vim.keymap.set("n", "<C-s>", function() ui.nav_file(4) end)
    end
}

