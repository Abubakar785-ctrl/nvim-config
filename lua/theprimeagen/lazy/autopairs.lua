return {
    -- Autopairs
    {
        "windwp/nvim-autopairs",
        config = function()
            local npairs = require("nvim-autopairs")
            npairs.setup({
                check_ts = true,              -- use treesitter for smarter pairing
                enable_moveright = true,
                enable_afterquote = true,
                enable_check_bracket_line = true,
            })

            -- Integrate with nvim-cmp if available
            local ok, cmp = pcall(require, "cmp")
            if ok then
                local cmp_autopairs = require("nvim-autopairs.completion.cmp")
                cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
            end
        end
    }
}


