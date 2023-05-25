-- leader key
vim.g.mapleader = " "

-- open file Explorer
vim.keymap.set("n", "<leader>e", vim.cmd.Ex)

-- File Save
vim.keymap.set("n", "<leader>fs", vim.cmd.w)

-- File Quit
vim.keymap.set("n", "<leader>fq", vim.cmd.q)

-- SO
vim.keymap.set("n", "<leader>so", vim.cmd.so)
vim.keymap.set("n", "<leader>hrr", vim.cmd.PackerSync)

-- move (Shift+j or Shift+k while in visual mode)
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- make C-d & C-u actually usefull
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- keep cursor in the middle when searching
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- paste without copying new word with leader+p
vim.keymap.set("x", "<leader>p", "\"_dP")
vim.keymap.set("x", "P", "\"_dP")

-- copy to clippboard with leader+y
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader><leader>y", "\"+yy")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- Paste from clippboard with P
vim.keymap.set("n", "P", "\"+p")
-- Control+v in insert mode pastes from clippboard
vim.keymap.set("i", "<C-v>", "<C-r>+")

-- delete without copying
vim.keymap.set("n", "<leader>d", "\"+_d")
vim.keymap.set("v", "<leader>d", "\"+_d")

-- delet Q function
vim.keymap.set("n", "Q", "<nop>")

-- tmux
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionize<CR>")
vim.keymap.set("n", "<leader>ft", vim.lsp.buf.format)

-- move in cmd
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- edit current word in all file
vim.keymap.set("n", "<leader>sw", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- make file executable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- file navegation
vim.api.nvim_set_keymap('n', 'L', '<CR>', { silent = true })
vim.api.nvim_set_keymap('n', 'H', '-', { silent = true })
vim.api.nvim_set_keymap('n', 'J', 'j', { silent = true })
vim.api.nvim_set_keymap('n', 'K', 'k', { silent = true })

-- Move vizual lines (wrapped)
vim.api.nvim_set_keymap('n', 'j', 'gj', { silent = true })
vim.api.nvim_set_keymap('n', 'k', 'gk', { silent = true })

-- kill buffer
vim.keymap.set("n", "<leader>bk", vim.cmd.bd)

-- pandoc
vim.keymap.set("n", "<leader>mp", "<cmd>silent !pandoc -o %:r.pdf %<CR>")
vim.keymap.set("n", "<leader>mdx", "<cmd>silent !pandoc -o %:r.docx %<CR>")
vim.keymap.set("n", "<leader>mo", "<cmd>silent !xdg-open %:r.pdf &<CR>")
vim.keymap.set("n", "<leader>mds", "<cmd>silent set syntax=markdown<CR>")

-- Zen Mode
vim.api.nvim_set_keymap('n', '<leader>zm', [[
:lua require("zen-mode").toggle({window={width=.55}})
:set nonumber
:set norelativenumber
:set signcolumn=no
]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>zc', '<cmd>lua require("zen-mode").toggle({window={width=.50}})<CR>', { silent = true })
vim.api.nvim_set_keymap('n', '<leader>zby', '<cmd>set signcolumn=yes<CR>', { silent = true })
vim.api.nvim_set_keymap('n', '<leader>zbn', '<cmd>set signcolumn=no<CR>', { silent = true })
vim.api.nvim_set_keymap('n', '<leader>zn', '<cmd>set number relativenumber<CR>', { silent = true })

-- Spell Check
vim.api.nvim_set_keymap('n', '<leader>sc', '<cmd>setlocal spell! spelllang=pt<CR>', { silent = true })
vim.api.nvim_set_keymap('n', '<leader>Sc', '<cmd>setlocal spell! spelllang=en_us<CR>', { silent = true })

-- Better Split Keybinds
vim.api.nvim_set_keymap('n', '<leader>wv', ':vsplit %<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>ws', ':split %<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>wh', '<C-w>h', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>wl', '<C-w>l', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>wk', '<C-w>k', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>wj', '<C-w>j', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>wc', '<C-w>c', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w><', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>+', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>-', { noremap = true })

-- insert texts
vim.api.nvim_set_keymap('n', '<Leader>cd', [[:normal! i**\underline{Decisão:}**<Esc>]], { silent = true })
vim.api.nvim_set_keymap('n', '<Leader>ca', [[:normal! i**\underline{Ação tomada:}**<Esc>]], { silent = true })
vim.api.nvim_set_keymap('n', '<Leader>cA', [[:normal! i**\underline{Ações tomadas:}**<Esc>]], { silent = true })

-- open terminal in directory of file
vim.api.nvim_set_keymap('n', '<leader>tt', '<cmd>! alacritty &<CR>', { silent = true })
