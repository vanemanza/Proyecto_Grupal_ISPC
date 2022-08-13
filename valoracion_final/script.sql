-- Ejercicio 1: Realice la consulta correspondiente para crear la tabla Perro, teniendo en cuenta sus claves foráneas y primarias.

CREATE TABLE `Perro` (
  `ID_Perro` int NOT NULL,
  `Nombre` varchar(45) NOT NULL,
  `Fecha_nac` date NOT NULL,
  `Sexo` varchar(15) DEFAULT NULL,
  `DNI_dueno` int NOT NULL,
  PRIMARY KEY (`ID_Perro`),
  KEY `DNI_dueno` (`DNI_dueno`),
  CONSTRAINT `Perro_fk` FOREIGN KEY (`DNI_dueno`) REFERENCES `Dueno` (`DNI`)
) 

-- Ejercicio 2: Inserte en la tabla correspondiente un nuevo animal (perro) como paciente y el dueño asociado a ese animal.

use veterinaria_tp_final;			

insert into Dueno
values
	(12345692, 'Ariel', 'Alonso', '3511111111', 'calle uno 111'),
  (23456921, 'Bruna', 'Baez', '3512222222', 'calle dos 222'),
  (34569212, 'Carlos', 'Carrera', '3513333333', 'calle tres 333'),
  (56921234, 'Daniela', 'Diaz', '3514444444', 'calle cuatro 444'),
  (69212345, 'Esteban', 'Etcheverria', '3515555555', 'calle cinco 555')
;

insert into Perro
values
	(1, 'Anubis',  '2011-01-01', 'macho', 12345692),
  (2, 'Batset',  '2012-02-02', 'hembra', 23456921),
  (3, 'Cheops',  '2013-03-03', 'macho',34569212 ),
  (4, 'Donkor',  '2014-04-04', 'hembra', 56921234),
  (5, 'Echidna',  '2015-05-05', 'hembra', 56921234)
;
	
	
insert into Historial
values
	(01,  '2022-01-02', 1, 'Ingresa por x consulta', '2500,00'),
  (02,  '2021-02-03', 2, 'colocación de vacunas', '1850,00'),
  (03,  '2021-02-03', 3, 'Esterilización', '12000'),
  (04,  '2021-02-03', 4, 'Consulta', '2500,00'),
  (05,  '2022-05-06', 1, 'Vacunas', '1850,00')
;     

--Ejercicio 4: Actualice la fecha de nacimiento de algún animal (perro) que usted considere.

update Perro
set Fecha_nac = '2022-02-02'
where ID_Perro in (02);    

update Perro
set Fecha_nac = '2020-02-03'
where ID_Perro in (04);    

-- # ID_Perro, Nombre,  Fecha_nac,  Sexo,   DNI_dueno
--   1,        Anubis,  2011-01-01, macho,  12345692
--   2,        Batset,  2022-02-02, hembra, 23456921
--   3,        Cheops,  2013-03-03, macho,  34569212
--   4,        Donkor,  2020-02-03, hembra, 56921234
--   5,        Echidna, 2015-05-05, hembra, 56921234

-- Ejercicio 5: Realice una consulta multitabla que arroje el nombre de todos los perros cuyos dueños se llaman Ariel.

select p.Nombre
from Perro p 
join Dueno d 
on p.DNI_dueno = d.DNI
where d.Nombre = 'Ariel';  

-- # Nombre
--   Anubis

-- Ejercicio 11: Obtener todos los dueños que tengan perros de menos de 5 años de edad que no hayan visitado la peluquería en el año 2022.

select d.DNI, d.Nombre, d.Apellido
from Historial h 
join Perro p on h.Perro = p.ID_Perro
join Dueno d on p.DNI_dueno = d.DNI
where year(p.Fecha_nac) >= year(now())-5
and year(h.Fecha) not like 2022;       

-- # DNI,      Nombre,   Apellido
--   23456921, Bruna,    Baez
--   56921234, Daniela,  Diaz

