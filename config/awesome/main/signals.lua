-- Standard awesome library
local gears = require("gears")
local awful = require("awful")

-- Widget and layout library
local wibox = require("wibox")

-- Theme handling library
local beautiful = require("beautiful")

-- Signal function to execute when a new client appears.
client.connect_signal("manage", function(c)
    -- Set the windows at the slave,
    -- i.e. put it at the end of others instead of setting it master.
    if not awesome.startup then
        awful.client.setslave(c)
    end

    if awesome.startup and not c.size_hints.user_position and not c.size_hints.program_position then
        -- Prevent clients from being unreachable after screen count changes.
        awful.placement.no_offscreen(c)
    end
end)

-- Enable sloppy focus, so that focus follows mouse.
client.connect_signal("mouse::enter", function(c)
    c:emit_signal("request::activate", "mouse_enter", { raise = false })
end)

client.connect_signal("focus", function(c)
    c.border_color = beautiful.border_focus
end)
client.connect_signal("unfocus", function(c)
    c.border_color = beautiful.border_normal
end)

-- TODO: Evaluate this `preserve previously used tag between restarts`
-- and:
-- i have module for similar needs. its for awesome git version.
-- https://gist.github.com/aalhitennf/aff768ac1b060261959c8c513ddec6bc
-- its long time ago since i edited it and its customized for my own config but with small changes you should be able to make it work. you may need to create/change the prefdir.
-- lua json module can be found from here: https://github.com/rxi/json.lua
--
-- awesome.connect_signal("exit", function(reason_restart)
-- 	if not reason_restart then
-- 		return
-- 	end
--
-- 	local file = io.open("/tmp/awesomewm-last-selected-tags", "w+")
--
-- 	for s in screen do
-- 		file:write(s.selected_tag.index, "\n")
-- 	end
--
-- 	file:close()
-- end)
--
-- awesome.connect_signal("startup", function()
-- 	local file = io.open("/tmp/awesomewm-last-selected-tags", "r")
-- 	if not file then
-- 		return
-- 	end
--
-- 	local selected_tags = {}
--
-- 	for line in file:lines() do
-- 		table.insert(selected_tags, tonumber(line))
-- 	end
--
-- 	for s in screen do
-- 		local i = selected_tags[s.index]
-- 		local t = s.tags[i]
-- 		t:view_only()
-- 	end
--
-- 	file:close()
-- end)
