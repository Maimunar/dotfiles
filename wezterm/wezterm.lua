local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.front_end = "WebGpu"
config.color_scheme = "tokyonight_night"
config.font = wezterm.font_with_fallback({
	"Fira Code",
	"MesloLGS Nerd Font Mono",
})
config.font_size = 13

config.enable_tab_bar = false
config.window_padding = {
	left = 5,
	right = 5,
	top = 5,
	bottom = 5,
}
config.window_decorations = "RESIZE"
-- and finally, return the configuration to wezterm
return config
