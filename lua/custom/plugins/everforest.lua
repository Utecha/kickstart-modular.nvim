return {
    'neanias/everforest-nvim',
    version = false,
    lazy = false,
    priority = 1000,
    init = function()
        vim.cmd.colorscheme 'everforest'
        vim.o.background = dark
    end,
}
