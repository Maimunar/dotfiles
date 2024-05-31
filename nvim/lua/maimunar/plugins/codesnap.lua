return {
  "mistricky/codesnap.nvim",
  build = "make",
  keys = {
    { "<leader>cs", "<CMD>CodeSnap<CR>", mode = "x", desc = "Save selected code snapshot into clipboard" },
  },
  config = function()
    require("codesnap").setup({
      has_breadcrumbs = true,
      has_line_number = true,
      -- bg_theme = "grape",
      -- bg_color = "#1a1b26",
      watermark = "",
      mac_window_bar = false,
      code_font_family = "MesloLGS Nerd Font Mono",
    })
  end,
}
