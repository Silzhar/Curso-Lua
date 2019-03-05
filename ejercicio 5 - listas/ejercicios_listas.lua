-- indices y accesos a listas

--ejercicio 1
local puestos = {
  Jose = "director",
  Juan = "analista",
  Luis = "comercial"
}
 -- equivale a : local puestos = { Pepe="director". Juan="analista", Luis="comercial"}
 
 print(puestos["Jose"])  -- salida : director
 print(puestos.Jose)     -- salida : director
 
 -- ejercicio 2
 local puestos2 = {
   director = "Alfredo",
   analista = "Rubén",
   comercial = "Ramón"}
   
   print(puestos2["director"])
   print(puestos2.analista)
   print("El comercial es : "..puestos2.comercial)
   
  -- ejercicio 3
  miLista = {}
  miLista[1] = "dato uno"
  miLista[3] = "dato tres"
   -- dato 2 en orden de lista es nulo al no guardarlo 
   miLista.mayor = 65
   miLista.menor = 18
   
   -- visualizaciones de datos 
   print(miLista["mayor"].."-"..miLista["menor"])
   print(miLista.mayor.."-"..miLista.menor)
   print(miLista[1].." - "..miLista[3])
   
   for i = 1, #miLista do
     print(miLista[i])
     
   end
   
   for key, value in ipairs(miLista) do --ipairs la i de int (entero)
     print(key, value)
     
   end
   
  for key, value in pairs(miLista) do
     print(value)
     
   end
   
   
  
  
  
  
  