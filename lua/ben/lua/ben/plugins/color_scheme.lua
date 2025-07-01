return {
	{
		"sts10/vim-pink-moon",
		priority = 1000,
	},
	{
		"rebelot/kanagawa.nvim",
		config = function()
			vim.cmd("colorscheme kanagawa")
		end
	}
}
