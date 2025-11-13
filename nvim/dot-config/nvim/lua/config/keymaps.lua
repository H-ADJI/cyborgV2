local map = vim.keymap.set
map("n", "zz",
    function()
        vim.cmd("q")
    end,
    { desc = "[Q]uit" }
)
map("n", "<leader>li",
    function()
        vim.cmd("Lazy")
    end,
    { desc = "[l]azy [I]nfo" }
)
map("n", "<leader>so",
    function()
        vim.cmd("update")
        vim.cmd("source")
        vim.notify("config re-loaded")
    end,
    { desc = "s[o]urce config" }
)
-- map('n', '<leader>o', ':update<cr> :source<cr>')
-- map('n', 'zz', ':q<cr>')
-- use <esc> to exit terminal mode
vim.keymap.set('t', '<esc>', '<c-\\><c-n>')
-- map <a-j>, <a-k>, <a-h>, <a-l> to navigate between windows in any modes
vim.keymap.set({ 't', 'i' }, '<a-h>', '<c-\\><c-n><c-w>h')
vim.keymap.set({ 't', 'i' }, '<a-j>', '<c-\\><c-n><c-w>j')
vim.keymap.set({ 't', 'i' }, '<a-k>', '<c-\\><c-n><c-w>k')
vim.keymap.set({ 't', 'i' }, '<a-l>', '<c-\\><c-n><c-w>l')
vim.keymap.set({ 'n' }, '<a-h>', '<c-w>h')
vim.keymap.set({ 'n' }, '<a-j>', '<c-w>j')
vim.keymap.set({ 'n' }, '<a-k>', '<c-w>k')
vim.keymap.set({ 'n' }, '<a-l>', '<c-w>l')
