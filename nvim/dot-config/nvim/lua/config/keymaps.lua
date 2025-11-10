local map = vim.keymap.set
map("n", "zz",
    function()
        vim.cmd("q")
    end,
    { desc = "[Q]uit" }
)
map("n", "<leader>ll",
    function()
        vim.cmd("Lazy")
    end,
    { desc = "[L]azy Dashboard" }
)
map("n", "<leader>o",
    function()
        vim.cmd("update")
        vim.cmd("source")
        vim.notify("Config re-loaded")
    end,
    { desc = "S[o]urce config" }
)
-- map('n', '<leader>o', ':update<CR> :source<CR>')
-- map('n', 'zz', ':q<CR>')
-- Use <Esc> to exit terminal mode
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>')
-- Map <A-j>, <A-k>, <A-h>, <A-l> to navigate between windows in any modes
vim.keymap.set({ 't', 'i' }, '<A-h>', '<C-\\><C-n><C-w>h')
vim.keymap.set({ 't', 'i' }, '<A-j>', '<C-\\><C-n><C-w>j')
vim.keymap.set({ 't', 'i' }, '<A-k>', '<C-\\><C-n><C-w>k')
vim.keymap.set({ 't', 'i' }, '<A-l>', '<C-\\><C-n><C-w>l')
vim.keymap.set({ 'n' }, '<A-h>', '<C-w>h')
vim.keymap.set({ 'n' }, '<A-j>', '<C-w>j')
vim.keymap.set({ 'n' }, '<A-k>', '<C-w>k')
vim.keymap.set({ 'n' }, '<A-l>', '<C-w>l')
