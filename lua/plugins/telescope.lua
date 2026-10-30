return {
  "nvim-telescope/telescope.nvim",
  cmd = "Telescope",
  dependencies = {
    "nvim-lua/plenary.nvim",
    { "nvim-telescope/telescope-fzf-native.nvim", build = vim.fn.has("win32") == 1 and "mingw32-make" or "make" },
  },
  keys = {
    { "<leader>sf", "<cmd>Telescope find_files<CR>", desc = "ファイル検索" },
    { "<leader>sg", "<cmd>Telescope live_grep<CR>", desc = "grep検索" },
    { "<leader>sw", "<cmd>Telescope grep_string<CR>", desc = "カーソル語をgrep" },
    { "<leader>sb", "<cmd>Telescope buffers<CR>", desc = "バッファ一覧" },
    { "<leader>sh", "<cmd>Telescope help_tags<CR>", desc = "ヘルプ検索" },
    { "<leader>sr", "<cmd>Telescope oldfiles<CR>", desc = "最近のファイル" },
    { "<leader>sd", "<cmd>Telescope diagnostics<CR>", desc = "診断一覧" },
    { "<leader>ss", "<cmd>Telescope lsp_document_symbols<CR>", desc = "シンボル一覧" },
    { "<leader><leader>", "<cmd>Telescope buffers<CR>", desc = "バッファ一覧" },
  },
  config = function()
    local telescope = require("telescope")
    telescope.setup({
      defaults = {
        sorting_strategy = "ascending",
        layout_config = { prompt_position = "top" },
      },
    })
    pcall(telescope.load_extension, "fzf")
  end,
}
