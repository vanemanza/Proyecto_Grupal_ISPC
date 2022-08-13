CREATE DATABASE ejercicio_final;
USE ejercicio_final;

CREATE TABLE `ejercicio_final`.`Dueno` (
  `DNI` INT NOT NULL,
  `Nombre` VARCHAR(45) NOT NULL,
  `Apellido` VARCHAR(45) NOT NULL,
  `Teléfono` INT NOT NULL,
  `Dirección` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`DNI`));

CREATE TABLE `ejercicio_final`.`Perro` (
  `ID_Perro` INT NOT NULL AUTO_INCREMENT,
  `Nombre` VARCHAR(45) NOT NULL,
  `Fecha_nac` DATE NOT NULL,
  `Sexo` CHAR(1) NOT NULL,
  `DNI_dueno` INT NOT NULL,
  PRIMARY KEY (`ID_Perro`),
  INDEX `DNI_dueno_idx` (`DNI_dueno` ASC) VISIBLE,
  CONSTRAINT `DNI_dueno`
    FOREIGN KEY (`DNI_dueno`)
    REFERENCES `ejercicio_final`.`dueno` (`DNI`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
    
CREATE TABLE `ejercicio_final`.`Historial` (
  `ID_Historial` INT NOT NULL AUTO_INCREMENT,
  `Fecha` DATE NOT NULL,
  `Perro` INT NOT NULL,
  `Descripción` VARCHAR(45) NOT NULL,
  `Monto` INT NOT NULL,
  PRIMARY KEY (`ID_Historial`),
  INDEX `Perro_idx` (`Perro` ASC) VISIBLE,
  CONSTRAINT `Perro`
    FOREIGN KEY (`Perro`)
    REFERENCES `ejercicio_final`.`Perro` (`ID_Perro`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

INSERT INTO `ejercicio_final`.`Dueno` VALUES
(39813780, "Viviana", "Bianco", 1132992768, "Buenos Aires 1234"),
(22175572, "Jose", "Perez", 52357236, "San Martin 6483"),
(12635932, "Pedro", "Gomez", 12646591, "Belgrano 1263"),
(40347123, "Irma", "Lopez", 1135723456, "Yrigoyen 5724"),
(34853123, "Armando", "Quito", 1523623482, "Alem 823");

INSERT INTO `ejercicio_final`.`Perro` (Nombre, Fecha_nac, Sexo, DNI_dueno) VALUES
("Karen", "2022-04-24", "F", 39813780),
("Coki", "2005-11-10", "M", 34853123),
("Ciro", "2021-02-03", "M", 39813780),
("Juanita", "2021-06-06", "F", 22175572);

INSERT INTO `ejercicio_final`.`Historial` (Fecha, Perro, Descripción, Monto) VALUES
("2022-08-12", 2, "Corte y baño", 3000),
("2022-06-05", 1, "Corte de uñas", 150),
("2021-03-03", 1, "Corte y baño", 2500),
("2022-07-01", 4, "Limado de uñas", 1000);

UPDATE Dueno
SET dirección = 'Libertad 123'
WHERE DNI = 39813780;