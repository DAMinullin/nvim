local opt = vim.opt
local cmd = vim.cmd

-- Encoding
opt.encoding = "utf-8"
vim.scriptencoding = "utf-8"
opt.fileencoding = "utf-8"

-- Termguicolors
opt.termguicolors = true

-- Cursor
opt.cursorline = true
--opt.cursorlineopt = "number"

opt.title = true
opt.laststatus = 3
opt.lazyredraw = true
opt.pumheight = 10
opt.ignorecase = true
opt.wrap = false
opt.signcolumn = "yes"
-- Lines
opt.number = true
opt.relativenumber = true
opt.scrolloff = 5
opt.sidescrolloff = 5
opt.scroll = 5

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
opt.showcmd = true
opt.cmdheight = 1

vim.cmd('autocmd!')
cmd "set whichwrap+=<,>,h,l,[,]"
cmd [[set iskeyword+=-]]
cmd("filetype plugin indent on")

vim.g.clipboard = {
	name = 'myClipboard',
	copy = {
		["+"] = {'tmux', 'load-buffer', '-'},
		["*"] = {'tmux', 'load-buffer', '-'},
	},
	paste = {
		["+"] = {'tmux', 'save-buffer', '-'},
		["*"] = {'tmux', 'save-buffer', '-'},
	},
	cache_enabled = true,
}

require('config.keys')
require('config.autocmd')
