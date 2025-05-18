local current = 1
local themes = { "gruvbox", "catppuccin", "tokyonight" }

-- Function to switch to next theme
function SwitchTheme()
  current = current % #themes + 1
  vim.cmd.colorscheme(themes[current])
  print("Switched to " .. themes[current])
end

-- Keybinding to toggle themes
vim.keymap.set("n", "<leader>tt", SwitchTheme, { desc = "Toggle Theme" })

-- Return plugins to lazy.nvim
return {
  {
    "morhetz/gruvbox",
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd.colorscheme("gruvbox") -- Set initial theme here (after plugin is loaded)
    end,
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = true,
  },
  {
    "folke/tokyonight.nvim",
    lazy = true,
  },
}
