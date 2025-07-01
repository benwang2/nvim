-- return {}
return {
	"gelguy/wilder.nvim",
	priority = 100,
	opts = {
	-- your configuration comes here
	-- or leave it empty to use the default settings
	-- refer to the configuration section below
	},
	dependencies = {
		"romgrk/fzy-lua-native",
		"roxma/nvim-yarp"
	},
	config = function()

		local wilder = require('wilder')
		wilder.setup({modes = {':', '/', '?'}})

		local gradient = {
		  '#f4468f', '#fd4a85', '#ff507a', '#ff566f', '#ff5e63',
		  '#ff6658', '#ff704e', '#ff7a45', '#ff843d', '#ff9036',
		  '#f89b31', '#efa72f', '#e6b32e', '#dcbe30', '#d2c934',
		  '#c8d43a', '#bfde43', '#b6e84e', '#aff05b'
		}

		for i, fg in ipairs(gradient) do
			gradient[i] = wilder.make_hl('WilderGradient' .. i, 'Pmenu', {{a = 1}, {a = 1}, {foreground = fg}})
		end

		-- Disable Python remote plugin
		wilder.set_option('use_python_remote_plugin', 0)
		
		wilder.set_option('pipeline', {
		  wilder.branch(
		    wilder.cmdline_pipeline({
		      fuzzy = 1,
		      fuzzy_filter = wilder.lua_fzy_filter(),
		    }),
		    wilder.vim_search_pipeline()
		  )
		})

		wilder.set_option('renderer', wilder.renderer_mux({
			[':'] = wilder.popupmenu_renderer(
				wilder.popupmenu_border_theme({
					border = 'rounded',
					highlighter = wilder.lua_fzy_highlighter(),
		    		left = {
		    		  ' ',
		    		  wilder.popupmenu_devicons()
		    		},
		    		right = {
		    		  ' ',
		    		  wilder.popupmenu_scrollbar()
		    		},
					pumblend = 20,
				})
			),
			['/'] = wilder.popupmenu_renderer(
				wilder.popupmenu_border_theme({
					highlights = {
						gradient = gradient, -- must be set
					},
					highlighter = wilder.highlighter_with_gradient({
						wilder.lua_fzy_highlighter(),
  					}),
					pumblend = 20,
				})
			),
		}))
		
	end
}
