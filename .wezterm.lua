-- Pull in the wezterm API
local wezterm = require("wezterm")
local config = wezterm.config_builder()

local function scheme_for_appearance(appearance)
	if appearance:find("Dark") then
		return "Catppuccin Mocha"
	else
		return "Catppuccin Latte"
	end
end

config.color_scheme = scheme_for_appearance(wezterm.gui.get_appearance())
config.font = wezterm.font("JetBrains Mono")
config.font_size = 14
config.hide_tab_bar_if_only_one_tab = true
config.harfbuzz_features = { "calt=0", "clig=0", "liga=0" }

config.window_padding = {
	left = 0,
	right = 0,
	top = 0,
	bottom = 0,
}


-- config.window_decorations = "RESIZE"

config.window_close_confirmation = "NeverPrompt"

return config
