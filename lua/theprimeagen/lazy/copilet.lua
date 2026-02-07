return {
    "copilotlsp-nvim/copilot-lsp",
    init = function()
        vim.g.copilot_nes_debounce = 500
    end,
    config = function()
        vim.lsp.enable("copilot")
        vim.keymap.set("n", "<Tab>", function()
            local ok, nes = pcall(require, "copilot-lsp.nes")
            if ok then
                nes.apply_pending_nes()
            end
        end, { noremap = true, silent = true })
    end,  -- <- comma here if more fields are added later
}

