-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap

---------------------
-- General Keymaps -------------------

-- use jk to exit insert mode
keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

-- center screen on moving larger amounts of lines
keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Move down and center screen" })
keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Move up and center screen" })

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

-- Quickfix shortcuts
keymap.set("n", "<leader>qo", "<CMD>copen<CR>", { desc = "Open Quickfix List" })
keymap.set("n", "<leader>qq", "<CMD>cclose<CR>", { desc = "Close Quickfix List" })
keymap.set("n", "<leader>qn", "<CMD>cnext<CR>", { desc = "Go to Next Quickfix Item" })
keymap.set("n", "<leader>qp", "<CMD>cprevious<CR>", { desc = "Go To Previous Quickfix Item" })

-- Movement to specific places
-- Items
keymap.set("n", "[a", "<CMD>previous<CR>", { desc = "Go to previous" })
keymap.set("n", "]a", "<CMD>next<CR>", { desc = "Go to next" })
keymap.set("n", "[A", "<CMD>first<CR>", { desc = "Go to first" })
keymap.set("n", "]A", "<CMD>last<CR>", { desc = "Go to last" })
-- Quickfix
keymap.set("n", "[q", "<CMD>cprevious<CR>", { desc = "Go to previous quickfix item" })
keymap.set("n", "]q", "<CMD>cnext<CR>", { desc = "Go to next quickfix item" })
keymap.set("n", "[Q", "<CMD>cfirst<CR>", { desc = "Go to first quickfix item" })
keymap.set("n", "]Q", "<CMD>clast<CR>", { desc = "Go to last quickfix item" })
-- Tabs
keymap.set("n", "[t", "<CMD>tprevious<CR>", { desc = "Go to previous tab" })
keymap.set("n", "]t", "<CMD>tnext<CR>", { desc = "Go to next tab" })
keymap.set("n", "[T", "<CMD>tfirst<CR>", { desc = "Go to first tab" })
keymap.set("n", "]T", "<CMD>tlast<CR>", { desc = "Go to last tab" })

keymap.set("n", "<leader>bq", "<CMD>bufdo bwipeout<CR>", { desc = "Close all buffers" })
