return {
  "neovim/nvim-lspconfig",
  keys = {
    {
      "<leader>lsi",
      function()
        vim.cmd("LspInfo")
      end,
      desc = "[L]anguage [S]ervers [I]nfo",
    },
  },
  config = function()
    -- vim.lsp.config()
  end,
}
