-- función con suministro de información en parámetro de salida
local alumno = {}

alumno.nombreAlumno = function(nombrePila, apellidos)
  return(nombrePila.." "..apellidos)
  
  end
print(alumno.nombreAlumno("Federico","García Lorca"))

-- función con parámetros de salida (recuerdo de ejercicios)
function suma(numero1, numero2)
  local total
  total = numero1 + numero2 
  
  --print(numero1.." + "..numero2.." = "..total)
  return total
  -- esto es igual a return(numero1 + numero2)
end

local num1 = 8
local num2 = 12
local totales

totales = suma(num1, num2)
print(num1.." + "..num2.." = "..totales)