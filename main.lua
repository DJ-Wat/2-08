-----------------------------------------------------------------------------------------
--
-- main.lua
--
-- Created by: Mr. Coxall
-- Created on: Jan 2018
-- 
-- This file makes an object scroll across the screen
-----------------------------------------------------------------------------------------

-- hide the status bar
display.setStatusBar(display.HiddenStatusBar)

-- local variables to this entire file
local scrollSpeed = 5
local scrollSpeed2 = -2

-- background image with width and height
local backgroundImage = display.newImageRect("./assets/textures/background.png", 2048, 1536)
backgroundImage.x = display.contentCenterX
backgroundImage.y = display.contentCenterY
backgroundImage.ID = "winter background image"

-- character image with width and height
local snowman = display.newImageRect("./assets/sprites/SnowMan.png", 193, 210)
snowman.x = 0
snowman.y = display.contentHeight - 200 
snowman.ID = "snowman"
local star = display.newImageRect("./assets/sprites/star.png", 286, 420)
star.x = 2000
star.y = display.contentHeight - 1200
star.ID = "star"

local function MoveImage(event)
	-- add the scroll speed to the x-value of the image
    snowman.x = snowman.x + scrollSpeed
    star.x = star.x + scrollSpeed2
    print( display.fps )  -- note this displays how fast the current refresh is
end

-- MoveSnowman will be called at program start over and over (60 frames or times per second)
Runtime:addEventListener("enterFrame", MoveImage)