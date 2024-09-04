-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- my coolnight colorscheme
config.colors = {
	foreground = "#CBE0F0",
	background = "#011423",
	cursor_bg = "#47FF9C",
	cursor_border = "#47FF9C",
	cursor_fg = "#011423",
	selection_bg = "#033259",
	selection_fg = "#CBE0F0",
	ansi = { "#214969", "#E52E2E", "#44FFB1", "#FFE073", "#0FC5ED", "#a277ff", "#24EAF7", "#24EAF7" },
	brights = { "#214969", "#E52E2E", "#44FFB1", "#FFE073", "#A277FF", "#a277ff", "#24EAF7", "#24EAF7" },
}

-- config.font = wezterm.font("MesloLGS Nerd Font Mono")
config.font = wezterm.font("JetBrainsMonoNL Nerd Font")
config.font_size = 16.5

config.enable_tab_bar = false

config.window_decorations = "RESIZE"

config.window_background_opacity = 0.75
config.macos_window_background_blur = 10

config.enable_scroll_bar = false

config.keys = {
	{ key = "LeftArrow", mods = "CMD", action = wezterm.action.SendString("^") },
	{ key = "RightArrow", mods = "CMD", action = wezterm.action.SendString("$") },

	{ key = ",", mods = "CMD", action = wezterm.action.SendString("\x14,") },
	{ key = "t", mods = "CMD", action = wezterm.action.SendString("\x14c") },

	{ key = "e", mods = "CMD", action = wezterm.action.SendString("\x14-") },
	{ key = "E", mods = "CMD", action = wezterm.action.SendString("\x14|") },

	{ key = "g", mods = "CMD", action = wezterm.action.SendString("\x14g") },
	{ key = "G", mods = "CMD", action = wezterm.action.SendString("\x14G") },

	{ key = "1", mods = "CMD", action = wezterm.action.SendString("\x141") },
	{ key = "2", mods = "CMD", action = wezterm.action.SendString("\x142") },
	{ key = "3", mods = "CMD", action = wezterm.action.SendString("\x143") },
	{ key = "4", mods = "CMD", action = wezterm.action.SendString("\x144") },
	{ key = "5", mods = "CMD", action = wezterm.action.SendString("\x145") },
	{ key = "6", mods = "CMD", action = wezterm.action.SendString("\x146") },
	{ key = "7", mods = "CMD", action = wezterm.action.SendString("\x147") },
	{ key = "8", mods = "CMD", action = wezterm.action.SendString("\x148") },
	{ key = "9", mods = "CMD", action = wezterm.action.SendString("\x149") },
}

return config
