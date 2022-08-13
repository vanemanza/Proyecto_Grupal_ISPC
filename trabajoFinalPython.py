'''Escribir el codigo Python que permita realizar lo siguiente:

1) Crear una lista en Python denominada "Dueno" que contenga los siguientes valores:

28957346, Juan, Perez, 4789689, Belgrano 101

Dichos datos corresponden con los datos del dueño de un perro(DNI, nombre, apellido, telefono y direccion). Muestre en pantalla el telefono del dueño si el DNI es mayor a 26000000.
'''

dueno = [28957346, "juan", "Perez", 4789689, "belgrano 101"]

for i in dueno:
    if dueno[0] > 26000000:
        print(dueno[3])
        break
    

    