#6)Crear una tupla en Python con el nombre de “Historial2” la cual contenga los siguientes valores:
     #23500, 5960, 2300, 10200, 8900
#Que representa montos de atención en pesos por diferentes servicios/consultas de la mascota “Frida”. 
#Calcular el monto total gastado a lo largo del tiempo por atención de “Frida”. 
#Crear una función que cuente cuantos gastos fueron superiores a 5000 mostrando  el número calculado en pantalla.

from itertools import count


historial2= (23500, 5960, 2300, 10200, 8900)
print ("Montos de atención en pesos por diferentes servicios/consultas de “Frida”: " + str(historial2))
gastosFrida = sum(list(historial2))
print ("El monto total gastado a lo largo del tiempo por atención de “Frida” es: " + str(gastosFrida))

def gastosMax ():
     historial2 = (23500, 5960, 2300, 10200, 8900)
     mayorCincomil = 0
     for i in historial2:
          if i> 5000:
               mayorCincomil += 1
     print ("gastos mayores a $5000: " + str(mayorCincomil))
          
gastosMax()




          
