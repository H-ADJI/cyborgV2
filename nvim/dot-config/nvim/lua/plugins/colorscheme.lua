return {
  {
    "xiyaowong/transparent.nvim",
    -- Optional, you don't have to run setup.
    config = function()
      require("transparent").setup({
        extra_groups = {
          "SnackBorder",
          "SnacksTitle",
          "SnackPrompt",
          "SnackPreview",
          "SnackResults",
          "SnackScrollbar",
          "SnackScrollbarThumb",
          "SnacksBackdrop",
          "SnacksNormalNC",
          "SnacksWinBar",
          "SnacksWinBarNC",
          "SnacksPicker",
          "SnacksPickerBorder",
          "SnacksPickerInput",
          "SnacksPickerPreviewTitle",
          "SnacksPickerPrompt",
          "SnacksPickerList",
          "SnacksPickerPreview",
          "SnacksPickerScrollbar",
          "SnacksPickerScrollbarThumb",
          "SnacksPickerCursorLine",
        },
        -- table: groups you don't want to clear
        -- function: code to be executed after highlight groups are cleared
        -- Also the user event "TransparentClear" will be triggered
        on_clear = function() end,
      })
      require("transparent").clear_prefix("SnacksNotifier")
      require("transparent").clear_prefix("Which")
      Snacks.toggle("transparency", {
        name = "transparency",
        get = function()
          -- Check current diagnostic config
          return vim.g.transparent_enabled
        end,
        set = function(state)
          vim.cmd("TransparentToggle")
        end,
      }):map("<leader>ut")
    end,
  },
  {

    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      -- require("tokyonight").setup({
      --   transparent = true, -- Enable this to disable setting the background color
      -- })
      vim.cmd([[colorscheme tokyonight]])
    end,
  },
}
