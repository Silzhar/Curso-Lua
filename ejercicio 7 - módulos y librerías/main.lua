
require "turtle" 
-- funciona al estar en la misma carpeta


function poligono(lados, paso)
  for i= 1, lados do
    move(paso)
    turn(360/lados)
  end
end

for i=1, 40 do
  poligono(7, 50)
  turn(10)
end

wait()
