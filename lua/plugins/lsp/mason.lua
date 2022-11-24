local status_ok, mason = pcall(require, "mason")
if not status_ok then
	vim.notify("Mason not found!")
	return
end

local status_ok, mason_lsp = pcall(require, "mason-lspconfig")
if not status_ok then
	vim.notify("lspconfig not found!")
	return
end

local servers = {
	"pyright",
	"sumneko_lua",
	"html",
}

mason.setup({})
mason_lsp.setup({
	ensure_installed = servers,
	automatic_installation = true,
})
