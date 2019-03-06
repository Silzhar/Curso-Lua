

local centerX = display.conterCenterX
local centerY = display.conterCenterY

local sound = audio.loadSound( "waterDrop" )

local geek = display.newImage( "superGeek.png", centerX, centerY )

function playSound( event )
	audio.play( sound )
	
end

geek:addEventListener( "touch", playSound )