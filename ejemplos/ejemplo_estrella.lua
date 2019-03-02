local halfw = display.contentWidth*0.5
local halfh = display.contentHeight*0.5

local vertices = {0,-110,27,-35,105,-35,43,16,65,90,0,45,-65,90,-43,15,-105,-35,-27,-35}

local estrella = display.newPolygon( halfw,halfh, vertices )

estrella:setFillColor( 0.5,0.1,0.9 )