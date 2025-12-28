local wibox = require("wibox")
local gears = require("gears")

-- TODO: Update code to get values based on names and parsing the input
--[[
1. k10temp-pci-00c3 (AMD CPU Sensors)

    Tctl: 40.6°C (CPU Temperature)
    Tccd1: 28.8°C (Core 1 temperature)
    Tccd2: 30.4°C (Core 2 temperature)

2. amdgpu-pci-0300 (AMD GPU Sensors)

    vddgfx: 201.00 mV (GPU core voltage)
    fan1: 0 RPM (Fan speed — your fan might be idle or the sensor isn't reporting it correctly)
    edge: 34.0°C (Edge temperature of the GPU)
    junction: 44.0°C (Junction temperature of the GPU)
    mem: 54.0°C (Memory temperature of the GPU)
    PPT: 41.00 W (GPU Power consumption, with a max of 265W)

3. acpitz-acpi-0 (System/ACPI Temperature)

    temp1: 16.8°C (Ambient temperature)

4. gigabyte_wmi-virtual-0 (Additional System Temperatures, likely from your motherboard sensors)

    temp1 to temp6: These are various temperatures from different parts of your system, including components like the chipset, VRMs, or other sensors placed by your motherboard manufacturer. Here are the readings:
        temp1: 27.0°C
        temp2: 37.0°C
        temp3: 40.0°C
        temp4: 38.0°C
        temp5: 32.0°C
        temp6: 33.0°C

5. amdgpu-pci-1200 (Additional AMD GPU Sensors)

    vddgfx: 1.45 V (GPU core voltage)
    vddnb: 1.24 V (Northbridge voltage)
    edge: 33.0°C (Edge temperature of the GPU)
    PPT: 39.18 W (GPU Power consumption)

6. nvme-pci-0400 (NVMe SSD Sensors)

    Composite: 34.9°C (Overall SSD temperature)
    Sensor 1: 34.9°C (Sensor 1 temperature reading)
    Sensor 2: 37.9°C (Sensor 2 temperature reading)
]]

-- Function to create the sensor widget
local function create_sensors_widget(sensor_paths)
    -- Default thresholds by sensor type
    local preset_thresholds = {
        MB = { cool = 45, normal = 60, high = 75, critical = 100 },
        VRM = { cool = 45, normal = 70, high = 80, critical = 100 },
        PCIEx16 = { cool = 50, normal = 80, high = 90, critical = 100 },
        GPU = { cool = 40, normal = 70, high = 85, critical = 100 },
        CPU = { cool = 50, normal = 75, high = 95, critical = 105 },
        NVMe = { cool = 41, normal = 71, high = 85, critical = 95 },
        DEFAULT = { cool = 35, normal = 65, high = 85, critical = 95 },
    }

    -- Function to determine color based on temperature
    local function get_color(temp, thresholds)
        if not temp then
            return "#888888" -- Gray if no value
        elseif temp < thresholds.cool then
            return "#ffffff" -- White
        elseif temp < thresholds.normal then
            return "#00FF00" -- Green
        elseif temp < thresholds.high then
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
            local value = nil
            local handle = io.open(sensor.path, "r")
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
            return '<span color="#888888">N/A</span>'
        end
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
        return table.concat(formatted, " | ")
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
