return {
    {
        "mason-org/mason.nvim",
        keys = {
            {
                "<leader>mm",
                function()
                    vim.cmd("Mason")
                end,
                mode = { "n", "v" },
                desc = "[M]ason",
            },
        },
        opts = {},
    },
    {
        "mason-org/mason-lspconfig.nvim",
        opts = {},
        dependencies = {
            { "mason-org/mason.nvim", opts = {} },
            "neovim/nvim-lspconfig",
        },
    },

    {
        -- TODO: maybe replace with helper function from lazyvim.org
        "WhoIsSethDaniel/mason-tool-installer.nvim",
        opts = {
            ensure_installed = {
                "lua_ls",
                "ty",
                "bash-language-server",
                "marksman",
                "markdownlint",
                -- toml
                "taplo",
                -- python stuff
                -- "pyright",
                -- "ruff",
                -- golang stuff
                -- "gopls",
                -- "iferr",
                -- "goimports",
                -- "golines",
                -- javascript
                -- "typescript-language-server",
                -- "biome",
                -- "eslint-lsp",
                -- "css-lsp",
                -- "html-lsp",
                -- "sql-formatter",
                -- "dockerfile-language-server",
                -- "docker-compose-language-service",
                "prettierd",
                "shellcheck",
                "shfmt",
                "stylua",
                "beautysh",
            },
        },
    },
}
