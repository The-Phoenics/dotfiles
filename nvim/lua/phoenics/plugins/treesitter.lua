return {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
    config = function()
        require('nvim-treesitter.configs').setup {
            ensure_installed = { "python", "javascript", "lua", "html", "typescript", "go", "c", "cpp" },
            highlight = {
                enable = true,
            },
            indent = {
                enable = true
            },
        }
    end
}
