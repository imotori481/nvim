return {
  {
    "stevearc/oil.nvim",
    lazy = false,
    keys = {
      { "-", "<cmd>Oil<CR>", desc = "親ディレクトリを開く" },
    },
    opts = {
      view_options = { show_hidden = true },
    },
  },
  {
    "lewis6991/gitsigns.nvim",
    event = { "BufReadPre", "BufNewFile" },
    opts = {
      on_attach = function(bufnr)
        local gs = require("gitsigns")
        local map = function(mode, lhs, rhs, desc)
          vim.keymap.set(mode, lhs, rhs, { buffer = bufnr, desc = desc })
        end
        map("n", "]h", function() gs.nav_hunk("next") end, "次のhunk")
        map("n", "[h", function() gs.nav_hunk("prev") end, "前のhunk")
        map("n", "<leader>hs", gs.stage_hunk, "hunkをstage")
        map("n", "<leader>hr", gs.reset_hunk, "hunkをreset")
        map("n", "<leader>hp", gs.preview_hunk, "hunkをプレビュー")
        map("n", "<leader>hb", gs.blame_line, "行のblame")
        map("n", "<leader>hd", gs.diffthis, "diff表示")
      end,
    },
  },
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {
      spec = {
        { "<leader>s", group = "検索" },
        { "<leader>h", group = "Git hunk" },
        { "<leader>c", group = "コード" },
        { "<leader>d", group = "診断" },
      },
    },
  },
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    opts = {
      options = { theme = "vscode", globalstatus = true },
    },
  },
  {
    "echasnovski/mini.pairs",
    event = "InsertEnter",
    opts = {},
  },
  {
    "echasnovski/mini.surround",
    keys = { "sa", "sd", "sr" },
    opts = {},
  },
}
