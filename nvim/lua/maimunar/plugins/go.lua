return {
  "ray-x/go.nvim",
  dependencies = { -- optional packages
    "theHamsta/nvim-dap-virtual-text",
    "ray-x/guihua.lua",
    "neovim/nvim-lspconfig",
    "nvim-treesitter/nvim-treesitter",
  },
  event = { "CmdlineEnter" },
  ft = { "go", "gomod" },
  build = ':lua require("go.install").update_all_sync()', -- if you need to install/update all binaries
  config = function()
    require("go").setup()
    -- format on save
    local format_sync_grp = vim.api.nvim_create_augroup("GoFormat", {})
    vim.api.nvim_create_autocmd("BufWritePre", {
      pattern = "*.go",
      callback = function()
        require("go.format").goimports()
      end,
      group = format_sync_grp,
    })
    -- keymaps
    local keymap = vim.keymap
    keymap.set("n", "<leader>gb", "<CMD>GoBuild<CR>", { desc = "Go build" })
    keymap.set("n", "<leader>gd", "<CMD>GoDebug<CR>", { desc = "Go debug" })
    keymap.set("n", "<leader>gat", "<CMD>GoAddTest<CR>", { desc = "Go add test for current function" })
    keymap.set("n", "<leader>gta", "<CMD>GoTest<CR>", { desc = "Go test" })
    keymap.set("n", "<leader>gtf", "<CMD>GoTestFunc<CR>", { desc = "Go test function" })
    keymap.set("n", "<leader>gtp", "<CMD>GoTestPkg<CR>", { desc = "Go test package" })
    keymap.set("n", "<leader>gx", "<CMD>GoTermClose<CR>", { desc = "Close test terminal" })
    keymap.set("n", "<leader>gr", "<CMD>GoRename<CR>", { desc = "Go rename" })
    keymap.set("n", "<leader>ge", "<CMD>GoIfErr<CR>", { desc = "Go add if err statement" })

    -- override dap keymaps for go
    keymap.set("n", "<Leader>dt", "<CMD>GoBreakToggle<CR>", { desc = "Toggle debug breakpoint" })
    keymap.set("n", "<Leader>dx", "<CMD>GoDbgStop<CR>", { desc = "Terminate debugging" })
    keymap.set("n", "<Leader>ds", "<CMD>GoDbgContinue<CR>", { desc = "Debug Step Over" })
  end,
}
