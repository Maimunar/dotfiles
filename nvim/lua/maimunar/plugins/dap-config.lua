-- debugging utility
return {
  "mfussenegger/nvim-dap",
  dependencies = { "rcarriga/nvim-dap-ui", "nvim-neotest/nvim-nio" },
  config = function()
    local dap, dapui = require("dap"), require("dapui")
    dapui.setup()

    dap.listeners.after.event_initialized["dapui_config"] = function()
      dapui.open()
    end

    dap.listeners.before.event_terminated["dapui_config"] = function()
      dapui.close()
    end

    dap.listeners.before.event_exited["dapui_config"] = function()
      dapui.close()
    end

    local keymap = vim.keymap -- for conciseness

    keymap.set("n", "<Leader>dt", "<CMD>DapToggleBreakpoint<CR>", { desc = "Toggle debug breakpoint" })
    keymap.set("n", "<Leader>dx", "<CMD>DapTerminate<CR>", { desc = "Terminate debugging" })
    keymap.set("n", "<Leader>ds", "<CMD>DapStepOver<CR>", { desc = "Debug Step Over" })
  end,
}
