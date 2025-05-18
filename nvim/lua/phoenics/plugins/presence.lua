return {
    {
        "andweeb/presence.nvim",
        event = "VeryLazy", -- Load the plugin lazily to avoid affecting startup time
        config = function()
            require("presence"):setup({
                -- Configuration options
                auto_update         = true,  -- Automatically update activity
                neovim_image_text   = "The One True Text Editor", -- Custom hover text for Neovim
                main_image          = "file", -- Main image (either "neovim", "file", or "none")
                client_id           = "793271441293967371", -- Discord client ID (default is provided)
                log_level           = nil, -- Log messages (use "debug" for debugging)
                debounce_timeout    = 10, -- Number of seconds to debounce events
                enable_line_number  = false, -- Displays the current line number in file
                blacklist           = {}, -- List of filenames to ignore
                buttons             = true, -- Show buttons in the presence status
                file_assets         = {}, -- Custom filetype icons
                show_time           = true, -- Show elapsed time since editing started
                workspace_text      = "Playing Neovim!",            -- Format string rendered when in a git repository (either string or function(project_name: string|nil, filename: string): string)
            })
        end,
    },
}
