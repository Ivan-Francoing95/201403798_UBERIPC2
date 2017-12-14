create database Uber_Clase
use Uber_Clase


create table Cliente(
Dpi_Cliente int primary key,
Nombre_Cliente varchar (255),
Direccion_Cliente varchar (255),
Destino varchar (255),
Edad int 

)

create table Servicio(
ID_Servicio int primary key,
Costo_Servicio decimal,
Detalles_Servicio varchar (255)

)

create table Caracteristicas(
Matricula int primary key,
ID_Serv int,
Tipo_Servicio varchar (255),
Tipo_Auto varchar (255),
Modelo_Auto varchar (255),
Costo_Servicio decimal,
Capacidad int,
Distancia decimal,
foreign key (ID_Serv) references Servicio(ID_Servicio)

)

create table Asociados(
ID_Asociado int primary key,
ID_Servi int,
Nombre_Asociado varchar (255),
Tipo_Empresa varchar (255),
Detalles_Asociados varchar (255),
foreign key (ID_Servi) references Servicio(ID_Servicio)

)

create table Conductor(
DPI_Conductor int primary key,
Nombre_Conductor varchar (255),
Auto_Conductor varchar (255)
)

create table viaje(
ID_Viaje int primary key,
dpi_conduc int,
dpi_client int,
id_servic int,
foreign key (dpi_conduc) references Conductor(DPI_Conductor),
foreign key (dpi_client) references Cliente(Dpi_Cliente),
foreign key (ID_Servic) references Servicio(ID_Servicio)

)

Alter Table Cliente add Columna_Prueba varchar (255);

Alter Table Conductor add Prueba_conductores varchar (255);

Alter Table Conductor Modify Prueba_conductores int;


