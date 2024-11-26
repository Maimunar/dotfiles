return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 500
  end,
  opts = {
    preset = "helix",
    delay = 0,
    win = {
      height = {
        max = math.huge,
      },
    },
    icons = {
      rules = false,
      breadcrumb = " ", -- symbol used in the command line area that shows your active key combo
      separator = "󱦰  ", -- symbol used between a key and it's label
      group = "󰹍 ", -- symbol prepended to a group
    },
  },
}
