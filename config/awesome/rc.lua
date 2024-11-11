-- If LuaRocks is installed, make sure that packages installed through it are
-- found (e.g. lgi). If LuaRocks is not installed, do nothing.
pcall(require, "luarocks.loader")

-- Standard awesome library
local awful = require("awful")
require("awful.autofocus")
-- Theme handling library
local beautiful = require("beautiful")
local menubar = require("menubar")
-- Enable hotkeys help widget for VIM and other apps
-- when client with a matching name is opened:
require("awful.hotkeys_popup.keys")

-- Load freedesktop menu entries
-- local freedesktop = require("freedesktop")

-- Error handling
require("main.error-handling")

-- global namespace, on top before require any modules
RC = {}
RC.vars = require("main.user-variables")

-- Themes define colours, icons, font and wallpapers. NB! Has to be before menu.
beautiful.init("~/.config/awesome/theme.lua")

local modkey = RC.vars.modkey

-- Custom Local Library
local main = {
	layouts = require("main.layouts"),
	tags = require("main.tags"),
	menu = require("main.menu"),
	rules = require("main.rules"),
}

-- Custom Local Library: Keys and Mouse Binding
local binding = {
	globalbuttons = require("binding.globalbuttons"),
	clientbuttons = require("binding.clientbuttons"),
	globalkeys = require("binding.globalkeys"),
	bindtotags = require("binding.bindtotags"),
	clientkeys = require("binding.clientkeys"),
}

-- Layouts
RC.layouts = main.layouts()
awful.layout.layouts = RC.layouts

-- Tags
RC.tags = main.tags()

-- Menu
RC.mainmenu = awful.menu({ items = main.menu() })
-- Create a launcher widget and a main menu
RC.launcher = awful.widget.launcher({
	image = beautiful.awesome_icon,
	menu = RC.mainmenu,
	-- menu = freedesktop.menu.build({
	-- 	before = main.menu(),
	-- 	after = {},
	-- }),
})
-- Menubar configuration
menubar.utils.terminal = RC.vars.terminal -- Set the terminal for applications that require it

-- Mouse and Kye bindings
RC.globalkeys = binding.globalkeys()
RC.globalkeys = binding.bindtotags(RC.globalkeys)
-- Set root
-- Mouse bindings, aka right click menu
root.buttons(binding.globalbuttons())
root.keys(RC.globalkeys)

-- Rules
awful.rules.rules = main.rules(binding.clientkeys(), binding.clientbuttons(), screen)

-- Custom Local Library: Common Functional Decoration
require("deco.statusbar")
require("deco.titlebar")

-- Signals
require("main.signals")

-- Autostart
require("main.autostart").startup_apps()
