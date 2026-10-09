require("claudecode").setup({
	-- ターミナル設定
	terminal_cmd = nil, -- nil = デフォルトの"claude"を使用
	-- または "~/.claude/local/claude"（ローカルインストール用）

	-- ターミナルプロバイダー
	provider = "snacks", -- "snacks" | "native" | "external"

	-- ウィンドウ設定
	split_side = "right", -- "left" | "right"
	split_width_percentage = 0.30, -- 幅30%

	-- 動作設定
	auto_close = true, -- アクション後にターミナルを自動的に閉じる
	focus_after_send = false, -- 送信後にClaudeにフォーカス
	track_selection = true, -- ビジュアル選択を追跡

	-- 作業ディレクトリ
	git_repo_cwd = true, -- gitルートをcwdとして使用
	-- cwd = "/path/to/project",    -- 静的パス
	-- cwd_provider = function(ctx) -- カスタム関数
	--   return vim.fn.getcwd()
	-- end,
})
