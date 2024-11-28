local wibox = require("wibox")
local gears = require("gears")
local awful = require("awful")

-- Define paths and labels
local sensor_paths = {
	{ path = "/sys/class/hwmon/hwmon1/temp1_input", label = "NVMe" },
	{ path = "/sys/class/hwmon/hwmon2/temp1_input", label = "iGPU" },
	{ path = "/sys/class/hwmon/hwmon3/temp1_input", label = "CPU" },
	{ path = "/sys/class/hwmon/hwmon4/temp1_input", label = "System1" },
	{ path = "/sys/class/hwmon/hwmon4/temp2_input", label = "PCH" },
	{ path = "/sys/class/hwmon/hwmon4/temp3_input", label = "CPU2" },
	{ path = "/sys/class/hwmon/hwmon4/temp4_input", label = "PCIEx16" },
	{ path = "/sys/class/hwmon/hwmon4/temp5_input", label = "VRM MOS" },
	{ path = "/sys/class/hwmon/hwmon4/temp6_input", label = "ES_TEMP1" },
}

-- Temperature thresholds (in degrees Celsius)
local thresholds = {
	blue = 40, -- Cool
	green = 70, -- Normal
	orange = 85, -- High
	red = 96, -- Critical
}

-- Create a widget
local sensors_widget = wibox.widget({
	{
		id = "sensors_widget",
		widget = wibox.widget.textbox,
		font = "Monospace 10",
		text = "Sensors: Loading...",
	},
	layout = wibox.container.margin(_, _, _, 5),
})

-- Function to determine color based on temperature
local function get_color(temp)
	if temp < thresholds.blue then
		return "#0000FF" -- Blue
	elseif temp < thresholds.green then
		return "#00FF00" -- Green
	elseif temp < thresholds.orange then
		return "#FFA500" -- Orange
	else
		return "#FF0000" -- Red
	end
end

-- Function to read sensor values
local function read_sensors()
	local output = ""
	for _, sensor in ipairs(sensor_paths) do
		local handle = io.open(sensor.path, "r")
		if handle then
			local value = tonumber(handle:read("*all"))
			handle:close()
			if value then
				local temp = value / 1000 -- Convert to Celsius
				local color = get_color(temp)
				output = output .. string.format('<span color="%s">%s: %.1f°C</span>  ', color, sensor.label, temp)
			else
				output = output .. string.format('<span color="#888888">%s: N/A</span>  ', sensor.label)
			end
		else
			output = output .. string.format('<span color="#888888">%s: N/A</span>  ', sensor.label)
		end
	end
	return output
end

-- Function to update widget
local function update_widget(widget)
	local sensors_text = read_sensors()
	widget:get_children_by_id("sensors_widget")[1]:set_markup(sensors_text)
end

-- Update widget periodically
gears.timer({
	timeout = 5, -- Update every 5 seconds
	autostart = true,
	call_now = true,
	callback = function()
		update_widget(sensors_widget)
	end,
})

return sensors_widget
