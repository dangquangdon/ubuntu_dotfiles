local wezterm = require("wezterm")
local act = wezterm.action

local config = {
	font = wezterm.font("Fira Code"),
	color_scheme = "Seafoam Pastel",
	font_size = 10,
	window_background_opacity = 0.9,
	window_padding = {
		left = 4,
		right = 4,
		top = 4,
		bottom = 1,
	},
	enable_tab_bar = true,
	use_fancy_tab_bar = true,
	tab_max_width = 10,
	check_for_updates = false,
	audible_bell = "Disabled",
	warn_about_missing_glyphs = false,
	window_frame = {
		font_size = 10.0,
		active_titlebar_bg = "#333333",
		inactive_titlebar_bg = "#333333",
	},
}

config.keys = {}
for i = 1, 9 do
	-- ALT + number to activate that tab
	table.insert(config.keys, {
		key = tostring(i),
		mods = "ALT",
		action = act.ActivateTab(i - 1),
	})
end

return config
