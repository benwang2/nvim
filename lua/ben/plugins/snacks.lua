return {
	"folke/snacks.nvim",
	priority = 1000,
	lazy = false,
	---@type snacks.Config
	opts = {
		dashboard = {
			enabled = true,
			example = "compact_files"
		},
		picker = {},
		terminal = { enabled = true },
		scroll = { enabled = true },
		explorer = { enabled = true },
		bigfile = { enabled = true },
		indent = { enabled = true, 
			animate = {
				enabled = false
			},
		},
	},
	keys = {
		{ "<Leader>``", function() Snacks.terminal.toggle() end, desc = "Get terminal" },
		{ "<Leader>`f", function() Snacks.explorer() end, desc = "Open file explorer" },
	}
}
