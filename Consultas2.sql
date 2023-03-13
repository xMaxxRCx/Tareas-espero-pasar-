/* Creacion de tablas */
CREATE TABLE Usuarios(id_Usuarios INT AUTO_INCREMENT not null,
Nombre VARCHAR(55) NOT NULL, 
A_Paterno VARCHAR(55) NOT NULL, 
A_Materno VARCHAR(55) NOT NULL,
Id_Tusuario INT NOT NULL,
Username VARCHAR(55) NOT NULL,
Password VARCHAR(55) NOT NULL,
Email VARCHAR(255) NOT NULL,
PRIMARY KEY(id_Usuarios)
) ENGINE = INNODB;

CREATE TABLE TUser(Id_Tusuario INT AUTO_INCREMENT NOT NULL,
NombreT VARCHAR(55) NOT NULL,
DescripcionT TEXT NOT NULL,
PRIMARY KEY(Id_Tusuario)
) ENGINE = INNODB;

CREATE TABLE Estatus(Id_Estatus INT AUTO_INCREMENT NOT NULL,
EstatusE TEXT NOT NULL,
PRIMARY KEY(Id_Estatus)
) ENGINE = INNODB;

CREATE TABLE Materiales(Id_Material INT AUTO_INCREMENT NOT NULL,
NombreM VARCHAR(55) NOT NULL,
Descripcion TEXT NOT NULL,
Fecha_Alta DATE NOT NULL,
Cantidad INT NOT NULL,
Id_UMedida INT NOT NULL,
PRIMARY KEY(Id_Material)
) ENGINE = INNODB;

CREATE TABLE SolicitudMateriales(Id_Solicitud INT AUTO_INCREMENT NOT NULL,
Id_Material INT NOT NULL,
Id_Carrera INT NOT NULL,
id_Usuarios INT NOT NULL,
Id_Plantel INT NOT NULL,
Id_Estatus INT NOT NULL,
Fecha_Solicitud DATE NOT NULL,
PRIMARY KEY(Id_Solicitud)
) ENGINE = INNODB;

CREATE TABLE UMedida(Id_UMedida INT AUTO_INCREMENT NOT NULL,
DescripcionM TEXT NOT NULL,
PRIMARY KEY(Id_UMedida)
)ENGINE = INNODB;

CREATE TABLE Plantel(Id_Plantel INT AUTO_INCREMENT NOT NULL,
NombrePlantel VARCHAR(55)NOT NULL,
Id_Estado INT NOT NULL,
Id_Carrera INT NOT NULL,
PRIMARY KEY(Id_Plantel)
)ENGINE = INNODB;

CREATE TABLE Carrera(Id_Carrera INT AUTO_INCREMENT NOT NULL,
NombreCarrera VARCHAR(55) NOT NULL,
Clave VARCHAR(55)NOT NULL,
PRIMARY KEY(Id_Carrera)
)ENGINE = INNODB;

CREATE TABLE Estados(Id_Estado INT AUTO_INCREMENT NOT NULL,
NombreEstado VARCHAR(55)NOT NULL,
PRIMARY KEY(Id_Estado)
)ENGINE = INNODB;

CREATE TABLE Municipios(Id_Municipio INT AUTO_INCREMENT NOT NULL,
NombreMunicipio VARCHAR(55)NOT NULL,
Id_Estado INT NOT NULL,
PRIMARY KEY(Id_Municipio)
)ENGINE = INNODB;

CREATE TABLE Historial(Id_Historial INT AUTO_INCREMENT NOT NULL,
id_Usuarios INT NOT NULL,
Fecha DATE NOT NULL,
PRIMARY KEY(Id_Historial)
)ENGINE = INNODB;

/* Consulta para agregar FK en las tablas */
ALTER TABLE Usuarios ADD INDEX(Id_Tusuario);
ALTER TABLE Materiales ADD INDEX(Id_UMedida);
ALTER TABLE SolicitudMateriales ADD INDEX(Id_Material), ADD INDEX(Id_Carrera), ADD INDEX(Id_Plantel), ADD INDEX(id_Usuarios), ADD INDEX(Id_Estatus);
ALTER TABLE Plantel ADD INDEX(Id_Estado), ADD INDEX(Id_Carrera); 
ALTER TABLE Municipios ADD INDEX(Id_Estado);
ALTER TABLE Historial ADD INDEX(id_Usuarios);
