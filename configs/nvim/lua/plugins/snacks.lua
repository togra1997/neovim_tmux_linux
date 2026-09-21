return {
  "folke/snacks.nvim",
  opts = {
    picker = {
      sources = {
        explorer = {
          hidden = true, -- 隠しファイルを表示
          ignored = true, -- .gitignore 対象も表示
        },
      },
    },
  },
}
