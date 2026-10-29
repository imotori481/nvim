return {
  "nvim-treesitter/nvim-treesitter",
  -- main ブランチは tree-sitter CLI 必須の書き直し版なので master を使う
  branch = "master",
  build = ":TSUpdate",
  event = { "BufReadPost", "BufNewFile" },
  main = "nvim-treesitter.configs",
  opts = {
    ensure_installed = {
      "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline",
      "c", "cpp", "rust", "go", "gomod", "toml", "json", "yaml", "bash",
    },
    auto_install = false,
    highlight = { enable = true },
    indent = { enable = true },
    incremental_selection = {
      enable = true,
      keymaps = {
        init_selection = "<C-space>",
        node_incremental = "<C-space>",
        node_decremental = "<BS>",
      },
    },
  },
}
