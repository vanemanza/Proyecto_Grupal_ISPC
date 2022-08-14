use peluqueria_canina;

#ejercicio n°5 Realice una consulta multitabla que arroje el nombre de todos los perros cuyos dueños se llaman Pedro:
select Nombre_Perro, Nombre from Perro inner join Dueño on DNI_dueño = DNI where Nombre like 'Pedro%';
#ejercicio n°6 Obtener todos los perros que asistieron a la peluquería en 2022:
select Fecha, Perro, Nombre_perro
from Historial, Perro 
where Historial.Perro= Perro.ID_perro and
Fecha>= '2022-01-01';
#ejercicio n°7 Obtener los ingresos percibidos en Julio del 2022:
select Monto, Fecha from Historial where month(Fecha)= 07 and year(Fecha)= 2022;
#11.Obtener todos los dueños que tengan perros de menos de 5 años de edad que no hayan visitado la peluquería en el año 2022:
select DNI, Nombre, Nombre_perro, Fecha_nacimiento, Fecha
from Dueño, Perro, Historial
where Dueño.DNI = Perro.DNI_dueño and Perro.ID_perro = Historial.Perro and 
Fecha_nacimiento > '2017-08-15' and Fecha <'2022-01-01';

