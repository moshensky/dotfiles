-- Standard awesome library
local gears = require("gears")
local awful = require("awful")

-- Wibox handling library
local wibox = require("wibox")
-- local vicious = require("vicious")

-- Custom Local Library: Common Functional Decoration
local deco = {
	wallpaper = require("deco.wallpaper"),
	taglist = require("deco.taglist"),
	tasklist = require("deco.tasklist"),
}

local taglist_buttons = deco.taglist()
local tasklist_buttons = deco.tasklist()

-- Awesome-wm-widgets
local mk_batteryarc_widget = require("awesome-wm-widgets.batteryarc-widget.batteryarc")
local mk_cpu_widget = require("awesome-wm-widgets.cpu-widget.cpu-widget")
local mk_net_speed_widget = require("awesome-wm-widgets.net-speed-widget.net-speed")
local mk_ram_widget = require("awesome-wm-widgets.ram-widget.ram-widget")
local mk_volume_widget = require("awesome-wm-widgets.volume-widget.volume")

local batteryarc_widget = mk_batteryarc_widget({
	show_current_level = true,
	-- arc_thickness = 1,
})
local cpu_widget = mk_cpu_widget({
	width = 70,
	step_width = 2,
	step_spacing = 0,
	color = "#434c5e",
	enable_kill_button = true,
})
local net_speed_widget = mk_net_speed_widget()
local ram_widget = mk_ram_widget()
local volume_widget = mk_volume_widget({
	widget_type = "arc", -- horizontal_bar, vertical_bar, icon, icon_and_text, arc
})

-- Widgets
-- Keyboard map indicator and switcher
local mykeyboardlayout = awful.widget.keyboardlayout()

-- {{{ Wibar
-- Create a textclock widget
local date_color = "#d791a8"
local time_color = "#ffffff"
-- local date_widget = wibox.widget.textclock("<span foreground='" .. date_color .. "'>%a %-d %b </span>", 60)
local time_widget = wibox.widget.textclock("<span foreground='" .. time_color .. "'>%l:%M %p  </span>", 1)

local function hlspan(text)
	return "<span foreground='" .. time_color .. "'>" .. text .. "</span>"
end

-- Wibar

awful.screen.connect_for_each_screen(function(s)
	-- Wallpaper
	set_wallpaper(s)

	-- Create a promptbox for each screen
	s.mypromptbox = awful.widget.prompt()

	-- Create an imagebox widget which will contain an icon indicating which layout we're using.
	-- We need one layoutbox per screen.
	s.mylayoutbox = awful.widget.layoutbox(s)
	s.mylayoutbox:buttons(gears.table.join(
		awful.button({}, 1, function()
			awful.layout.inc(1)
		end),
		awful.button({}, 3, function()
			awful.layout.inc(-1)
		end),
		awful.button({}, 4, function()
			awful.layout.inc(1)
		end),
		awful.button({}, 5, function()
			awful.layout.inc(-1)
		end)
	))

	-- Create a taglist widget
	s.mytaglist = awful.widget.taglist({
		screen = s,
		filter = awful.widget.taglist.filter.all,
		buttons = taglist_buttons,
	})

	-- Create a tasklist widget
	s.mytasklist = awful.widget.tasklist({
		screen = s,
		filter = awful.widget.tasklist.filter.currenttags,
		buttons = tasklist_buttons,
	})

	-- Create the wibox
	s.mywibox = awful.wibar({ position = "top", screen = s })

	-- Add widgets to the wibox
	s.mywibox:setup({
		layout = wibox.layout.align.horizontal,
		{ -- Left widgets
			layout = wibox.layout.fixed.horizontal,
			RC.launcher,
			s.mytaglist,
			s.mypromptbox,
		},
		s.mytasklist, -- Middle widget
		{ -- Right widgets
			layout = wibox.layout.fixed.horizontal,
			batteryarc_widget,
			net_speed_widget,
			cpu_widget,
			ram_widget,
			volume_widget,
			mykeyboardlayout,
			wibox.widget.systray(),
			-- date_widget,
			time_widget,
			s.mylayoutbox,
		},
	})
end)
