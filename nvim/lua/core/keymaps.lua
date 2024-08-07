vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.opt.backspace = '2'
vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.cursorline = true

vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.shiftround = true
vim.opt.expandtab = true


vim.wo.relativenumber = true

vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')

-- toggle terminal
vim.keymap.set('n', '<leader>t', ':ToggleTerm<CR>')


