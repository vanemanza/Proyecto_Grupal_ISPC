create database peluqueria_canina;
USE peluqueria_canina;

CREATE TABLE dueño (DNI int not null,
					Nombre varchar(48) not null,
					Apellido varchar(48) not null,
					Telefono varchar(48) not null,
					Direccion varchar(48) not null,
					PRIMARY KEY (DNI));
                     
CREATE TABLE Perro (ID_perro INT NOT NULL AUTO_INCREMENT,
                    DNI_dueño int not null, 
					Nombre_perro varchar(48) not null, 
                    Fecha_nacimiento date not null, 
                    Sexo varchar(48)not null, 
                    PRIMARY KEY (ID_perro),
                    FOREIGN KEY (DNI_dueño) references dueño (DNI));
                    
CREATE TABLE Historial (ID_Historial int not null AUTO_INCREMENT,
                        Fecha date not null,
                        Descripcion varchar(48) not null,
                        Monto int not null,
                        Perro int not null,
                        PRIMARY KEY (ID_Historial),
                        FOREIGN KEY (Perro) references Perro (ID_perro));
                        
insert into dueño(DNI, Nombre,Apellido,Telefono, Direccion) values ("36639319", "Danna","Cruz","3512122234","bv las heras 987");
insert into dueño(DNI, Nombre,Apellido,Telefono, Direccion) values ("36358266", "Gabriel","Sucaria","3512856984","martin garcia 149");
insert into dueño(DNI, Nombre,Apellido,Telefono, Direccion) values ("17203645", "Hilario","Abelardo","3512166884","miguel mujica 1300");
insert into dueño(DNI, Nombre,Apellido,Telefono, Direccion) values ("45895478", "Sofia","Del Dono","3513567958","marcos infante 845");
insert into dueño(DNI, Nombre,Apellido,Telefono, Direccion) values ("20895462", "Agustina","Murua","3514956324","jose mendibil 843");


insert into Perro (ID_perro, DNI_dueño, Nombre_perro, Fecha_nacimiento, Sexo) values (1, 36639319, "Salvador",'2020-10-02',"Macho");
insert into Perro (ID_perro, DNI_dueño, Nombre_perro, Fecha_nacimiento, Sexo) values (2, 36358266, "Nina",'2014-08-08',"Hembra");
insert into Perro (ID_perro, DNI_dueño, Nombre_perro, Fecha_nacimiento, Sexo) values (3, 17203645, "Tobias",'2012-07-20',"Macho");
insert into Perro (ID_perro, DNI_dueño, Nombre_perro, Fecha_nacimiento, Sexo) values (4, 45895478, "Coco",'2013-05-18',"Hembra");
insert into Perro (ID_perro, DNI_dueño, Nombre_perro, Fecha_nacimiento, Sexo) values (5, 20895462, "Fredy",'2008-06-09',"Macho");

insert into Historial(ID_Historial,Fecha, Descripcion, Monto, Perro) values (1,'2022-01-18', "baño y pipeta", 3500, 1);
insert into Historial(ID_Historial,Fecha, Descripcion, Monto, Perro) values (2,'2022-02-20', "pipeta", 500, 2);
insert into Historial(ID_Historial,Fecha, Descripcion, Monto, Perro) values (3,'2022-03-10', "Baño y Corte", 2000, 3);
insert into Historial(ID_Historial,Fecha, Descripcion, Monto, Perro) values (4,'2022-04-13', "pipeta, corte y baño", 9000, 4);
insert into Historial(ID_Historial,Fecha, Descripcion, Monto, Perro) values (5,'2022-05-07', "baño y corte", 5000, 5);
insert into Historial(ID_Historial,Fecha, Descripcion, Monto, Perro) values (6,'2021-05-07', "pipeta", 500, 5);
insert into Historial(ID_Historial,Fecha, Descripcion, Monto, Perro) values (7,'2021-04-13', "baño", 1000, 4);

#ejercicio n°5 Realice una consulta multitabla que arroje el nombre de todos los perros cuyos dueños se llaman Pedro:
select Nombre_Perro, Nombre from Perro inner join Dueño on DNI_dueño = DNI where Nombre like 'Pedro%';
#ejercicio n°6 Obtener todos los perros que asistieron a la peluquería en 2022:
select Fecha, Perro
from Historial 
where Fecha>= '2022-01-01';
#ejercicio n°7 Obtener los ingresos percibidos en Julio del 2022:
select Monto, Fecha from Historial where month(Fecha)= 07 and year(Fecha)= 2022


