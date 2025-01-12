return {
  {
    "luukvbaal/nnn.nvim",
    config = function()
      require("nnn").setup({
        picker = {
          cmd = "nnn -Pp", -- Default picker with preview
        },
        replace_netrw = "picker", -- Replace netrw with nnn
        mappings = {
          { "<C-p>", "tab split" }, -- Open file in a new tab
          { "<C-s>", "split" },     -- Open file in a horizontal split
          { "<C-v>", "vsplit" },    -- Open file in a vertical split
        },
      })
    end,
    keys = {
      { "<leader>n", "<cmd>NnnPicker<CR>", desc = "Open nnn picker" },
    },
  },
}
