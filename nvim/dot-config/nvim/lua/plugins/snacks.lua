return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  ---@type snacks.Config
  opts = {
    bigfile = {
      enabled = true,
      size = 5 * 1024 * 1024, -- 1.5MB
      line_length = 5000, -- average line length (useful for minified files)
    },
    dashboard = {
      enabled = true,
    },
    explorer = {
      enabled = true,
    },
    indent = {
      enabled = true,
      only_scope = false, -- only show indent guides of the scope
      only_current = true, -- only show indent guides in the current window
    },
    -- input = { enabled = true },
    -- picker = { enabled = true },
    notifier = {
      enabled = true,
      timeout = 1500,
    },
    -- quickfile = { enabled = true },
    -- scope = { enabled = true },
    scroll = {
      enabled = true,
      animate = {
        duration = { step = 10, total = 200 },
        easing = "linear",
      },
      -- faster animation when repeating scroll after delay
      animate_repeat = {
        delay = 100, -- delay in ms before using the repeat animation
        duration = { step = 5, total = 20 },
        easing = "linear",
      },
    },
    -- statuscolumn = { enabled = true },
    -- words = { enabled = true },
  },
  keys = {

    {
      "<leader>e",
      function()
        Snacks.explorer()
      end,
      desc = "File Explorer",
    },
  },
}
