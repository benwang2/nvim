return {
	"gelguy/wilder.nvim",
	opts = {
	-- your configuration comes here
	-- or leave it empty to use the default settings
	-- refer to the configuration section below
	},
	config = function()
		local wilder = require('wilder')
		wilder.setup({modes = {':', '/', '?'}})
	end
}
