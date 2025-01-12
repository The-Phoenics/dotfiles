-- leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.opt.backspace = '2'
vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.cursorline = true
vim.opt.clipboard = 'unnamedplus' -- use system clipboard

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.shiftround = true
vim.opt.expandtab = true
vim.wo.relativenumber = true

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- vim.opt.guifont = { "JetBrainsMono Nerd Font Mono", "h12" }

vim.api.nvim_set_hl(0, 'Normal', { fg = "#ffffff", bg = "#333333" })
vim.api.nvim_set_hl(0, 'Comment', { fg = "#111111", bold = true })
vim.api.nvim_set_hl(0, 'Error', { fg = "#ffffff", undercurl = true })
vim.api.nvim_set_hl(0, 'Cursor', { reverse = true })

