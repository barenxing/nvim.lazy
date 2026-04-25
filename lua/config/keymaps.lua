-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set

-- encrypt/decrypt with rot13
map("n", "<leader>rot13", "ggVGg?", { desc = "Encrypt with [rot13]" })
map("v", "<leader>rot13", "g?", { desc = "Encrypt with [rot13]" })
