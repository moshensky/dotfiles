local wibox = require("wibox")
local gears = require("gears")

-- Function to create the sensor widget
local function create_sensors_widget(sensor_paths)
    -- Default thresholds by sensor type
    local preset_thresholds = {
        MB = { cool = 45, normal = 60, high = 75, critycal = 100 },
        VRM = { cool = 45, normal = 70, high = 80, critycal = 100 },
        PCIEx16 = { cool = 50, normal = 80, high = 90, critycal = 100 },
        GPU = { cool = 40, normal = 70, high = 85, critycal = 100 },
        CPU = { cool = 50, normal = 75, high = 95, critycal = 105 },
        NVMe = { cool = 41, normal = 71, high = 85, critycal = 95 },
        DEFAULT = { cool = 35, normal = 65, hight = 85, critycal = 95 },
    }

    -- Function to determine color based on temperature
    local function get_color(temp, thresholds)
        if temp < thresholds.cool then
            return "#ffffff" -- White
        elseif temp < thresholds.normal then
            return "#00FF00" -- Green
        elseif temp < thresholds.hight then
            return "#FFA500" -- Orange
        else
            return "#FF0000" -- Red
        end
    end

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
            local value = nil
            if handle then
                local raw_value = handle:read("*all")
                handle:close()
                -- Convert to Celsius
                value = tonumber(raw_value) and tonumber(raw_value) / 1000 or nil
            end

            table.insert(sensors, {
                label = sensor.label,
                value = value,
                thresholds = preset_thresholds[sensor.type] or preset_thresholds.DEFAULT,
            })
        end

        return sensors
    end

    -- Function to color-code a value based on thresholds
    local function colorize_value(value, color)
        if not value then
            return '<span color="#888888">N/A</span>' -- Gray for unavailable sensors
        end

        -- return string.format('<span color="%s">%.1f°C</span>', color, value)
        local whole_number = math.floor(value + 0.5)
        return string.format('<span color="%s">%d°C</span>', color, whole_number)
    end

    -- Function to format sensor data into a colorized string
    local function format_sensors_data(sensors)
        local formatted = {}

        for _, sensor in ipairs(sensors) do
            local color = get_color(sensor.value, sensor.thresholds)
            local value_str = colorize_value(sensor.value, color)
            table.insert(formatted, string.format("%s: %s", sensor.label, value_str))
        end

        return table.concat(formatted, "|") -- Join with spaces for separation
    end

    -- Function to update the widget
    local function update_widget(widget)
        local sensors = get_sensor_data()
        local formatted_text = format_sensors_data(sensors)
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
