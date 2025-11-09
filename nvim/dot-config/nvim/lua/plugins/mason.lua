return {
    "mason-org/mason.nvim",
    keys = {
        {
            "<leader>mm",
            function()
                vim.cmd("Mason")
            end,
            mode = { "n", "v" },
            desc = "[M]ason",
        }
    },
    opts = {}
}
