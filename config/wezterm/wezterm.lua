local wezterm = require("wezterm")
local config = {}

-- Appearance
-- Ligature and other symbols preview === => != 0O $ % @ r 󰰎  

-- Detect platform
local target = wezterm.target_triple

-- Set font size based on OS
if target:find("darwin") then
	config.font_size = 14.0 -- macOS
elseif target:find("linux") then
	config.font_size = 12.0 -- Linux
else
	config.font_size = 12.0 -- Fallback
end

-- See fonts in fonts.lua
--config.font = wezterm.font 'JetBrainsMono Nerd Font'
config.font = wezterm.font("FiraCode Nerd Font Mono")

--config.color_scheme = "Tomorrow Night (Gogh)"
--config.color_scheme = "Tomorrow Night Eighties"
--config.color_scheme = "Tomorrow Night Eighties (Gogh)"
--config.color_scheme = "Monokai (light) (terminal.sexy)"
--config.color_scheme = "Monokai (dark) (terminal.sexy)"
--config.color_scheme = "Tomorrow (light) (terminal.sexy)"
--config.color_scheme = "Solarized (light) (terminal.sexy)"
--config.color_scheme = "Catppuccin Latte" -- light
--config.color_scheme = "Catppuccin Frappe" -- dark
--config.color_scheme = "Catppuccin Macchiato" -- dark
--config.color_scheme = "Catppuccin Mocha" -- dark
--config.color_scheme = "Solarized (dark) (terminal.sexy)"
config.color_scheme = "Tomorrow (dark) (terminal.sexy)"
-- day moon night storm
config.color_scheme = "Tokyo Night"
-- config.color_scheme = "Tokyo Night Day"
-- config.color_scheme = "Tokyo Night Moon"
-- config.color_scheme = "tokyonight_moon"
-- config.color_scheme = "Tokyo Night Storm"
-- config.color_scheme = "Tokyo Night (Gogh)"

-- TODO: how to make this work when taking half the screen
--config.window_decorations = "INTEGRATED_BUTTONS|RESIZE"
config.window_decorations = "RESIZE"
--config.use_fancy_tab_bar = false
config.hide_tab_bar_if_only_one_tab = true

-- improve laggy feel
config.max_fps = 120

return config
