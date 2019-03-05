-- calcular sueldo de empleado

-- carga de datos 

nombre = "Pepe"
horasTotales = 42
precioHora = 15
sueldoBase = 0
horaExtra = precioHora * 1.5

-- bloque principal 

if (horasTotales > 40) then
  sueldoBase = 40 * precioHora
  sueldoExtra = ( horasTotales - 40 ) * horaExtra
  
  print("El sueldo base de "..nombre.." es "..sueldoBase.." con horas extra :"..sueldoExtra)
  
else
  sueldoBase = horasTotales * 15
  print("El Cálculo del sueldo de "..nombre.." es :"..sueldoBase)
  
end
