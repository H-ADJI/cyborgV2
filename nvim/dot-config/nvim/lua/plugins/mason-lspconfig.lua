return {
	"mason-org/mason-lspconfig.nvim",
	opts = { ensure_installed = { "lua_ls" } },
	keys = {
	},
	dependencies = {
		{
			"mason-org/mason.nvim", opts = {} },
		"neovim/nvim-lspconfig",
	},


}
