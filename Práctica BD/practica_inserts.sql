use PracticaBD_ISPC;

INSERT INTO Localidad
VALUES(1, 'Córdoba');

insert into Localidad
values(2, 'Achiras');

insert into Localidad
values(3, 'Ballesteros');

insert into Localidad
values(4, 'Capilla del Monte');

insert into Localidad
values(5, 'Despeñaderos');

insert into Localidad
values(6, 'Embalse');

insert into Localidad
values(7, 'Freyre');

insert into Localidad
values(8, 'General Cabrera');

insert into Localidad
values(9, 'Hernando');

insert into Localidad
values(10, 'Inriville');

insert into Localidad
values(11, 'Jesus María');

insert into Localidad
values(12, 'La Carlota');

insert into Localidad
values(13, 'Morrison');

insert into Localidad
values(14, 'Nono');

insert into Localidad
values(15, 'Oncativo');

insert into Localidad
values
	(16, 'Piquillin'),
    (17, 'Quilino'),
    (18, 'Rio Cuarto'),
    (19, 'Salsacate'),
    (20, 'Tancacha'),
    (21, 'Unquillo'),
    (22, 'Villa de las Rosas'),
    (23, 'Wenceslao Escalante');

insert into Alumno
values
	(1, 'Ana', 'Araya', 2, '3582111111'),
    (2, 'Bruno', 'Bruna', 3, '3532222222'),
    (3, 'Cintia', 'Carranza', 4, '3513333333'),
    (4, 'Daniel', 'Diaz', 5, '3548444444'),
    (5, 'Ema', 'Estevez', 6, '3547555555'),
    (6, 'Franco', 'Fernandez', 7, '3571666666'),
    (7, 'Guiana', 'Gomez', 8, '3564777777'),
    (8, 'Hugo', 'Hernandez', 9, '3588888888'),
    (9, 'Ines', 'Islas', 10, '3539999999'),
    (10, 'Jonas', 'Juarez', 1, '3467111111');
    
insert into Carrera
values
		(1, 'Agronomía'),
        (2, 'Biología'),
        (3, 'Comunicación'),
        (4, 'Diseño Gráfico'),
        (5, 'Enología'),
        (6, 'Física'),
        (7, 'Geografía'),
        (8, 'Historia'),
        (9, 'Ingeniería Civil'),
        (10, 'Jardinero');
        
insert into Materias
values
			(1, 'Arte', 4),
            (2, 'Botanica', 2),
            (3, 'Ciencias sociales', 3),
            (4, 'Derecho Civil', 9),
            (5, 'Estadística', 8),
            (6, 'Física', 6),
            (7, 'Geología', 1),
            (8, 'Historia', 5),
            (9, 'Jurisprudencia', 7),
            (10, 'Marketing', 10);

insert into AlumnoXMaterias
values
	(1, 1, 5),
    (2, 2, 6),
    (3, 3, 6),
    (4, 4, 7),
    (5, 5, 7),
    (6, 1, 8),
    (7, 2, 8),
    (8, 3, 9),
    (9, 4, 9),
    (10, 5, 10);
				