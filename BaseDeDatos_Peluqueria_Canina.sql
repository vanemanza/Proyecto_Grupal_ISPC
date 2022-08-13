CREATE DATABASE peluqueria_canina;
USE peluqueria_canina;

CREATE TABLE dueno (DNI char(8) NOT NULL,
    Nombre varchar(50) NOT NULL,
    Apellido varchar(50) NOT NULL,
    Telefono varchar(100) NOT NULL,
    Direccion varchar(100) NOT NULL,
    PRIMARY KEY (DNI));
    
CREATE TABLE Perro (ID_Perro int NOT NULL AUTO_INCREMENT,
	Nombre varchar(50) NOT NULL,
	Fecha_nac date NOT NULL,
	Sexo varchar(15) NOT NULL,
	DNI_dueno char(8) NOT NULL, 
	PRIMARY KEY (ID_Perro),
	FOREIGN KEY (DNI_dueno) references Dueno (DNI));
        
CREATE TABLE Historial (ID_Historial int NOT NULL AUTO_INCREMENT,
	Fecha date NOT NULL,
	Perro int NOT NULL,
	Descripcion varchar (100),
	Monto float NOT NULL,
	PRIMARY KEY (ID_Historial),
	FOREIGN KEY (Perro) references Perro (ID_Perro));
    

Insert into dueno (DNI, Nombre, Apellido, Telefono, Direccion) values ("39382573", "Maria","Cuenca","3572537746","12 de octubre 1335");
Insert into dueno (DNI, Nombre, Apellido, Telefono, Direccion) values ("17511800", "Cecilia","Colazo","3543154785","Guemes 1079");
Insert into dueno (DNI, Nombre, Apellido, Telefono, Direccion) values ("35698123", "Rosa","Moreno","351456921","Lavalle 3654");
Insert into dueno (DNI, Nombre, Apellido, Telefono, Direccion) values ("25357031", "Valeria","Pireta","351875632","Rioja 1060");

Insert into Perro (ID_Perro, Nombre, Fecha_nac, Sexo, DNI_dueno) values (1,"Copito","2021-05-14","Macho","39382573");
Insert into Perro (ID_Perro, Nombre, Fecha_nac, Sexo, DNI_dueno) values (2,"Loki","2020-04-26","Macho","17511800");
Insert into Perro (ID_Perro, Nombre, Fecha_nac, Sexo, DNI_dueno) values (3,"Daysi","2013-08-20","Hembra","35698123");
Insert into Perro (ID_Perro, Nombre, Fecha_nac, Sexo, DNI_dueno) values (10,"Rocky","2019-06-16","Macho","25357031");

Insert into Historial (ID_Historial, Perro, Fecha, Descripcion, Monto) values (1,1,"2021-05-14","Combo2",1456.25);
Insert into Historial (ID_Historial, Perro, Fecha, Descripcion, Monto) values (2,2,"2020-04-26","Combo6",680.20);
Insert into Historial (ID_Historial, Perro, Fecha, Descripcion, Monto) values (3,3,"2023-08-20","Combo3",758.90);
		
-- Ejercicio 8:Insertar un nuevo registro en la tabla historial de un perro cuyo ID Perro es igual a 10.
Insert into Historial (ID_Historial, Perro, Fecha, Descripcion, Monto) values (4,10,"2019-06-16","Combo5",915.30);