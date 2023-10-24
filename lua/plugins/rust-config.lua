return {
	{
		"simrat39/rust-tools.nvim",
		lazy = false,
		config = function()
			local mason_registry = require("mason-registry")
			local codelldb = mason_registry.get_package("codelldb")
			local extension_path = codelldb:get_install_path() .. "/extension/"
			local codelldb_path = extension_path .. "adapter/codelldb"
			local liblldb_path = extension_path .. "lldb\\bin\\liblldb.dll"
			local adapter = require("rust-tools.dap").get_codelldb_adapter(codelldb_path, liblldb_path)
			local rt = require("rust-tools")
			rt.setup({
				dap = {
					adapter = adapter
				},
				server = {
					on_attach = function(_, bufnr)
						-- Open cargo
						vim.cmd('abb cargo RustOpenCargo<CR>')
						-- Hover actions
						vim.keymap.set("n", "<Leader><space>", rt.hover_actions.hover_actions, { buffer = bufnr })
						-- Code action groups
						vim.keymap.set("n", "<Leader><'>", rt.code_action_group.code_action_group, { buffer = bufnr })
					end,
				},
				tools = {
					hover_actions = {
						auto_focus = true,
					},
					inlay_hints = {
						auto = true,
						only_current_line = false,
						show_parameter_hints = true,
						parameter_hints_prefix = "󰞘 ",
						other_hints_prefix = "󰞘 ",
						max_len_align = false,
						max_len_align_padding = 1,
						right_align = false,
						right_align_padding = 7,
						highlight = "Comment",
					},
				}
			})
		end,
	},
	{
		'saecki/crates.nvim',
		tag = 'v0.4.0',
		dependencies = { 'nvim-lua/plenary.nvim' },
		config = function()
			require('crates').setup()
		end,
	}
}
