return {
    'navarasu/onedark.nvim',
    priority = 1000,
    config = function()
        require('onedark').setup {
            style = 'dark',
            code_style = {
                comments = 'italic',
                keywords = 'italic',
                functions = 'none',
                strings = 'none',
                variables = 'none',
            },
            lualine = {
                transparent = true,
            },
            colors = {},
            highlights = {},
            diagnostics = {
                darker = true,
                undercurl = true,
                background = true,
            },
        }
    end,
}
