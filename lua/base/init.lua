local opt = vim.opt
local cmd = vim.cmd
opt.title = true
-- Encoding
opt.encoding = "utf-8"
vim.scriptencoding = "utf-8"

-- Termguicolors
opt.termguicolors = true

-- Cursor
--opt.cursorline = true
--opt.cursorlineopt = "number"

-- Lines
opt.number = true
opt.relativenumber = true
opt.scrolloff = 10

-- Indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.softtabstop = 2
opt.expandtab = false
opt.smartindent = true
opt.autoindent = true
opt.smarttab = true

--opt.colorcolumn = "80"

-- Swap files
opt.swapfile = false

opt.backup = true
opt.backupdir = '~/.config/nvim/tmp'

-- Search
opt.hlsearch = true


opt.mouse = "a"
opt.clipboard = "unnamedplus"
opt.backup = true

-- Cmd
vim.cmd('autocmd!')
cmd("filetype plugin indent on")
opt.showcmd = true

require('base.keys')
require('base.autocmd')
