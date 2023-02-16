local status, lualine = pcall(require, "lualine")
if not status then
	return
end

-- get lualine theme
local lualine_moonfly = require("lualine.themes.moonfly")

lualine_moonfly.command = {
	a = {
		gui = "bold",
		-- bg = new_colors.yellow,
		-- fg = new_colors.black, -- black
	},
}

-- configure lualine with modified theme
lualine.setup({
	options = {
		theme = lualine_moonfly,
	},
	sections = {
		-- lualine_a = { "mode" },
		-- lualine_c = { "branch" },
		lualine_x = { "filetype" },
		lualine_y = { "searchcount" },
	},
})
