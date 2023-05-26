require("diogo.remap")
require("diogo.set")
vim.o.background = "dark" -- or "light" for light mode
vim.cmd([[colorscheme onedark]])

-- Load custom treesitter grammar for org filetype
require('orgmode').setup_ts_grammar()
