require("config.alias")
print("keys")

local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

vim.g.mapleader = " "

map("n", "<C-c>", '"+yy', opts)
im("jk", "<Esc>")
nm("qq", ":wq<cr>")

-- Folding
-- zf - fold, zo - infold
--Telescope
map("n", "<leader>f", ":Telescope find_files<cr>", opts)


nm("x", '"_x')  -- Don't copy to clipboard when delete symbols
map("n", "<leader>z", ":noh<cr>", opts)

-- Move lines / blocks
map("n", "<C-A-Up>", ":m .-2<cr>==", opts) -- move up
map("n", "<C-A-Down>", ":m .+1<cr>==", opts) -- move down
map("i", "<C-A-Up>", "<Esc>:m .-2<cr>==gi", opts) -- move up
map("i", "<C-A-Down>", "<Esc>:m .+1<cr>==gi", opts) -- move down
map("v", "<C-A-Up>", ":m '<-2<CR>gv-gv", opts) -- move up
map("v", "<C-A-Down>", ":m '>+1<CR>gv-gv", opts) -- move down
