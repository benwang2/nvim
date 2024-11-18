return {
    "OXY2DEV/markview.nvim",

    dependencies = {
        -- You may not need this if you don't lazy load
        -- Or if the parsers are in your $RUNTIMEPATH
        "nvim-treesitter/nvim-treesitter",
        "nvim-tree/nvim-web-devicons"
    },

	config = function()
		require("markview").setup({
			buf_ignore = { "nofile" },
			modes = { "n", "no" },
  
			options = {
    		    on_enable = {},
    		    on_disable = {}
    		},

    		block_quotes = {},
    		checkboxes = {},
    		code_blocks = {},
    		headings = {},
    		horizontal_rules = {},
    		inline_codes = {},
    		links = {},
    		list_items = {},
    		tables = {}
		})
	end
}
