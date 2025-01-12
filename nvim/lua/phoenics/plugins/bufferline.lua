return {
    {
        "akinsho/bufferline.nvim",
        version = "*",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        config = function()
require("bufferline").setup {
    options = {
        mode = "buffers", -- Show buffers in the tabline
        numbers = "none", -- No buffer numbers
        close_command = "bdelete! %d", -- Command to close buffers
        right_mouse_command = "bdelete! %d", -- Right-click to close
        left_mouse_command = "buffer %d", -- Left-click to go to buffer
        middle_mouse_command = nil, -- Middle-click behavior
        indicator = {
            icon = "▎", -- Indicator icon for active buffer
            style = "icon",
        },
        buffer_close_icon = "", -- Icon for buffer close
        modified_icon = "●", -- Icon for modified buffers
        close_icon = "", -- Icon for tabline close
        show_close_icon = true, -- Show close icon on the tabline
        show_buffer_close_icons = true, -- Show close icons on buffers
        separator_style = "thick", -- Separator style: 'thin', 'thick', or 'none'
        enforce_regular_tabs = true, -- Equal width for all buffers
        always_show_bufferline = true, -- Show bufferline even with one buffer
        diagnostics = "nvim_lsp", -- Display diagnostics (requires LSP)
        diagnostics_indicator = function(count, level, diagnostics_dict, context)
            local icon = level:match("error") and " " or " "
            return " " .. icon .. count
        end,
    },
}
        end,
    },
}
