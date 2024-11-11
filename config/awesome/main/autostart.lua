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
	M.run_once("nm-applet") -- Network Manager applet
	-- M.run_once("picom --no-fading-openclose") -- Compositor
	-- M.run_once("flameshot") -- Screenshot tool
end

return M
