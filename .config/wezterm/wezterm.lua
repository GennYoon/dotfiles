local wezterm = require("wezterm")

wezterm.on("open-uri", function(window, pane, uri)
	local start, match_end = uri:find("mailto:")
	if start == 1 then
		local recipient = uri:sub(match_end + 1)
		window:perform_action(
			wezterm.action.SpawnCommandInNewWindow({
				args = { "mutt", recipient },
			}),
			pane
		)
		-- prevent the default action from opening in a browser
		return false
	end
	-- otherwise, by not specifying a return value, we allow later
	-- handlers and ultimately the default action to caused the
	-- URI to be opened in the browser
end)

return {
	adjust_window_size_when_changing_font_size = true,
	-- color_scheme = "nord",
	-- color_scheme = "Tokyo Night Moon",
	color_scheme = "Catppuccin Mocha",
	-- color_scheme = "Catppuccin Macchiato",
	enable_tab_bar = false,
	font_size = 13.0,
	font = wezterm.font("JetBrainsMonoNL Nerd Font"),
	macos_window_background_blur = 20,

	-- window_background_opacity = 1.0,
	window_background_opacity = 0.92,
	window_decorations = "RESIZE",
	keys = {
		{ key = "'", mods = "CTRL", action = wezterm.action.ClearScrollback("ScrollbackAndViewport") },
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
	},
	mouse_bindings = {
		-- Ctrl-click will open the link under the mouse cursor
		{
			event = { Up = { streak = 1, button = "Left" } },
			mods = "CTRL",
			action = wezterm.action.OpenLinkAtMouseCursor,
		},
	},
}
