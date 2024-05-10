return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = { "nvim-lua/plenary.nvim", "nvim-telescope/telescope.nvim" },
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
    local tab_ui = require("bufferline.ui")
    harpoon.setup({})

    -- basic telescope configuration
    local conf = require("telescope.config").values
    local function toggle_telescope(harpoon_files)
      local file_paths = {}
      for _, item in ipairs(harpoon_files.items) do
        table.insert(file_paths, item.value)
      end

      require("telescope.pickers")
        .new({}, {
          prompt_title = "Harpoon",
          finder = require("telescope.finders").new_table({
            results = file_paths,
          }),
          previewer = conf.file_previewer({}),
          sorter = conf.generic_sorter({}),
        })
        :find()
    end

    local keymap = vim.keymap

    keymap.set("n", "<leader>a", function()
      harpoon:list():add()
      tab_ui.refresh()
    end)

    keymap.set("n", "<leader>m", function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end)

    keymap.set("n", "<leader>ra", function()
      harpoon:list():clear()
      tab_ui.refresh()
    end, { desc = "Clear harpoon marks" })

    keymap.set("n", "<leader>rr", function()
      harpoon:list():remove()
      tab_ui.refresh()
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

    -- Telescope binding
    keymap.set("n", "<leader>t", function()
      toggle_telescope(harpoon:list())
    end, { desc = "Open harpoon window" })
  end,
}
