-- Standard awesome library
local awful = require("awful")
-- Theme handling library
local beautiful = require("beautiful")

local _M = {}

-- reading
-- https://awesomewm.org/apidoc/libraries/awful.rules.html

function _M.get(clientkeys, clientbuttons, screen)
	local rules = {

		-- All clients will match this rule.
		{
			rule = {},
			properties = {
				border_width = beautiful.border_width,
				border_color = beautiful.border_normal,
				focus = awful.client.focus.filter,
				raise = true,
				keys = clientkeys,
				buttons = clientbuttons,
				screen = awful.screen.preferred,
				placement = awful.placement.no_overlap + awful.placement.no_offscreen,
				titlebars_enabled = false,
			},
		},

		-- Floating clients.
		{
			rule_any = {
				instance = {
					"DTA", -- Firefox addon DownThemAll.
					"copyq", -- Includes session name in class.
					"pinentry",
				},
				class = {
					"Arandr",
					"Blueman-manager",
					"Gpick",
					"Kruler",
					"MessageWin", -- kalarm.
					"Sxiv",
					"Tor Browser", -- Needs a fixed window size to avoid fingerprinting by screen size.
					"Wpa_gui",
					"veromix",
					"xtightvncviewer",
				},

				-- Note that the name property shown in xprop might be set slightly after creation of the client
				-- and the name shown there might not match defined rules here.
				name = {
					"Event Tester", -- xev.
				},
				role = {
					"AlarmWindow", -- Thunderbird's calendar.
					"ConfigManager", -- Thunderbird's about:config.
					"pop-up", -- e.g. Google Chrome's (detached) Developer Tools.
				},
			},
			properties = {
				floating = true,
			},
		},

		-- Add titlebars to dialogs
		{
			rule_any = {
				type = { "dialog" },
			},
			properties = {
				titlebars_enabled = true,
			},
		},

		-- Add rule for xfce4-appfinder to float and center
		{
			rule = { class = "Xfce4-appfinder" },
			properties = {
				titlebars_enabled = true,
				floating = true,
				ontop = true, -- Optional: Keeps it above other windows
				width = 0.35 * screen.primary.workarea.width,
				height = 0.5 * screen.primary.workarea.height,
				placement = function(c)
					awful.placement.centered(c, { honor_workarea = true })
				end,
			},
		},

		{
			rule = { class = "ViberPC" },
			properties = {
				titlebars_enabled = true,
				floating = true,
				width = 0.35 * screen.primary.workarea.width,
				height = 0.7 * screen.primary.workarea.height,
				placement = function(c)
					awful.placement.centered(c, { honor_workarea = true })
				end,
			},
		},

		{
			rule_any = {
				class = { "Nm-connection-editor" },
				name = { "Volume Control", "Network Connections" },
			},
			properties = {
				titlebars_enabled = true,
				floating = true,
				width = 0.35 * screen.primary.workarea.width,
				height = 0.7 * screen.primary.workarea.height,
				placement = function(c)
					awful.placement.centered(c, { honor_workarea = true })
				end,
			},
		},

		-- Set Firefox to always map on the tag named "2" on screen 1.
		-- { rule = { class = "Firefox" },
		--   properties = { screen = 1, tag = "2" } },
	}

	return rules
end

return setmetatable({}, {
	__call = function(_, ...)
		return _M.get(...)
	end,
})
