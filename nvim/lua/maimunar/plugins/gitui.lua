return {
  "aspeddro/gitui.nvim",
  config = function()
    local gitui = require("gitui")
    gitui.setup()
    vim.keymap.set("n", "<leader>gu", "<CMD>Gitui<cr>", { desc = "Open Gitui" })
  end,
}
