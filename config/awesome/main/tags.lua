-- Standard awesome library
local awful = require("awful")

local _M = {}

-- local function set_wallpaper(s)
-- 	-- Wallpaper
-- 	if beautiful.wallpaper then
-- 		local wallpaper = beautiful.wallpaper
-- 		-- If wallpaper is a function, call it with the screen
-- 		if type(wallpaper) == "function" then
-- 			wallpaper = wallpaper(s)
-- 		end
-- 		gears.wallpaper.maximized(wallpaper, s, true)
-- 	end
-- end
--
-- -- Re-set wallpaper when a screen's geometry changes (e.g. different resolution)
-- screen.connect_signal("property::geometry", set_wallpaper)

function _M.get()
	local tags = {}

	awful.screen.connect_for_each_screen(function(s)
		-- Wallpaper
		-- set_wallpaper(s)

		-- Each screen has its own tag table.
		tags[s] = awful.tag({
			"❶ ",
			"❷ ",
			"❸ ",
			"❹ ",
			"❺ ",
			"❻ ",
			"❼ ",
			"❽ ",
			"❾ ",
		}, s, RC.layouts[1])
	end)

	return tags
end

return setmetatable({}, {
	__call = function(_, ...)
		return _M.get(...)
	end,
})
