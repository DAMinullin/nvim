local fn = vim.fn
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
local packer_bootstrap = nil
if fn.empty(fn.glob(install_path)) > 0 then
	packer_botstrap = fn.system({
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	})
	vim.api.nvim_command("packadd packer.nvim")
end

vim.cmd([[
	augroup packer_user_config
		autocmd!
		autocmd BufWritePost plugins.lua source <afile> | PackerSync
	augroup end
]])

local on_file_open = { "BufRead", "BufWinEnter"}

return require("packer").startup({
	function(use)
		use("wbthomason/packer.nvim")
		use("nvim-lua/plenary.nvim")

		--Colorscheme
		use("lunarvim/darkplus.nvim")
		
		--Treesitter
		use({"nvim-treesitter/nvim-treesitter", run=':TSUpdate', events=on_file_open, config="require('plugins.treesitter')"})
		use("p00f/nvim-ts-rainbow")

		--Telescope
		use({"nvim-telescope/telescope-fzf-native.nvim", run='make'})
		use({"nvim-telescope/telescope.nvim", config="require('plugins.telescope')"})

		--Git
		use({"lewis6991/gitsigns.nvim", events=on_file_open, config="require('plugins.gitsigns')"})

		--Lualine
		use({"nvim-lualine/lualine.nvim", after="darkplus.nvim", events=on_file_open, config="require('plugins.lualine')"})

		-- Cmp
		use("hrsh7th/cmp-buffer")
		use("hrsh7th/cmp-path")
		use("hrsh7th/cmp-cmdline")
		use("saadparwaiz1/cmp_luasnip")
		use({"hrsh7th/nvim-cmp", config="require('plugins.cmp')"})

		-- Snippets
		use("L3MON4D3/LuaSnip")
		use("rafamadriz/friendly-snippets")

		-- LSP
		use("neovim/nvim-lspconfig")
		use("williamboman/mason-lspconfig.nvim")
		use({"williamboman/mason.nvim", config="require('plugins.lsp')"})

		

		if packer_bootstrap then
			require("packer").sync()
		end
	end,
	config = {
		display = {
			open_fn = function()
				return require("packer.util").float({ border = "single" })
			end,
		},
	},
})
