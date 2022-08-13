create database peluqueria_canina;
USE peluqueria_canina;

CREATE TABLE duenio (DNI varchar(48) not null,
                     Nombre varchar(48) not null,
                     Apellido varchar(48) not null,
                     Telefono varchar(48) not null,
                     Direccion varchar(48) not null,
                     PRIMARY KEY (DNI));
                     
CREATE TABLE Perro (ID_perro INT NOT NULL AUTO_INCREMENT,
                    DNI_duenio varchar(48) not null, 
					Nombre_perro varchar(48) not null, 
                    Fecha_nac date not null, 
                    Sexo varchar(48)not null, 
                    PRIMARY KEY (ID_perro),
                    FOREIGN KEY (DNI_duenio) references duenio (DNI));
                    
CREATE TABLE Historial (ID_Historial int not null AUTO_INCREMENT,
                        Perro_nro int not null,
                        Fecha date not null,
                        Descripcion varchar(48) not null,
                        Monto int not null,
                        PRIMARY KEY (ID_Historial),
                        FOREIGN KEY (Perro_nro) references Perro (ID_perro));
                        
insert into duenio(DNI, Nombre,Apellido,Telefono, Direccion) values ("11195366", "Lidia","Gonzalez","3513487900","Artigas 266");
insert into duenio(DNI, Nombre,Apellido,Telefono, Direccion) values ("12333502", "Edgardo","Perez","3513487902","Corro 214");
insert into duenio(DNI, Nombre,Apellido,Telefono, Direccion) values ("33534749", "Dayana","Lucchesi","3513487400","Calasanz 348");
insert into duenio(DNI, Nombre,Apellido,Telefono, Direccion) values ("34566742", "Melisa","Tevez","3513567900","Lavalleja 3232");
insert into duenio(DNI, Nombre,Apellido,Telefono, Direccion) values ("34788933", "Jose","Piero","3513484300","Duarte Quiros 214");
insert into duenio(DNI, Nombre,Apellido,Telefono, Direccion) values ("38788456", "Mariano","Budassi","3512447900","Lima 23");
insert into duenio(DNI, Nombre,Apellido,Telefono, Direccion) values ("29723134", "Francisco","Arienti","3513587500","6 de Agosto 651");


insert into Perro (ID_perro, DNI_duenio, Nombre_perro, Fecha_nac, Sexo) values (1, "11195366", "Barto","2022-03-17","Macho");
insert into Perro (ID_perro, DNI_duenio, Nombre_perro, Fecha_nac, Sexo) values (2, "12333502", "Puchito","2021-05-02","Macho");
insert into Perro (ID_perro, DNI_duenio, Nombre_perro, Fecha_nac, Sexo) values (3, "33534749", "Candy","2020-12-04","Hembra");
insert into Perro (ID_perro, DNI_duenio, Nombre_perro, Fecha_nac, Sexo) values (4, "34566742", "Malena","2017-11-08","Hembra");
insert into Perro (ID_perro, DNI_duenio, Nombre_perro, Fecha_nac, Sexo) values (5, "34788933", "Ragnar","2020-09-18","Macho");
insert into Perro (ID_perro, DNI_duenio, Nombre_perro, Fecha_nac, Sexo) values (6, "38788456", "Blanca","2020-07-14","Hembra");
insert into Perro (ID_perro, DNI_duenio, Nombre_perro, Fecha_nac, Sexo) values (7,"29723134", "Boby","2016-03-30","Macho");                     

insert into Historial(ID_Historial,Perro_nro,Fecha, Descripcion, Monto) values (1,1,"2022-02-18", "Corte",5000);
insert into Historial(ID_Historial,Perro_nro,Fecha, Descripcion, Monto) values (2,2,"2021-08-20", "Pipeta y Baño",5000);
insert into Historial(ID_Historial,Perro_nro,Fecha, Descripcion, Monto) values (3,3,"2021-01-10", "Pipeta, Baño y Corte",5000);
insert into Historial(ID_Historial,Perro_nro,Fecha, Descripcion, Monto) values (4,4,"2020-03-13", "Corte",10000);
insert into Historial(ID_Historial,Perro_nro,Fecha, Descripcion, Monto) values (5,5,"2018-01-07", "Combo completo",8000);
insert into Historial(ID_Historial,Perro_nro,Fecha, Descripcion, Monto) values (6,6,"2019-05-27", "Corte",3500);
insert into Historial(ID_Historial,Perro_nro,Fecha, Descripcion, Monto) values (7,7,"2020-03-19", "Baño",2000);
                   
                        
                        
#EJERCICIO 12:    Obtener todos los perros de sexo “Macho” nacidos entre 2020 y 2022.                     
SELECT * FROM perro where Fecha_nac>"2020-01-01"and Fecha_nac<"2022-12-31" and Sexo="Macho";