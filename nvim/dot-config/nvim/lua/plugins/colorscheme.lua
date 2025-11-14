return {
  {
    "xiyaowong/transparent.nvim",
  },
  {
    "baliestri/aura-theme",
    lazy = false,
    priority = 1000,
    config = function(plugin)
      vim.opt.rtp:append(plugin.dir .. "/packages/neovim")
      vim.cmd([[colorscheme aura-soft-dark-soft-text]])
    end,
  },
  {
    "EdenEast/nightfox.nvim",
    enabled = false,
    priority = 1000,
    config = function()
      require("nightfox").setup({
        -- optional configuration here
        options = {
          transparent = true,
        },
      })
      vim.cmd("colorscheme carbonfox")
    end,
  },
  {
    "rebelot/kanagawa.nvim",
    enabled = false,
    config = function()
      require("kanagawa").setup({
        -- optional configuration here
        transparent = true,
      })
      vim.cmd("colorscheme kanagawa-dragon")
    end,
  },
  {
    "vague-theme/vague.nvim",
    -- lazy = false,
    enabled = false,
    priority = 1000,
    config = function()
      require("vague").setup({
        -- optional configuration here
        transparent = true,
      })
      vim.cmd("colorscheme vague")
    end,
  },
}
