-- función local sin parámetros
local function nombre1()
  print("Miguel de Cervantes Saavedra")
  
end
nombre1()

--  función local con parámetros de entrada
local function nombre2(escritor)
  print(escritor)
  
end
nombre2("Miguel de Cervantes Saavedra")

-- función con parámetros a variables
local function nombre3(nombreEscritor)  -- función
  print(nombreEscritor)
end

local miguel = nombre3  -- variable 
miguel("Miguel de Cervantes Saavedra")
-- es posible llamar a la misma información desde función y desde variable

local function nombre4(nombre,apellidos)
  print(nombre.." "..apellidos)
  
end

local pintor = {}

pintor.nombrePintor = "Pablo"
pintor.apellidoPintor = "Ruiz"

pintor.nombrepintor = nombre4
pintor.nombrePintor("Pablo Ruiz Picasso")










  
  
  
  