return {
  'akinsho/toggleterm.nvim',
  -- tag = '*',
  config = function()
    require("toggleterm").setup{
      -- open_mapping = [[<leader>t]], -- Mapping to toggle the terminal
      direction = 'float',
      size = 20,
      float_opts = {
        border = 'curved',
      },
    }
    -- <leader>t
    -- Key mapping to toggle terminal while in terminal mode, including insert mode
    -- vim.api.nvim_set_keymap('t', '<leader>t', [[<C-\><C-n><CMD>lua require("toggleterm.terminal").Terminal:new():toggle()<CR>]], { noremap = true, silent = true })

  end
}
