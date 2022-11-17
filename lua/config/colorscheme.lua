local default_scheme = "darkplus"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. default_scheme)
if not status_ok then
	vim.notify("colorscheme " .. default_scheme .. " not found!")
	return
end
