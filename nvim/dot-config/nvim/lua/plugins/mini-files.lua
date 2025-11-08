return {
	'nvim-mini/mini.files',
	version = false,
	config = function()
		require('mini.files').setup({})
	end,
	keys = {
		{
			'<leader>e',
			function()
				require("mini.files").open()
			end,
			desc = 'Open Mini Files',
		},
	},
}
