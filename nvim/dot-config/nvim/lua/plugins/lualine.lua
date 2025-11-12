return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = {
    options = { theme = "vague" },
    sections = {
      lualine_a = { "mode" },
      lualine_b = { "branch", "diff", "diagnostics" },
      lualine_c = {
        {
          "filename",
          path = 1,
        },
      },
      lualine_x = {
        {
          "searchcount",
          maxcount = 9999,
          timeout = 500,
        },
        {
          "lsp_status",
        },
      },
      lualine_y = { "progress" },
      lualine_z = { "location" },
    },
  },
}
