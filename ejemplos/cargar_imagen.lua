-- coordenadas para centrar la imagen
local halfw = display.viewableContentWidth / 2
local halfh = display.viewableContentHeight / 2

-- ocultar status bar ( barra de estado)
display.setStatusBar( display.HiddenStatusBar )

-- cargar imagen 
local background = display.newImage( "401.jpg",halfw, halfh)
