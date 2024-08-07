vim.go.loaded_netw = 1
vim.g.loaded_netrePlugin = 1

require("nvim-tree").setup()

vim.keymap.set('n', '<c-n>', ':NvimTreeFindFileToggle<CR>')
