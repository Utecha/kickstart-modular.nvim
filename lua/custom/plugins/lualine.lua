return {
    'nvim-lualine/lualine.nvim',
    -- NOTE: Requires Nerd Fonts
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
        local lualine = require 'lualine'
        lualine.setup {
            options = {
                theme = 'everforest',
            },
        }
    end,
}
