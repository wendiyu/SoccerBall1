-----------------------------------------------------------------------------------------
--
-- main.lua
--Created by: Wendi Yu
--Created on: Feb 2018
--
-- how to add a event listener, so that when you touch an image you get feeback
--
-----------------------------------------------------------------------------------------

display.setDefault( "background", 0, 0.5, 0.5 )
local myText = display.newText( "Wendi,Yu", 1024, 200, native.systemFont, 142 )
myText:setFillColor( 1, 0.5, 0.5 )
local soccerBall = display.newImageRect("ball.png", 500, 480)
soccerBall.x = display.contentCenterX
soccerBall.y = display.contentCenterY
soccerBall.id = "ball object"

local function onObjectTouch( event )
	-- it is not perfect, but I will make it better soon
	print("Touched ball ")

	return true
end

soccerBall:addEventListener("touch", onObjectTouch )