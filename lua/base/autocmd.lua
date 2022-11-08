local autocmd = vim.api.nvim_create_autocmd
local cmd = vim.cdm

-- Don't auto comment new line
autocmd("BufEnter", {
	pattern = "*",
	command = "set fo-=c fo-=r fo-=o",
})
