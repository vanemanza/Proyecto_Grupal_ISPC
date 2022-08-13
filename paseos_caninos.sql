create database paseos_caninos;
use paseos_caninos;

/*A la hora de crear las columnas agregue 'Apellido_Dueno' para poder hacer la tabla un poco mas intuitiva y facil de manejar.
Perdon por el atrevimiento.*/

create table Dueno(
	DNI int not null primary key,
    Nombre_dueno varchar(40) not null,
    Apellido_dueno varchar(40) not null,
    Telefono int not null,
    Direccion varchar (100) not null
);

insert into Dueno values (33636789, 'Pedro', 'Espinoza', 1768293, 'Ex Via 660');
insert into Dueno values (23764754, 'Raul', 'Serantes', 2345678, 'San Lorenzo 234');
insert into Dueno values (17147587, 'Pablo', 'Casarella', 784593, 'Carrillo 550');
insert into Dueno values (36764589, 'Pedro', 'Casares', 675648, 'Alberdi 1749');
insert into Dueno values (23459384, 'Pedro', 'Gomez', 768234, 'Tucuman 65');

select * from Dueno;

create table Perro(
	ID_Perro int not null primary key auto_increment,
    Nombre_Perro varchar(40) not null,
    Fecha_Nacimiento date,
    Sexo varchar(30),
    DNI_dueno int not null,
    foreign key(DNI_dueno) references Dueno(DNI)
);

insert into Perro values (1, 'Toro', '2015-04-01', 'macho', 33636789);
insert into Perro values (2, 'Chiquito', '2012-08-11', 'macho', 23764754);
insert into Perro values (3, 'Negro', '2017-05-25', 'macho', 17147587);
insert into Perro values (4, 'Cleopatra', '2019-04-15', 'hembra', 36764589);
insert into Perro values (5, 'Lucky', '2018-11-01', 'hembra', 23459384);


select * from Perro;

create table Historial(
	ID_Historial int not null primary key auto_increment,
    Fecha date,
    Perro int not null,
    Descripcion varchar(255) not null,
    Monto int not null
);

alter table Historial add foreign key(Perro) references Perro(ID_Perro);

select * from Historial;

insert into Historial values(1, '2021-12-10', 1, 'nuestro primer cliente', 59);
insert into Historial values(2, '2022-02-01', 2, 'nuestro segundo cliente', 70);
insert into Historial values(3, '2022-02-20', 3, 'nuestro tercer cliente', 70);
insert into Historial values(4, '2022-02-25', 4, 'nuestro cuarto cliente', 70);
insert into Historial values(5, '2022-03-07', 5, 'nuestro quinto cliente', 75);

select * from Historial;

select Nombre_Perro, Nombre_Dueno from Perro inner join Dueno on DNI_dueno = DNI where Nombre_Dueno = 'Pedro';