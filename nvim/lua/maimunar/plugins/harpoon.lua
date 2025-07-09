return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = { "nvim-lua/plenary.nvim" },
  opts = {
    -- global_settings = {
    --   tabline = true,
    --   tabline_prefix = "   ",
    --   tabline_suffix = "   ",
    -- },
    menu = {
      width = vim.api.nvim_win_get_width(0) - 10,
    },
  },
  config = function()
    local harpoon = require("harpoon")
    local ui = require("bufferline.ui")
    harpoon.setup({})
    local keymap = vim.keymap

    keymap.set("n", "<leader>a", function()
      harpoon:list():add()
      ui.refresh()
    end)

    keymap.set("n", "<leader>m", function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end)

    keymap.set("n", "<leader>ra", function()
      harpoon:list():clear()
      ui.refresh()
    end, { desc = "Clear harpoon marks" })

    keymap.set("n", "<leader>rr", function()
      harpoon:list():remove()
      ui.refresh()
    end)

    local HARPOON_BUFFERS = 9

    for i = 1, HARPOON_BUFFERS do
      keymap.set("n", "<leader>" .. i, function()
        harpoon:list():select(i)
      end)
    end

    -- Toggle previous & next buffers stored within Harpoon list
    keymap.set("n", "<leader>p", function()
      harpoon:list():prev()
    end)
    keymap.set("n", "<leader>n", function()
      harpoon:list():next()
    end)
  end,
}
