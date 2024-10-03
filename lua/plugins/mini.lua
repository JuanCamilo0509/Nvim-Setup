return {
	{ 'echasnovski/mini.nvim' },
	{
		'echasnovski/mini.indentscope',
		config = function()
			require('mini.indentscope').setup()
		end
	}
}
