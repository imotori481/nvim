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
		opts = {
			window = {
				width = 30,
			},
			filesystem = {
				filtered_items = {
					visible = true,
					hide_dotfiles = false,
					hide_gitignored = false,
					never_show_by_pattern = vim.fn.has("win32") == 1 and { "*.meta" } or {},
				},
			},
		},
	},
}
