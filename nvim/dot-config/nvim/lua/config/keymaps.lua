local map = vim.keymap.set

map("n", "zz", function()
  vim.cmd("q")
end, { desc = "[Q]uit" })

map("n", "<leader>li", function()
  vim.cmd("Lazy")
end, { desc = "[l]azy [I]nfo" })

map("n", "<leader>li", function()
  vim.cmd("Lazy")
end, { desc = "[l]azy [I]nfo" })

map("n", "<leader>so", function()
  vim.cmd("update")
  vim.cmd("source")
  vim.notify("config re-loaded")
end, { desc = "s[o]urce config" })

map("t", "<esc>", "<c-\\><c-n>")

map({ "t", "i" }, "<a-h>", "<c-\\><c-n><c-w>h")

map({ "t", "i" }, "<a-j>", "<c-\\><c-n><c-w>j")

map({ "t", "i" }, "<a-k>", "<c-\\><c-n><c-w>k")

map({ "t", "i" }, "<a-l>", "<c-\\><c-n><c-w>l")

map({ "n" }, "<a-h>", "<c-w>h")

map({ "n" }, "<a-j>", "<c-w>j")

map({ "n" }, "<a-k>", "<c-w>k")

map({ "n" }, "<a-l>", "<c-w>l")

local formated_diagnostics = function()
  local diagnostic_format = function(diagnostic)
    return string.format("%s [%s]", diagnostic.message, diagnostic.source or "unknown source")
  end
  vim.diagnostic.open_float(nil, {
    format = diagnostic_format,
  })
end

map("n", "<leader>od", formated_diagnostics, { desc = "[O]pen [D]iagnostics" })

map("n", "<leader>nd", function()
  vim.diagnostic.jump({ count = 1 })
end, { desc = "[N]ext [D]iagnostics" })

map("n", "<leader>pd", function()
  vim.diagnostic.jump({ count = -1 })
end, { desc = "[P]rev [D]iagnostics" })
