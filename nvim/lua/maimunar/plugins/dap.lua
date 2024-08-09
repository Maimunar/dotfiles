-- debugging utility
return {
  "mfussenegger/nvim-dap",
  dependencies = { "rcarriga/nvim-dap-ui", "nvim-neotest/nvim-nio" },
  config = function()
    local dapui = require("dapui")
    dapui.setup()

    local keymap = vim.keymap -- for conciseness

    keymap.set("n", "<Leader>dt", "<CMD>DapToggleBreakpoint<CR>", { desc = "Toggle debug breakpoint" })
    keymap.set("n", "<Leader>dx", "<CMD>DapStop<CR>", { desc = "Terminate debugging" })
    keymap.set("n", "<Leader>ds", "<CMD>DapStepOver<CR>", { desc = "Debug Step Over" })
  end,
}
