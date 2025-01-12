require("phoenics")

-- startup
vim.api.nvim_create_autocmd("VimEnter", {
    callback = function()
      if vim.fn.argc() == 0 then
        vim.cmd("Alpha")
      end
    end,
})

if vim.g.neovide then
    -- Put anything you want to happen only in Neovide here
    vim.print(vim.g.neovide_version)
end

vim.g.neovide_transparency = 0.9
vim.g.transparency = 0.8
vim.g.neovide_background_color = "#0f1117"


vim.g.neovide_cursor_trail_size = 0.8
vim.g.neovide_cursor_trail_size = 0.8


