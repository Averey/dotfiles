-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

map("n", "sp", "`[v`]", { desc = "[S]elect [P]aste" })

map("n", "<leader>\\", "<C-W>v", { desc = "Split Window Right(Vertical)" })
map("n", "<leader>q", "<C-W>q", { desc = "Quit a window" })
map("n", "<leader>w", "<cmd>w<CR>", { desc = ":write" })
map({ "n", "i" }, "<C-s>", "<cmd>wa<CR>", { desc = "save all" })

map("n", "<Tab>", "<C-^>", { desc = "Switch between buffers" })
map("n", "-", "<C-^>", { desc = "Switch between buffers" })

map("n", "<leader>;", "mqA;<Esc>`q", { desc = "Add ; at end of line" })
map("n", "<leader>,", "mqA,<Esc>`q", { desc = "Add , at end of line" })

-- 恢复 H 为跳到屏幕顶部
map("n", "H", "H", { noremap = true, silent = true })
map("n", "L", "L", { noremap = true, silent = true })
