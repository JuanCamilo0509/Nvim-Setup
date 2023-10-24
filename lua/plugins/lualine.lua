return {
	'nvim-lualine/lualine.nvim',
	dependencies = { 'nvim-tree/nvim-web-devicons' },
	opts = {
		options = {
			theme = 'auto',
			icons_enabled = true,
			component_separators = { left = '', right = '' },
			section_separators = { left = '', right = '' },
			disabled_filetypes = {
				statusline = {},
				winbar = {},
			},
			ignore_focus = {},
			always_divide_middle = true,
			globalstatus = true,
			refresh = {
				statusline = 1000,
				tabline = 1000,
				winbar = 1000,
			}
		},
		sections = {
			lualine_a = { { "filename" } },
			lualine_b = {},
			lualine_c = {
				{ "branch", icon = { '', align = 'right' }, { 'diff' } },
			},
			lualine_x = { "diagnostics" },
			lualine_y = {},
			lualine_z = { { 'filetype', colored = false, icon_only = true } },
			inactive_sections = {},
			tabline = {},
			winbar = {},
			inactive_winbar = {},
			extensions = {}
		}
	}
}
