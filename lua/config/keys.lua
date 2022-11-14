require("config.alias")
print("keys")

local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map("n", "<C-c>", '"+yy', opts)
im("jk", "<Esc>")
