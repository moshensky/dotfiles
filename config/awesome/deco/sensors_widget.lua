local wibox = require("wibox")
local gears = require("gears")
local awful = require("awful")

-- Function to create the sensor widget
local function create_sensors_widget(sensor_paths, thresholds)
    -- Default thresholds if not provided
    thresholds = thresholds
        or {
            blue = 40, -- Cool
            green = 70, -- Normal
            orange = 85, -- High
            red = 100, -- Critical
        }

    -- Create the widget
    local sensors_widget = wibox.widget({
        {
            id = "text",
            widget = wibox.widget.textbox,
            font = "Monospace 10",
            text = "Sensors: Loading...",
        },
        -- wibox.container.margin ([widget[, left[, right[, top[, bottom[, color[, draw_empty]]]]]]])
        layout = wibox.container.margin(nil, 15, 0, 0),
    })

    -- Function to read sensor values and create an array of {label, value}
    local function get_sensor_data()
        local sensors = {}

        for _, sensor in ipairs(sensor_paths) do
            local handle = io.open(sensor.path, "r")
            if handle then
                local raw_value = handle:read("*all")
                handle:close()
                local value = tonumber(raw_value) and tonumber(raw_value) / 1000 or nil -- Convert to Celsius
                table.insert(sensors, { label = sensor.label, value = value })
            else
                table.insert(sensors, { label = sensor.label, value = nil }) -- Sensor unavailable
            end
        end

        return sensors
    end

    -- Function to color-code a value based on thresholds
    local function colorize_value(value)
        if not value then
            return '<span color="#888888">N/A</span>' -- Gray for unavailable sensors
        end

        local color
        if value < thresholds.blue then
            color = "#0000FF" -- Blue
        elseif value < thresholds.green then
            color = "#00FF00" -- Green
        elseif value < thresholds.orange then
            color = "#FFA500" -- Orange
        else
            color = "#FF0000" -- Red
        end

        -- return string.format('<span color="%s">%.1f°C %d</span>', color, value)
        local whole_number = math.floor(value + 0.5)
        return string.format('<span color="%s">%d°C</span>', color, whole_number)
    end

    -- Function to format sensor data into a colorized string
    local function format_sensor_data(sensors)
        local formatted = {}

        for _, sensor in ipairs(sensors) do
            local value_str = colorize_value(sensor.value)
            table.insert(formatted, string.format("%s: %s", sensor.label, value_str))
        end

        return table.concat(formatted, "  ") -- Join with spaces for separation
    end

    -- Function to update the widget
    local function update_widget(widget)
        local sensors = get_sensor_data()
        local formatted_text = format_sensor_data(sensors)
        widget:get_children_by_id("text")[1]:set_markup(formatted_text)
    end

    -- Update the widget periodically
    gears.timer({
        timeout = 5, -- Update every 5 seconds
        autostart = true,
        call_now = true,
        callback = function()
            update_widget(sensors_widget)
        end,
    })

    return sensors_widget
end

return create_sensors_widget
