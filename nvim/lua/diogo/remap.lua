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

-- vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.dotfiles/nvim/.config/nvim/lua/theprimeagen/packer.lua<CR>");
-- vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>");

-- open in brave
vim.keymap.set("n", "<leader>b", "<cmd>! brave %<CR><CR>")
