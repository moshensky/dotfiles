local awful = require("awful")

local M = {}

-- Function to run a command if it's not already running
function M.run_once(cmd)
    local findme = cmd
    local firstspace = cmd:find(" ")
    if firstspace then
        findme = cmd:sub(1, firstspace - 1)
    end
    awful.spawn.easy_async_with_shell("pgrep -u $USER -x " .. findme .. " > /dev/null || " .. cmd)
end

-- List of autostart applications
function M.startup_apps()
    -- Network manager applet
    M.run_once("nm-applet --indicator")
    -- Screensaver
    M.run_once("xscreensaver -nosplash &")
    -- Automount usb disks
    M.run_once("udiskie --tray")

    -- M.run_once("blueman-applet") -- Bluetooth
    -- M.run_once("picom --no-fading-openclose") -- Compositor
    -- M.run_once("flameshot") -- Screenshot tool

    -- Set keyboard layout using setxkbmap
    awful.spawn.with_shell("setxkbmap -layout us,bg -variant ,phonetic -option grp:ctrl_space_toggle")
end

return M
