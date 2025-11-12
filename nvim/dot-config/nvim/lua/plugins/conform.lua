return {
  "stevearc/conform.nvim",
  keys = {
    {
      "<leader>gg",
      function()
        require("conform").format({ async = false, lsp_format = "fallback" })
      end,
      mode = { "n", "v" },
      desc = "[F]ormat buffer",
    },
  },
  opts = {
    formatters_by_ft = {
      python = { "ruff_format", "ruff_organize_imports", "ruff_fix" },
      go = { "gofmt", "golines", "goimports" },
      html = { "prettierd" },
      css = { "prettierd" },
      yaml = { "prettierd" },
      markdown = { "prettierd" },
      scss = { "prettierd" },
      json = { "biome" },
      jsonc = { "biome" },
      sh = { "shfmt", "beautysh" },
      zsh = { "beautysh" },
      bash = { "beautysh" },
    },
  },
}
