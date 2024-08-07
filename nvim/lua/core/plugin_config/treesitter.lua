require'nvim-treesitter.configs'.setup {
  ensure_installed = { "c", "cpp", "go", "javascript" , "lua", "rust", "vim", "html" },

  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
  },
  indent = {
    enable = true,
  },
}
