-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- WSL Ubuntu par défaut
config.default_domain = 'WSL:Ubuntu'

-- This is where you actually apply your config choices.

-- For example, changing the initial geometry for new windows:
config.initial_cols = 200
config.initial_rows = 50

-- or, changing the font size and color scheme.
config.font = wezterm.font("FiraCode Nerd Font")
-- ajout des ligatures
config.harfbuzz_features = {
  'calt=1',
  'clig=1',
  'liga=1',
}
config.font_size = 10
--config.color_scheme = 'Tokyo Night'
config.color_scheme = 'Catppuccin Mocha'

-- add background image 
--config.window_background_image = 'C:/Users/gizmo/wezterm/img.jpg'
--config.window_background_image_hsb = {
	-- darken background image 
--	brightness = 0.2,
	-- adjust scaling value
--	hue = 0.9,
	-- adjust saturation 
--	saturation = 0.7,
--}

-- set the transparence of the window
config.window_background_opacity = 0.96
config.text_background_opacity = 0.5

-- tab 
config.enable_tab_bar = true
config.hide_tab_bar_if_only_one_tab = false
--config.tab_bar_at_bottom = true
--config.use_fancy_tab_bar = false

-- Finally, return the configuration to wezterm:
return config
