return {
  'akinsho/toggleterm.nvim',
  tag = '*', -- Use the latest version
  config = function()
    require("toggleterm").setup{
      open_mapping = [[<c-t>]], -- Mapping to toggle the terminal
      direction = 'horizontal',  -- Terminal direction: horizontal, vertical, float
      size = 20,                 -- Default size of the terminal
      -- Enable the ability to toggle the terminal while in it
      float_opts = {
        border = 'curved', -- or 'single' or 'double'
      },
    }

    -- Key mapping to toggle terminal while in terminal
    local Terminal = require('toggleterm.terminal').Terminal
    local my_terminal = Terminal:new({ cmd = "bash", hidden = true })

    function _G.toggle_my_terminal()
      my_terminal:toggle()
    end

    -- Set a key mapping for toggling the terminal
    vim.api.nvim_set_keymap('t', '<c-t>', '<C-\\><C-n>:lua toggle_my_terminal()<CR>', { noremap = true, silent = true })
  end
}
