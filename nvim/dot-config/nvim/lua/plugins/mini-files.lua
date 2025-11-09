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
				if not MiniFiles.close() then MiniFiles.open() end
			end,
			desc = 'Open Mini Files',
		},
		{
			'<Esc>',
			function()
				if not MiniFiles.close() then vim.cmd(":nohlsearch") end
			end,
			desc = 'Open Mini Files',
		},
	},
}
