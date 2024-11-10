-- Client keys script is responsible for configuring: client layout manipulation, maximized (unmaximized), and custom resize/move.
--
-- Standard Awesome library
local gears = require("gears")
local awful = require("awful")

local _M = {}
local modkey = RC.vars.modkey

local function set_custom_size(c, width, height)
	c.floating = not c.floating
	c.width = width
	c.height = height
	c.x = (c.screen.geometry.width - width) * 0.5
	c.y = (c.screen.geometry.height - height) * 0.5
end

local key_definitions = {
	{
		"toggle fullscreen",
		{ modkey },
		"f",
		function(c)
			c.fullscreen = not c.fullscreen
			c:raise()
		end,
	},
	{
		"close",
		{ modkey },
		"q",
		function(c)
			c:kill()
		end,
	},
	{
		"toggle floating",
		{ modkey, "Control" },
		"space",
		awful.client.floating.toggle,
	},
	{
		"move to master",
		{ modkey, "Control" },
		"Return",
		function(c)
			c:swap(awful.client.getmaster())
		end,
	},
	{
		"move to screen",
		{ modkey },
		"o",
		function(c)
			c:move_to_screen()
		end,
	},
	{
		"toggle keep on top",
		{ modkey },
		"t",
		function(c)
			c.ontop = not c.ontop
		end,
	},
	{
		"minimize",
		{ modkey },
		"n",
		function(c)
			-- The client currently has the input focus, so it cannot be
			-- minimized, since minimized clients can't have the focus.
			c.minimized = true
		end,
	},
	{
		"(un)maximize",
		{ modkey },
		"m",
		function(c)
			c.maximized = not c.maximized
			c:raise()
		end,
	},
	{
		"(un)maximize vertically",
		{ modkey, "Control" },
		"m",
		function(c)
			c.maximized_vertical = not c.maximized_vertical
			c:raise()
		end,
	},
	{
		"(un)maximize horizontally",
		{ modkey, "Shift" },
		"m",
		function(c)
			c.maximized_horizontal = not c.maximized_horizontal
			c:raise()
		end,
	},
	-- Custom fluff
	{
		"480px * 400px",
		{ modkey, "Mod1" },
		"Up",
		function(c)
			set_custom_size(c, 480, 400)
		end,
	},
	{
		"480px * 600px",
		{ modkey, "Mod1" },
		"Down",
		function(c)
			set_custom_size(c, 480, 600)
		end,
	},
	{
		"600px * 50%",
		{ modkey, "Mod1" },
		"Left",
		function(c)
			set_custom_size(c, 600, c.screen.geometry.height * 0.5)
		end,
	},
	{
		"800px * 50%",
		{ modkey, "Mod1" },
		"Right",
		function(c)
			set_custom_size(c, 800, c.screen.geometry.height * 0.5)
		end,
	},
}

local function map_key_definition(k)
	return awful.key(k[2], k[3], k[4], { description = k[1], group = "client" })
	-- TODO: Why bellow doesn't work
	-- return awful.key({
	-- 	description = k[1],
	-- 	modifiers = k[2],
	-- 	key = k[3],
	-- 	on_press = k[4],
	-- 	group = "client",
	-- })
end

function _M.get()
	local awful_keys = gears.table.map(map_key_definition, key_definitions)
	local clientkeys = gears.table.join(table.unpack(awful_keys))

	return clientkeys
end

return setmetatable({}, {
	__call = function(_)
		return _M.get()
	end,
})
