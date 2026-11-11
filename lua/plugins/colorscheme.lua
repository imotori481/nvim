return {
  "Mofiqul/vscode.nvim",
  lazy = false,
  priority = 1000,
  opts = {
    style = "dark",           -- VSCode の Dark+ テーマ
    transparent = true,       -- 背景を透過する
    italic_comments = false,  -- コメントを斜体にしない
    disable_nvimtree_bg = true,
  },
  config = function(_, opts)
    require("vscode").setup(opts)
    vim.cmd.colorscheme("vscode")
  end,
}
