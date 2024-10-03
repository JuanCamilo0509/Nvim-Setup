return {
	"L3MON4D3/LuaSnip",
	version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
	dependencies = {
		"rafamadriz/friendly-snippets",
		config = function()
			require("luasnip.loaders.from_lua").load({ paths = "~/AppData/Local/nvim/lua/snippets/" })
			require("luasnip").config.set_config({
				enable_autosnippets = true,
				updateevents = "TextChanged, TextChangedI"
			})
		end
	}

}
