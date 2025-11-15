return {
  {
    "xiyaowong/transparent.nvim",
    -- Optional, you don't have to run setup.
    config = function()
      require("transparent").setup({
        -- table: default groups
        groups = {
          "Normal",
          "NormalNC",
          "Comment",
          "Constant",
          "Special",
          "Identifier",
          "Statement",
          "PreProc",
          "Type",
          "Underlined",
          "Todo",
          "String",
          "Function",
          "Conditional",
          "Repeat",
          "Operator",
          "Structure",
          "LineNr",
          "NonText",
          "SignColumn",
          "CursorLine",
          "CursorLineNr",
          "StatusLine",
          "StatusLineNC",
          "EndOfBuffer",
        },
        -- table: additional groups that should be cleared
        extra_groups = {
          "WhichKeyNormal",
          "WhichKeyTitle",
          "WhichKeyBorder",
          "SnackBorder",
          "SnackTitle",
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
        on_clear = function()
          require("transparent").clear_prefix("SnacksNotifier")
          -- require("transparent").clear_prefix("SnacksNotifier")
          -- require("transparent").clear_prefix("Blink")
        end,
      })
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
