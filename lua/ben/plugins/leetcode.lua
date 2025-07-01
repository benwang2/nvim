return {
    "kawre/leetcode.nvim",
    build = ":TSUpdate html", -- if you have `nvim-treesitter` installed
	cmd = "Leet",
    dependencies = {
        "nvim-telescope/telescope.nvim",
        "ibhagwan/fzf-lua",
        "nvim-lua/plenary.nvim",
        "MunifTanjim/nui.nvim",
		"nvim-treesitter/nvim-treesitter",
    },
    opts = {
		lang = "python3",
        -- configuration goes here
    },
}
