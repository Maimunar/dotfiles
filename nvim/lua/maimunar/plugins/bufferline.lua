return {
  "akinsho/bufferline.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  version = "*",
  event = "VeryLazy",

  opts = function()
    local colors = {
      fg = "#c0caf5",
      bg = "#292e42",
      fillbg = "#1a1b26",
    }

    vim.api.nvim_set_hl(0, "BufferLineFill", { bg = colors.fillbg })
    vim.api.nvim_set_hl(0, "MyHarpoonSelected", { fg = colors.fg, bg = colors.bg })
    return {
      options = {
        mode = "tabs",
        custom_areas = {
          left = function()
            local result = {}
            local items = require("harpoon"):list().items
            for i = 1, #items do
              local fn = items[i].value
              local fullpath = vim.fn.fnamemodify(fn, ":p")
              local name = " " .. i .. " " .. vim.fn.fnamemodify(fn, ":t") .. " "
              if fullpath == vim.fn.expand("%:p") then
                table.insert(result, { text = "│", link = "BufferLineIndicatorSelected" })
                table.insert(result, { text = name, link = "MyHarpoonSelected" })
                -- table.insert(result, { text = activename, link = "BufferLineBufferVisible" })
                -- table.insert(result, { text = "│", link = "BufferLineIndicatorSelected" })
              else
                -- print('inactive: ' .. name)
                table.insert(result, { text = name, link = "BufferLineBufferVisible" })
              end
            end
            return result
          end,
        },
      },
    }
  end,
}
-- Buffers setup
-- local keymap = vim.keymap
-- keymap.set("n", "<TAB>", "<CMD>BufferLineCycleNext<CR>", { desc = "Cycle to next buffer" })
-- keymap.set("n", "<s-TAB>", "<CMD>BufferLineCyclePrev<CR>", { desc = "Cycle to next buffer" })
-- keymap.set("n", "<leader>x", "<CMD>bp<bar>sp<bar>bn<bar>bd<CR>", { desc = "Close current buffer" })
