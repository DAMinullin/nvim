local options = {
	encoding       = "utf-8",
	fileencoding   = "utf-8",
	termguicolors  = true,
	cursorline     = true,
	tabstop        = 2,
	shiftwidth     = 2,
	softtabstop    = 2,
	expandtab      = false,
	smartindent    = true,
	autoindent     = true,
	smarttab       = true,
	number         = true,
	relativenumber = true,
	scrolloff      = 10,
	sidescrolloff  = 10,
	scroll         = 10,
	title          = true,
	laststatus     = 3,
	lazyredraw     = true,
	pumheight      = 10,
	ignorecase     = true,
	wrap           = false,
	signcolumn     = "yes",
	hlsearch       = true,
	incsearch      = true,
	ignorecase     = true,
	smartcase      = true,
	splitbelow     = true,
	splitright     = true,
	showmode       = false,
	mouse          = "a",
	clipboard      = "unnamedplus",
	swapfile       = false,
	backup         = false,
	writebackup    = false,
	confirm        = true,
	showcmd        = true,
	cmdheight      = 1,
	updatetime     = 450,
	guifont        = "monospace:h17",
	--cursorlineopt  = "number",
	--backupdir      = '~/.config/nvim/tmp',  -- Set path if backup = true
  --colorcolumn    = "80"
}

vim.scriptencoding = "utf-8"
vim.opt.shortmess:append("c")

for option, value in pairs(options) do
	vim.opt[option] = value
end

vim.g.clipboard = {
	name = 'tmuxClipboard',
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

