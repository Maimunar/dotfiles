-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap

---------------------
-- General Keymaps -------------------

-- use jk to exit insert mode
keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- delete single character without copying into register
keymap.set("n", "x", '"_x')

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" })
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" })
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" })
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" })
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" })

-- line numbers
keymap.set("n", "<leader>n", "<cmd> set nu! <CR>", { desc = "Toggle line number" })
keymap.set("n", "<leader>rn", "<cmd> set rnu! <CR>", { desc = "Toggle relative line number" })

-- Movement utility
keymap.set("n", "<CR>", "o<ESC>", { desc = "Newline in normal mode" })
keymap.set("n", "J", "5j", { desc = "Go 5 lines down" })
keymap.set("n", "K", "5k", { desc = "Gi 5 lines up" })
keymap.set("n", "H", "^", { desc = "Go to start of line" })
keymap.set("n", "L", "g_", { desc = "Go to end of line" })

-- Visual Mode utility
keymap.set("v", "<leader>s", ":sort<CR>", { desc = "Sort Selected Text" })
keymap.set("v", "J", "5j", { desc = "Go 5 lines down" })
keymap.set("v", "K", "5k", { desc = "Gi 5 lines up" })
