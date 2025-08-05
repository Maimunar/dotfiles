return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local lualine = require("lualine")

    local colors = require("tokyonight.colors").setup({ transform = true })
    local myTheme = require("lualine.themes.tokyonight")
    myTheme.normal.c.bg = colors.bg
    myTheme.inactive.c.bg = colors.bg
    myTheme.normal.x = { fg = "#7aa2f7", bg = colors.bg }

    lualine.setup({
      options = {
        theme = myTheme,
        section_separators = { left = "", right = "" },
        component_separators = { left = "", right = "" },
      },
      sections = {
        lualine_c = {},
        lualine_x = {
          {
            "filename",
            file_status = true, -- displays file status (readonly status, modified status)
            path = 1, -- 0 = just filename, 1 = relative path, 2 = absolute path
          },
          { "searchcount" },
        },
        lualine_y = {},
        lualine_z = {},
      },
    })
  end,
}
