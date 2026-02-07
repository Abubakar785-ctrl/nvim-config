return {
    "nvim-tree/nvim-tree.lua",
    dependencies = "nvim-tree/nvim-web-devicons", -- for file icons
    config = function()
        local tree = require("nvim-tree")
        tree.setup({
            disable_netrw = true,
            hijack_netrw = true,
            open_on_setup = false,
            update_focused_file = {
                enable = true,
                update_cwd = true,
            },
            view = {
                width = 30,
                side = "left",
                adaptive_size = true,
                mappings = {
                    list = {
                        { key = "h", action = "close_node" },
                        { key = "l", action = "edit" },
                        { key = "v", action = "vsplit" },
                        { key = "s", action = "split" },
                        { key = "<C-r>", action = "refresh" },
                    }
                },
            },
            renderer = {
                group_empty = true,
                highlight_git = true,
                icons = {
                    show = {
                        file = true,
                        folder = true,
                        folder_arrow = true,
                        git = true,
                    },
                },
            },
            git = {
                enable = true,
                ignore = false,
                timeout = 500,
            },
        })

        -- Keymap to toggle the tree
        vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { noremap = true, silent = true })
    end,
}

