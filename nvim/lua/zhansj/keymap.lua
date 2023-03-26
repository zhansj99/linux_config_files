-- mapping file

-- leader map
vim.g.mapleader = "\\"


-- shortcuts map
-- use the version-0.9, need update ppa
vim.keymap.set("n", "<leader>q", vim.cmd.Ex)

-- visual 
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- normal
vim.keymap.set("n", "<space>", ":")

-- insert
vim.keymap.set("i", "jj", "<Esc>")
