-- NOTE: There are various color-palette styles that come with Nightfox.
-- These are...
--     nightfox
--     dayfox
--     dawnfox
--     duskfox
--     nordfox
--     terafox
--     carbonfox
-- Change the 'vim.cmd.colorscheme' setting in the top-level init.lua to
-- automatically start with your chosen style.
return {
    'EdenEast/nightfox.nvim',
    lazy = false,
    priority = 1000,
    config = function()
        require('nightfox').setup {
            options = {
                styles = {
                    comments = 'italic',
                    keywords = 'italic',
                    types = 'italic,bold',
                },
            },
        }
    end,
}
