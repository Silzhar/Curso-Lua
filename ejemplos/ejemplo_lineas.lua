local centroX = display.contentCenterX -- localiza el centro de la pantalla(cualquier dispositivo)
local centroY = display.contentCenterY

local linea = display.newLine(centroX, centroY, 200, 200)
linea:setStrokeColor( 0, 1, 0)
linea.strokeWidth = 20

linea:append( 0, 0 )
linea:append(320, 0)
