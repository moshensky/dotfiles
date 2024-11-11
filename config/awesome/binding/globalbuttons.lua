-- Global mouse buttons and scroll wheel actions
--
-- Standard awesome library
local gears = require("gears")
local awful = require("awful")

local _M = {}

function _M.get()
	local globalbuttons = gears.table.join(
		-- Defines a button action for the right mouse button
		awful.button({}, 3, function()
			RC.mainmenu:toggle()
		end),
		-- Scrolls to the next tag (workspace) when the mouse wheel is scrolled down
		awful.button({}, 4, awful.tag.viewnext),
		-- Scrolls to the previous tag when the mouse wheel is scrolled down
		awful.button({}, 5, awful.tag.viewprev)
	)

	return globalbuttons
end

return setmetatable({}, {
	__call = function(_)
		return _M.get()
	end,
})
