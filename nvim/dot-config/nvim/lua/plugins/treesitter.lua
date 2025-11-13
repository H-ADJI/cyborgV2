return {
  "nvim-treesitter/nvim-treesitter",
  branch = "master",
  lazy = false,
  build = ":TSUpdate",
  -- opts = {
  --   folds = { enable = true },
  -- },
  config = function()
    require("nvim-treesitter.configs").setup({
      highlight = {
        enable = true,
      },
      ensure_installed = {
        "c",
        "lua",
        "yaml",
        "vim",
        "vimdoc",
        "query",
        "markdown",
        "markdown_inline",
        "python",
      },
      auto_install = true,
    })
  end,
}
