-- lua/plugins/text-case.lua
return {
	"johmsalas/text-case.nvim",
	dependencies = { "nvim-telescope/telescope.nvim" },
	event = "VeryLazy",
	config = function()
		require("textcase").setup({})
		require("telescope").load_extension("textcase")

		-- which-key にグループ名を登録
		local wk = require("which-key")
		wk.add({
			{ "ga", group = "text-case", mode = { "n", "x" } },
			{ "ga.", "<cmd>TextCaseOpenTelescope<cr>", desc = "Telescope", mode = { "n", "x" } },
		})
	end,
}
