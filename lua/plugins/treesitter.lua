return {
  "nvim-treesitter/nvim-treesitter",
	dependecies = {
		"nvim-treesitter/nvim-treesiter-textobjects"
	},
	build = ":TSUpdate",
	event = "VeryLazy",
	main = "nvim-treesitter.configs",
	opts = {
		ensure_installed = {
			"lua",
			"rust",
			"ron",
			"toml",
			"luadoc"
		},
		highlight = {
			enable = true,
		},
		indent = {
			enable = true,
		},
		textobjects = {
			select = {
				enable = true,
				lookaahead = true,
			}
		}
	}
}
