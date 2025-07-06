return {
  "Exafunction/windsurf.vim",
  event = "BufEnter",
  config = function()
    local keymap = vim.keymap -- for conciceness
    keymap.set("n", "<leader>coe", "<CMD>CodeiumEnable<CR>", { desc = "Enable Codium" })
    keymap.set("n", "<leader>cod", "<CMD>CodeiumDisable<CR>", { desc = "Disable Codium" })
  end,
}
