use Practica_ISPC;
PRIMARYCREATE table Localidad(
idLocalidad int,
Nombre varchar(100),
constraint pk_idL primary key(idLocalidad)
);

create table Alumno(
Legajo int,
Nombre varchar(100),
Apellido varchar(100),
Localidad int,
Telefono varchar(45),
constraint pk_L primary key(Legajo),
constraint fk_idL foreign key(Localidad) references Localidad(idLocalidad)
);

create table Carrera(
idCarrera int,
NombreCarrera varchar(45),
constraint pk_idC primary key(idCarrera)
);

create table Materias(
idMaterias int,
Nombre varchar(45),
Carrera int,
constraint pk_idM primary key(idMaterias),
constraint fk_C foreign key(Carrera) references Carrera(idCarrera)
);

create table AlumnoXMaterias(
Legajo1 int,
idMateria int,
Nota int,
constraint fk_L1 foreign key(Legajo1) references Alumno(Legajo),
constraint fk_idM1 foreign key(idMateria) references Materias(idMaterias)
);