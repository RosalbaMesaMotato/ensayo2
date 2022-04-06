CREATE DATABASE clubnautico
USE clubnautico
CREATE TABLE socio(
ide_socio int,
nombre_socio varchar(70),
tel_socio bigint,
dir_socio varchar(80),
constraint apodo1 primary key(ide_socio))

CREATE TABLE salidas(
ide_barco int,
fecha datetime,
hora_salida datetime,
destino varchar(70),
salida varchar(70),
constraint apodo2 primary key(ide_barco))

CREATE TABLE patron(
ide_patron int,
nom_patron varchar(80),
tel_patron bigint,
dir_patron varchar(80),
constraint apodo20 primary key(ide_patron))

CREATE TABLE barco(
nro_matricula int,
nom_barco varchar(70),
nro_amarre bigint,
cuota float,
ide_patron1 int,
constraint apodo3 primary key(nro_matricula),
constraint apodo9 foreign key(ide_patron1)references patron(ide_patron))

CREATE TABLE socio_barco(
ide_socio1 int,
nro_matricula1 int,
constraint apodo5 foreign key(ide_socio1)references socio(ide_socio),
constraint apodo6 foreign key(nro_matricula1)references barco(nro_matricula))

CREATE TABLE barco_salida(
ide_barco1 int,
nro_matricula2 int,
constraint apodo7 foreign key(ide_barco1)references salidas(ide_barco),
constraint apodo8 foreign key(nro_matricula2)references barco(nro_matricula))

