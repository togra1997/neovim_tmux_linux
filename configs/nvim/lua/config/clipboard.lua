-- クリップボード設定(Mac / WSL / Devcontainer 共通)
-- 配置: ~/.config/nvim/lua/config/clipboard.lua
-- 読込: init.lua に require("config.clipboard") を追加

vim.opt.clipboard = "unnamedplus"

-- Mac(pbcopy)と WSL(win32yank.exe)は Neovim の自動検出に任せる
if vim.fn.executable("pbcopy") == 1 or vim.fn.executable("win32yank.exe") == 1 then
  return
end

-- 上記がない環境(Devcontainer など)は OSC 52 でコピーする。
-- paste は端末に問い合わせず、レジスタを返す(問い合わせると約10秒固まるため)
local osc52 = require("vim.ui.clipboard.osc52")
local function paste()
  return { vim.fn.getreg('"', 1, true), vim.fn.getregtype('"') }
end

vim.g.clipboard = {
  name = "OSC 52 (copy only)",
  copy = { ["+"] = osc52.copy("+"), ["*"] = osc52.copy("*") },
  paste = { ["+"] = paste, ["*"] = paste },
}
