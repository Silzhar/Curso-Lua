
local physics = require("physics")

physics.start( )
physics.setScale( 20 )

_W = display.contentWidth
_H = display.contentHeight

local bola = display.newCircle( 100, 200, 15 )

physics.addBody( bola, "dynamic", {density=1.0, friction=0.4,bounce=0.4} )

local suelo1 = display.newRect(  x, y, width, height )