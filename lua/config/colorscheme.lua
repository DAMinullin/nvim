local default_scheme = "darkplus"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. default_scheme)
if not staus_ok then
	vim.notify("colorscheme " .. default_scheme .. " not found!")
	return
end
