local status_ok, lsp = pcall(require, "lspconfig")
if not status_ok then
	vim.notify("LSP not found!")
	return
end


lsp.pyright.setup{}
