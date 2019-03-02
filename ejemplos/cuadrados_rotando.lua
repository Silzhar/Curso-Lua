
local valorRotacion = 0
for i=1, 20 do

local centerX = display.contentCenterX -- localiza el centro de la pantalla(cualquier dispositivo)
local centerY = display.contentCenterY

local rectangulo = display.newRect( centerX, centerY, 400, 400 )

local valorColor = math.random(255)
rectangulo:setFillColor( valorColor/255, 0, 0 ) -- es igual a ( 255, 0, 0)hay 255 valores en el mismo tono

valorRotacion = valorRotacion + 10

rectangulo.rotation = valorRotacion
end

