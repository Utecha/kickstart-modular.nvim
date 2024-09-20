--  NOTE: Must happen before plugins are loaded (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Set to true if you have a Nerd Font installed and selected in the terminal
vim.g.have_nerd_font = true

-- [[ Setting options ]]
require 'options'

-- [[ Basic Keymaps ]]
require 'keymaps'

-- [[ Install `lazy.nvim` plugin manager ]]
require 'lazy-bootstrap'

-- [[ Configure and install plugins ]]
require 'lazy-plugins'

-- [[ Set default colorscheme ]]
vim.cmd.colorscheme 'everforest'

-- [[ Extra custom configuration for adding C3 language support ]]
--
-- Add filetypes
vim.filetype.add {
    extension = {
        c3 = 'c3',
        c3i = 'c3',
        c3t = 'c3',
    },
}

-- Supply C3 treesitter to nvim-treesitter
local parser_config = require('nvim-treesitter.parsers').get_parser_configs()
parser_config.c3 = {
    install_info = {
        url = 'https://github.com/c3lang/tree-sitter-c3',
        files = { 'src/parser.c', 'src/scanner.c' },
        branch = 'main',
    },
}

-- Add new link for lspconfig to c3lsp
local lspconfig = require 'lspconfig'
local util = require 'lspconfig/util'
local configs = require 'lspconfig.configs'

if not configs.c3_lsp then
    configs.c3_lsp = {
        default_config = {
            cmd = { 'c3lsp' },
            filetypes = { 'c3', 'c3i' },
            root_dir = function(fname)
                return util.find_git_ancestor(fname)
            end,
            settings = {},
            name = 'c3_lsp',
        },
    }
end
lspconfig.c3_lsp.setup {}

-- vim: ts=4 sts=4 sw=4 et
