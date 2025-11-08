return {
	"mason-org/mason.nvim",
	keys = {
		{
			"<leader>cm",
			function()
				vim.cmd("Mason")
			end,
			mode = { "n", "v" },
			desc = "[F]ormat buffer",
		}
	},
	opts = {}
}
