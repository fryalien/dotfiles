-- ===============================
-- Keybindings for Neovim
-- ===============================

-- Leader key
vim.g.mapleader = " "  -- space as leader

-- Buffer navigation
vim.keymap.set("n", "<S-l>", ":bnext<CR>", { desc = "Next buffer" })
vim.keymap.set("n", "<S-h>", ":bprevious<CR>", { desc = "Previous buffer" })
vim.keymap.set("n", "<leader>fb", ":Telescope buffers<CR>", { desc = "Fuzzy find buffers" })
vim.keymap.set("n", "<leader>bd", ":bdelete<CR>", { desc = "Close buffer" })

-- Theme cycling
local themes = {"tokyonight", "rose-pine", "gruvbox", "brightburn"}
local index = 1
vim.keymap.set("n", "<leader>ct", function()
  index = index + 1
  if index > #themes then index = 1 end
  vim.cmd("colorscheme " .. themes[index])
end, { desc = "Cycle color themes" })

-- Lazy.nvim plugin manager
vim.keymap.set("n", "<leader>l", ":Lazy<CR>", { desc = "Open Lazy.nvim" })
vim.keymap.set("n", "<leader>p", ":Lazy sync<CR>", { desc = "Sync Lazy.nvim Plugins" })

-- Split navigation (Ctrl+h/j/k/l)
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Move to left split" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Move to right split" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Move to below split" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Move to above split" })

-- File explorer (Neo-tree)
vim.keymap.set("n", "<leader>e", ":Neotree toggle<CR>", { desc = "Toggle file explorer" })

-- Reload config without restarting
vim.keymap.set("n", "<leader>r", ":source $MYVIMRC<CR>", { desc = "Reload init.lua" })

-- Save file quickly
vim.keymap.set("n", "<leader>w", ":w<CR>", { desc = "Save file" })
