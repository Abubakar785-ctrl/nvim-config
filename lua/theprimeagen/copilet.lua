return {
    "github/copilot.vim",
    config = function()
        vim.g.copilot_no_tab_map = true  -- if you want to map <Tab> manually
        vim.api.nvim_set_keymap("i", "<Tab>", 'copilot#Accept("<CR>")', { expr = true, silent = true })
    end
}

