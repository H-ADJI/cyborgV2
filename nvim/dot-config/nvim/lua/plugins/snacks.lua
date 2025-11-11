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
      -- replace_netrw = true, -- Replace netrw with the snacks explorer
      trash = true, -- Use the system trash when deleting files
    },
    -- indent = { enabled = true },
    -- input = { enabled = true },
    -- picker = { enabled = true },
    notifier = {
      enabled = true,
      timeout = 1500,
    },
    -- quickfile = { enabled = true },
    -- scope = { enabled = true },
    -- scroll = { enabled = true },
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
