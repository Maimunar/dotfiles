return {
  "github/copilot.vim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local keymap = vim.keymap -- for conciceness

    keymap.set("n", "<leader>coe", "<CMD>Copilot enable<CR>", { desc = "Enable Copilot" })
    keymap.set("n", "<leader>cod", "<CMD>Copilot disable<CR>", { desc = "Disable Copilot" })
    keymap.set("n", "<leader>cop", "<CMD>Copilot panel<CR>", { desc = "Copilot Panel of suggestions" })
  end,
}
