-----------------------------------------------------------------------------------------
--
-- main.lua
--
------------------------------ -----------------------------------------------------------
local physics = require"physics"

physics.start( )

local centerX = display.contentCenterX
local centerY = display.contentCenterY
local alto = display.contentHeight   -- alto total
local ancho = display.contentWidth -- ancho general

local pelota = display.newCircle( 200, 140, 25 )
physics.addBody( pelota, "dynamic", {density=0.8 ,friction=0.2 ,bounce=0.8 })

-- plataforma superior
local plataforma = display.newRect(ancho/4, centerY-200,ancho/2, 14)
physics.addBody(plataforma,"static", {density=0.9, friction=0.1, bounce=0.8})

-- plataforma central
local plataforma = display.newRect(ancho-80, centerY,ancho/2, 14)
physics.addBody(plataforma,"static", {density=0.9, friction=0.1, bounce=0.8})

-- plataforma inferior 
local plataforma = display.newRect(ancho/4, centerY+220,ancho/2, 14)
physics.addBody(plataforma,"static", {density=0.9, friction=0.1, bounce=0.8})

-- plataforma "flotante"
local plataforma = display.newRect(ancho/2, centerY+420,ancho/2, 14)
physics.addBody(plataforma,"static", {density=0.9, friction=0.1, bounce=0.8})

-- pared izquierda
local plataforma = display.newRect(0, 0,ancho/24, alto*2)
physics.addBody(plataforma,"static", {density=0.9, friction=0.1, bounce=0.8})

-- pared derecha
local plataforma = display.newRect(640, 0,ancho/24, alto*2)
physics.addBody(plataforma,"static", {density=0.9, friction=0.1, bounce=0.8})

-- conjunto de bloques (cuadrados)
for i=1,4 do
local bloque = display.newRect( centerX-40, centerY-390 + 30 * i, 40, 40)
physics.addBody( bloque,"dynamic", {density=0.9, friction=0.1, bounce=0.4})
end

local suelo = display.newRect( centerX, alto, ancho, 20 )

physics.addBody( suelo, "static", {density=0.9, friction=0.4, bounce=0.8})

-- funcion de lanzamiento de objeto 
function circleTouched(event)

if event.phase == "began" then
	display.getCurrentStage():setFocus(pelota)
	elseif event.phase == "ended" then
		pelota:applyLinearImpulse( event.xStart - event.x , event.yStart - event.y, pelota.x, pelota.y)
		display.getCurrentStage():setFocus(nil)
	end
end

pelota:addEventListener( "touch", circleTouched )

