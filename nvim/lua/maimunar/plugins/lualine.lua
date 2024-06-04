return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local lualine = require("lualine")
    local lazy_status = require("lazy.status")

    local colors = require("tokyonight.colors").setup({ transform = true })
    local myTheme = require("lualine.themes.tokyonight")
    myTheme.normal.c.bg = colors.bg
    myTheme.inactive.c.bg = colors.bg

    lualine.setup({
      options = {
        theme = myTheme,
      },
      sections = {
        lualine_c = {
          {
            "filename",
            file_status = true, -- displays file status (readonly status, modified status)
            path = 1, -- 0 = just filename, 1 = relative path, 2 = absolute path
          },
        },
        lualine_x = {
          {
            lazy_status.updates,
            cond = lazy_status.has_updates,
            color = { fg = "#ff9e64" },
          },
          { "filetype" },
          { "searchcount" },
        },
      },
    })
  end,
}
