return {
	{
		"williamboman/mason.nvim",
		priority = 100,
		dependencies = {
			"williamboman/mason-lspconfig.nvim"
		},
		config = function()
			require("mason").setup()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"clangd"
				},
				automatic_installation = true
			})
		end,
	},
	{
	    "neovim/nvim-lspconfig",
		priority = 80,
	}
}
