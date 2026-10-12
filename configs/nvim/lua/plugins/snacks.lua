return {
  "folke/snacks.nvim",
  opts = {
    -- 削除時にゴミ箱(gio trash など)を使わず、直接削除する
    explorer = {
      trash = false,
    },
    picker = {
      sources = {
        explorer = {
          hidden = true,  -- 隠しファイルを表示
          ignored = true, -- .gitignore 対象も表示
        },
      },
    },
  },
}
