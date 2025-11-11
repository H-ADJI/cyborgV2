return {
	'stevearc/conform.nvim',
	keys = {
		{
			"<leader>gg",
			function()
				require("conform").format({ async = false, lsp_format = "fallback" })
			end,
			mode = { "n", "v" },
			desc = "[F]ormat buffer",
		},
	},
	opts = {},
}
