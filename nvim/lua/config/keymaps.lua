-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("i", "jj", "<Esc>")

vim.keymap.set("i", "<A-i>", "<C-6>")
vim.keymap.set("n", "<A-i>", "a<C-6><Esc>")
