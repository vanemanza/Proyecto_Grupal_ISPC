use PracticaBD_ISPC;

select Legajo, Nombre, Apellido
from Alumno;

select *
from Alumno 
where Nombre like 'a%';

select a.Legajo, a.Nombre, a.Apellido, l.Nombre
from Alumno a 
join Localidad l
on a.Localidad = l.idLocalidad
where l.Nombre = 'Cordoba';

select a.Legajo, a.Nombre, a.Apellido, c.NombreCarrera
from Alumno a 
join AlumnoXMaterias am
on a.Legajo = am.Legajo1
join Materias m
on am.idMateria = m.idMaterias
join Carrera c
on m.Carrera = c.idCarrera
where c.NombreCarrera = 'Biología';

select c.idCarrera, c.NombreCarrera, m.Nombre
from Carrera c
join Materias m 
on c.idCarrera = m.Carrera
where c.NombreCarrera = 'Agronomía';


