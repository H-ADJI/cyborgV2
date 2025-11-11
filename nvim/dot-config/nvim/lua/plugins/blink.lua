return {
  "saghen/blink.cmp",
  -- optional: provides snippets for the snippet source
  dependencies = { "rafamadriz/friendly-snippets" },
  -- use a release tag to download pre-built binaries
  enabled = true,
  version = "1.*",
  ---@module 'blink.cmp'
  ---@type blink.cmp.Config
  opts = {
    signature = {
      enabled = true,
      window = { show_documentation = true },
    },
    keymap = {
      preset = "enter",
      ["<ESC>"] = { "hide", "fallback" },
      ["<C-u>"] = { "scroll_signature_up", "scroll_documentation_up", "fallback" },
      ["<C-d>"] = { "scroll_signature_down", "scroll_documentation_down", "fallback" },
      ["<C-k>"] = { "select_prev", "show_signature", "hide_signature", "fallback" },
      ["<C-j>"] = { "select_next", "fallback" },
    },
    appearance = {
      nerd_font_variant = "mono",
    },
    completion = {
      accept = { auto_brackets = { enabled = true } },
      documentation = {
        auto_show = false,
        treesitter_highlighting = true,
      },
      menu = {
        auto_show = true,
      },
      ghost_text = { enabled = true },
    },
    sources = {
      default = { "lsp", "path", "snippets", "buffer" },
    },
    fuzzy = { implementation = "prefer_rust_with_warning" },
    cmdline = {
      keymap = {
        ["<C-k>"] = { "select_prev", "fallback" },
        ["<C-j>"] = { "select_next", "fallback" },
        ["<ESC>"] = { "hide", "fallback" },
        -- ["<CR>"] = { "accept", "fallback" },
      },
      completion = { menu = { auto_show = false } },
    },
  },
  opts_extend = { "sources.default" },
  signature = { enabled = true },
}
