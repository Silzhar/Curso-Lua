local physics = require("physics")

physics.start( )

local centerX = display.contentCenterX
local centerY = display.contentCenterY

local _W = display.contentWidth
local _H = display.contentHeight

display.setStatusBar( display.HiddenStatusBar )

-- fondo
local bkg = display.newImage( "selva.png", centerX, centerY )

-- suelo
local suelo = display.newRect(  centerX, _H - 1, _W, 2 )
physics.addBody( suelo, "static", { density=1, friction=0.4, bounce=0} )

-- torres 
for i=1, 4 do
	-- bloques torres
	for j=1, i do
		--bloques
		local crate = display.newImage("crate2.png", centerX+ 80*i , centerY - j* 60)
		physics.addBody( crate, "dynamic", {density= 0.5, friction=1, bounce=0  } )

	end
	-- hipster
	local hipster = display.newImage( "Hipster.png", centerX+80*i , centerY-30-5*62 )
	physics.addBody( hipster, "dynamic", {density= 1, friction=0.8, bounce=0.2  } )

end


