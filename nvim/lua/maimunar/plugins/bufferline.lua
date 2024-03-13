return {
  "akinsho/bufferline.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  version = "*",
  config = function()
    local bufferline = require("bufferline")

    bufferline.setup({
    options = {
      separator_style = "slant",
    },
  })
  local keymap = vim.keymap

  keymap.set("n", "<TAB>", "<CMD>BufferLineCycleNext<CR>", {desc = "Cycle to next buffer"})
  keymap.set("n", "<s-TAB>", "<CMD>BufferLineCyclePrev<CR>", {desc = "Cycle to next buffer"})
  keymap.set("n", "<leader>x", "<CMD>bp<bar>sp<bar>bn<bar>bd<CR>", {desc = "Close current buffer"})
  end
}
