-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- 追加
vim.keymap.set("n", "mm", ":", { desc = "コマンドメニューを開く" })
vim.keymap.set("n", "<leader>wa", "<cmd>wa<cr>", { desc = "すべて保存" })
vim.keymap.set("n", "<leader>qa", "<cmd>qa<cr>", { desc = "保存せずにすべて閉じる" })

-- 挿入モードで jk を Esc に
vim.keymap.set("i", "jj", "<Esc>", { desc = "Escape" })
