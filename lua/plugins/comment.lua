return {
	'numToStr/Comment.nvim',
	opts = {
		toggler = {
			line = '<leader>cc',
		},
		extra = {
			eol = '<leader>ce',
			above = '<leader>cO',
			below = '<leader>co'
		},
		opleader = {
			block = '<leader>cc',
		}
	},
	lazy = false,
	event = "InsertEnter",
}
