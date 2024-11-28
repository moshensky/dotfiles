-- Standard awesome library
local gears = require("gears")
local awful = require("awful")

-- Wibox handling library
local wibox = require("wibox")

-- Custom Local Library: Common Functional Decoration
local deco = {
	wallpaper = require("deco.wallpaper"),
	taglist = require("deco.taglist"),
	tasklist = require("deco.tasklist"),
}

local taglist_buttons = deco.taglist()
local tasklist_buttons = deco.tasklist()

-- Awesome-wm-widgets
local mk_cpu_widget = require("awesome-wm-widgets.cpu-widget.cpu-widget")
local mk_net_speed_widget = require("awesome-wm-widgets.net-speed-widget.net-speed")
local mk_ram_widget = require("awesome-wm-widgets.ram-widget.ram-widget")

local cpu_widget = mk_cpu_widget({
	width = 70,
	step_width = 2,
	step_spacing = 0,
	color = "#434c5e",
	-- enable_kill_button = true,
})
local net_speed_widget = mk_net_speed_widget()
local ram_widget = mk_ram_widget()

-- Widgets
-- Keyboard map indicator and switcher
mykeyboardlayout = awful.widget.keyboardlayout({ country_codes = { "us", "bg" } })

-- {{{ Wibar
-- Create a textclock widget
local date_color = "#d791a8"
local time_color = "#ffffff"
local date_widget = wibox.widget.textclock("<span foreground='" .. date_color .. "'>%a %-d %b </span>", 60)
local time_widget = wibox.widget.textclock("<span foreground='" .. time_color .. "'>%l:%M %p  </span>", 1)

local function hlspan(text)
	return "<span foreground='" .. time_color .. "'>" .. text .. "</span>"
end

-- Sensors widget
-- NVMe PCI temp: cat /sys/class/hwmon/hwmon1/temp1_input
-- iGPU temp: cat /sys/class/hwmon/hwmon2/temp1_input
-- CPU temp: cat /sys/class/hwmon/hwmon3/temp1_input
-- MB (temp1) System1 temp: cat /sys/class/hwmon/hwmon4/temp1_input
-- MB (temp2) PCH temp: cat /sys/class/hwmon/hwmon4/temp2_input
-- MB (temp3) CPU temp: cat /sys/class/hwmon/hwmon4/temp3_input
-- MB (temp4) PCIEX16 temp: cat /sys/class/hwmon/hwmon4/temp4_input
-- MB (temp5) VRM MOS temp: cat /sys/class/hwmon/hwmon4/temp5_input
-- MB (temp6) ES_TEMP1 temp: cat /sys/class/hwmon/hwmon4/temp6_input
--
local sensors_widget = awful.widget.watch("sensors", 15, function(widget, stdout)
	for line in stdout:gmatch("[^\r\n]+") do
		if line:match("temp1") then
			widget:set_text(line)
			return
		end
	end
end)

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
			wibox.widget.systray(),
			net_speed_widget,
			cpu_widget,
			ram_widget,
			mykeyboardlayout,
			-- date_widget,
			time_widget,
			s.mylayoutbox,
		},
	})
end)
