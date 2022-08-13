create database valoracionfinal;
use valoracionfinal;

create table Dueno(
DNI int primary key not null,
Nombre varchar(25),
Apellido varchar(25),
Telefono varchar(25),
Domicilio varchar(60)
);

create table Perro(
ID_Perro int primary key not null auto_increment,
Nombre varchar(25),
Fecha_nac date,
Sexo varchar(25),
DNI_Dueno int not null,
foreign key (DNI_Dueno) references Dueno(DNI)  
);

create table Historial(
ID_Historial int primary key not null auto_increment,
Fecha date,
Perro int not null,
Descripcion text,
Monto float not null,
foreign key (Perro) references Perro(ID_Perro)
);

select * from Dueno;
select * from Perro;
select * from Historial;

insert into Dueno(DNI, Nombre, Apellido, Telefono, Domicilio)
values (41602540, 'Gustavo', 'Garcia', '3528340944', 'Independencia 712');

insert into Perro(Nombre, Fecha_nac, Sexo, DNI_Dueno)
values ('Capitan','2020-04-12', 'Macho', 41602540);
insert into Perro(Nombre, Fecha_nac, Sexo, DNI_Dueno)
values ('Lulu','2018-10-22', 'Hembra', 41602540);
update Perro set Fecha_nac = '2018-10-29' where ID_Perro = 2;

insert into Historial(Fecha, Perro, Descripcion, Monto)
values ('2022-07-22',1,'Corte de pelo y baño',1200.0);
insert into Historial(Fecha, Perro, Descripcion, Monto)
values ('2021-01-20',2,'Baño',500.0);