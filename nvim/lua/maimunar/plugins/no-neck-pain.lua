return {
  "shortcuts/no-neck-pain.nvim",
  version = "*",
  config = function()
    vim.keymap.set("n", "<leader>cc", "<CMD>NoNeckPain<cr>", { desc = "Move window to center of screen" })
  end,
}
