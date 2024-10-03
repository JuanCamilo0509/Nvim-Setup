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
			lualine_a = {
				{
					"buffers",
					hide_filename_extension = true,
					use_mode_colors = true,
					symbols = {
						modified = " ●",
						alternate_file = ""
					}
				}
			},
			lualine_b = { { "diagnostics" } },
			lualine_c = {},
			lualine_x = {
				{ "branch", icon = { '', align = 'right' }, { 'diff' } },
			},
			lualine_y = {},
			lualine_z = {
				{
					'filetype',
					colored = false,
					icon_only = true,
				}
			},
			inactive_sections = {},
			tabline = {},
			winbar = {},
			inactive_winbar = {},
			extensions = {}
		}
	}
}
