CREATE database Peluqueria_canina;
USE Peluqueria_canina;

-- Creo Tablas con sus respectivas PK y FK
CREATE	TABLE Dueno(
	DNI int NOT NULL,
	Nombre varchar(25),
    Apellido varchar(20),
    Telefono int,
    Direccion varchar(140),
	primary key (DNI)
);
CREATE TABLE Perro(
	ID_Perro int NOT NULL AUTO_INCREMENT,
    Nombre varchar(30),
    Fecha_nac date,
    Sexo varchar(6),
    DNI_Dueno int,
    primary key (ID_Perro),
    foreign key (DNI_dueno) references Dueno (DNI)
);
CREATE TABLE Historial(
	ID_Historial int NOT NULL AUTO_INCREMENT,
    Fecha date,
    Perro int,
    Descripcion varchar(200),
    Monto float,
    primary key (ID_Historial),
    foreign key (Perro) references Perro (ID_Perro)
);

INSERT INTO Dueno values
(39500542,'Jose','Perez',351264005,'San Martin 123');

INSERT INTO Perro (Nombre,Fecha_nac,Sexo,DNI_dueno) values 
('Kleo','2021-02-28','Hembra',39500542);

INSERT INTO Dueno (DNI,Nombre,Apellido,Telefono,Direccion) values
(47654324,'Maria','Romero',351679466,'General paz 365'),
(36123654,'Jose','Sanchez',351804323,'Buenos Aires 1145'),
(21365778,'Juan','Cabrera',35187365,'Colon 522'),
(18654987,'Florencia','Ferrero',11465498,'Santa Rosa 159');

INSERT INTO Perro (Nombre,Fecha_nac,Sexo,DNI_dueno) values
('Rocky','2006-02-11','Macho',21365778),
('Firu','2009-03-30','Macho',18654987),
('Pipi','2015-01-22','Hembra',36123654),
('Lola','2019-04-02','Hembra',47654324);

INSERT INTO Historial (Fecha,Perro,Descripcion,Monto) values
('2019-12-21',3,'Bano y corte y secado',721.52),
('2015-11-03',4,'Corte de pelo',509.99),
('2022-10-25',5,'Corte de pelo y unias ',740.99),
('2020-09-21',2,'Corte de pelo, Bano y Secado ',950.50);

-- Borre un animal que ya no va a ser atendido. Para ello consulte antes en el historial, algún animal que ya no sea atendido desde hace mucho tiempo.
SELECT * FROM Perro; -- ver tabla previo a eliminar
SELECT * FROM Historial; -- tabla previo a eliminar
SELECT Perro FROM Historial 
where Fecha < '2016-01-01';  -- muestra el registro 

DELETE from Historial 
where ID_Historial = 2; -- borro el Registro del historia, ya que no puede quedar sin un perro asociado

DELETE Perro from Perro 
where ID_Perro = 4; -- borro el perro

SELECT * FROM Perro;
SELECT * FROM Historial;

-- Actualice la fecha de nacimiento de algún animal (perro) que usted considere.

UPDATE Perro
SET Fecha_nac = "2021-03-02"
WHERE ID_Perro = 1;

SELECT * FROM Perro;