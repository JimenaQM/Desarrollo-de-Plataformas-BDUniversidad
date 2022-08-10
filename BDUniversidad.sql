---Base de Datos Ejemplo
---Quispe Monrroy Judi Jimena
---08/08/2022

use master
go

if DB_ID('BDUniversidad') is not null
	drop database BDUniversidad
go
create database BDUniversidad
go

use BDUniversidad
go

--crear tablas
    --Tabla TEscuela
if OBJECT_ID('TEscuela') is not null
	drop table TEscuela
go
create table TEscuela
(
	CodEscuela char(3) primary key,
	Escuela varchar(50),
	Facultad varchar(50)
)
go

     --Tabla TAlumno
if OBJECT_ID('TAlumno') is not null
	drop table TAlumno
go
create table TAlumno
(
	CodAlumno char(5) primary key,
	Apellidos varchar(50),
	Nombres varchar(50),
	LugarNac varchar(50),
	FechaNac datetime,
	CodEscuela char(3),
	foreign key(CodEscuela) references TEscuela
)

--Insertar Datos a la tabla TEscuela

insert into TEscuela values('E01','Sistemas','Ingenieria')
insert into TEscuela values('E02','Civil','Ingenieria')
insert into TEscuela values('E03','Industrial','Ingenieria')
insert into TEscuela values('E04','Ambiental','Ingenieria')
insert into TEscuela values('E05','Arquitectura','Ingenieria')
go

select * from TEscuela
go


--Insertar Datos a la tabla TAlumno
insert into TAlumno values('A01','Quispe Monrroy','Judi Jimena','Cusco',27/03/2002,'E01')
insert into TAlumno values('A02','Misicano Callañaupa','Rodrigo','Cusco',07/03/2001,'E02')
insert into TAlumno values('A03','Suel Monrroy','David Joshua','Cusco',24/01/2005,'E03')
insert into TAlumno values('A04','Suel Peña','Elber','Cusco',02/11/2000,'E04')
insert into TAlumno values('A05','Monrroy Florez','Zorayda','Cusco',28/10/2007,'E05')
go

select * from TAlumno
go