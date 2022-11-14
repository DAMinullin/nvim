require('config')
require('plugins')

local has = vim.fn.has
local is_win = has "win32"

if is_win then
	vim.opt.clipboard:prepend { 'unnamed', 'unnamedplus' }
end
