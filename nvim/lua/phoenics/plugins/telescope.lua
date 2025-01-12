return {
    'nvim-telescope/telescope.nvim',
    dependencies = {
        'nvim-lua/plenary.nvim',
        'nvim-telescope/telescope-file-browser.nvim',
    },
    config = function()
        local telescope = require("telescope")
        telescope.setup({
            extensions = {
                file_browser = {
                    mappings = {
                        -- Insert mode
                        ["i"] = {
                            ["<C-CR>"] = function(prompt_bufnr)
                                local selection = require("telescope.actions.state").get_selected_entry()
                                if selection then
                                    -- Change working directory to the selected folder
                                    vim.cmd("cd " .. selection.path)
                                    require("telescope.actions").close(prompt_bufnr)
                                end
                            end,
                        },
                        -- Normal mode
                        ["n"] = {
                            ["<C-CR>"] = function(prompt_bufnr)
                                local selection = require("telescope.actions.state").get_selected_entry()
                                if selection then
                                    -- Change working directory to the selected folder
                                    vim.cmd("cd " .. selection.path)
                                    require("telescope.actions").close(prompt_bufnr)
                                end
                            end,
                        },
                    },
                },
            },
        })
        telescope.load_extension("file_browser")
    end,
}
