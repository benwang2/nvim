return {
	{
		"sts10/vim-pink-moon",
		priority = 1000,
	},
	{
		"rebelot/kanagawa.nvim",
		priority = 1000,
	},
	{
		"folke/tokyonight.nvim",
		priority = 1000,
		config = function()
			vim.cmd("colorscheme tokyonight")
		end
	},
}
