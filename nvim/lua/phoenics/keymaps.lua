-- clear searches
vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')

-- vim.keymap.set('n', '<leader>t', ':ToggleTerm<CR>')
vim.keymap.set('n', '<C-t>', ':ToggleTerm<CR>')
-- vim.keymap.set('t', '<leader>t', '<C-\\><C-n>:ToggleTerm<CR>')
vim.keymap.set('t', '<C-t>', '<C-\\><C-n>:ToggleTerm<CR>')

vim.keymap.set('n', '<leader>e', ':NvimTreeToggle<CR>') -- nvim-tree
vim.keymap.set('n', '<leader>q', ':qa<CR>') -- exit nvim

-- telescope
vim.keymap.set('n', '<leader>ff', ':Telescope find_files<CR>')
vim.keymap.set('n', '<leader>fg', ':Telescope live_grep<CR>')
vim.keymap.set('n', '<leader>fb', ':Telescope buffers<CR>')
vim.keymap.set('n', '<leader>fh', ':Telescope help_tags<CR>')
vim.keymap.set('n', '<leader>fr', ':Telescope resume<CR>')

-- bufferline
vim.keymap.set("n", "<Tab>", "<cmd>BufferLineCycleNext<CR>", { desc = "Go to next buffer" })
vim.keymap.set("n", "<S-Tab>", "<cmd>BufferLineCyclePrev<CR>", { desc = "Go to previous buffer" }) -- Shift + Tab in normal mode
vim.keymap.set("n", "<leader>c", "<cmd>bdelete<CR>", { desc = "Close buffer" }) -- (leader) Space + c
vim.keymap.set("n", "<leader>bp", "<cmd>BufferLinePick<CR>", { desc = "Pick buffer" })
