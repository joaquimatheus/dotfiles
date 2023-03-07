vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.api.nvim_set_keymap('i', 'jk', '<ESC>', { noremap = true })
vim.o.number = true

vim.opt.termguicolors = true
vim.cmd[[colorscheme monokai]]

require('set')
require('plugins')

require'nvim-treesitter.configs'.setup {
    highlight = {
        enable = true
    },

    rainbow = {
        enable = true,
        -- disable = { "jsx", "cpp" }, list of languages you want to disable the plugin for
        extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
        max_file_lines = nil, -- Do not enable for files with more than n lines, int
        -- colors = {}, -- table of hex strings
        -- termcolors = {} -- table of colour name strings
  }

}
