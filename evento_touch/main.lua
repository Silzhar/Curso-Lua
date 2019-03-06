-- objeto y color
local myObject = display.newRoundedRect( 200, 200, 150, 150, 20 )
myObject:setFillColor( 0, 230, 0 )

-- evento touch
function myObject:touch( event )
    if event.phase == "began" then

	    self.markX = self.x
	    self.markY = self.y

    elseif event.phase == "moved" then

	    local x = (event.x - event.xStart) + self.markX
	    local y = (event.y - event.yStart) + self.markY

	    self.x,self.y = x, y 
    end
    return true 

end
-- listener para touch
myObject:addEventListener( "touch", myObject )