return {
	"mason-org/mason-lspconfig.nvim",
	opts = {
		ensure_installed = { "lua_ls",
			"bashls",
			"ty" },
		-- instead of call vim.lsp.enable for each installed lsp :)
		automatic_enable = true
	},
	dependencies = {
		{ "mason-org/mason.nvim", opts = {} },
		"neovim/nvim-lspconfig",
	},
}
