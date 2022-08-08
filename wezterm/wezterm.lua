local wezterm = require("wezterm")

return {
  font = wezterm.font 'Fira Code',
  color_scheme = 'Seafoam Pastel',
  font_size = 10,
  window_background_opacity = 0.9,
  window_padding = {
    left = 4,
    right = 4,
    top = 2,
    bottom = 1,
  },
  enable_tab_bar = false,
  check_for_updates = false,
  audible_bell = "Disabled",
}
