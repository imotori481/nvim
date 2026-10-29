return {
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"MunifTanjim/nui.nvim",
			"nvim-tree/nvim-web-devicons", -- optional, but recommended
		},
		lazy = false, -- neo-tree will lazily load itself
		keys = {
			{ "<leader>t", "<cmd>Neotree toggle<CR>", desc = "ファイルツリー切替" },
			{ "<leader>o", "<cmd>Neotree reveal<CR>", desc = "現在のファイルをツリーで表示" },
		},
	},
}
