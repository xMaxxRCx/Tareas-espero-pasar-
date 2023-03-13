/* Insercion de Datos */

INSERT INTO TUser( Id_Tusuario,NombreT,DescripcionT ) VALUES
     (NOT NULL,'Free','Usuario con permisos básicos'),
     (NOT NULL,'Premiun','Usuario con mayor acceso y beneficios'),
     (NOT NULL,'Administrator','Usuario con permisos avanzados');

     INSERT INTO Usuarios ( id_Usuarios,Nombre,A_Paterno,A_Materno,Id_Tusuario,Username,Password,Email) VALUES
     (NOT NULL,'Miriam', 'Lopez','Cruz','2','MiriLx','Miriam777','miramlc120@gmai.com'),
     (NOT NULL,'Maria','Arevalo','Soto','1','MariSw','9123Dmz','mariaaresoto@gmail.com'),
     (NOT NULL,'Valentina','Ramirez','Cortez','3','ValeRc','hju2m42','valeramirez2002@gmail.com'),
     (NOT NULL,'Alicia','Soto','Flores','3','AliciaSoto','7123nd','aliciaflores21d@gmail.com'),
     (NOT NULL,'Raul','Alvarez','Guzman','1','Aurelio','aupy123','raulalvarezg199@gmail.com'),
     (NOT NULL,'Matias','Ruiz','Gomez','1','MatiRuiz','jdl421','ruizgomez2001@gmail.com'),
     (NOT NULL,'Juan','Vargas','Martinez','2','JuVargas','81230ñ','vargasjnm@gmail.com'),
     (NOT NULL,'Andres','Mendez','Castro','2','AndrezMendez','msadj2d324','fbritocastro@gmail.com'),
     (NOT NULL,'Teresa','Rodriguez','Luna','1','TereRo','94e4rm','carla77@gmail.com'),
     (NOT NULL,'Alejandra','Balero','Medina','3','AleBM','93129JÑ','violeta59@gmail.com');

     INSERT INTO Estatus ( Id_Estatus,EstatusE ) VALUES
     (NOT NULL, 'Abierto'),
     (NOT NULL, 'Cerrado');

     INSERT INTO Carrera ( Id_Carrera,NombreCarrera,Clave ) VALUES
     (NOT NULL,'PROFESIONAL TECNICO BACHILLER EN INFORMÁTICA','INFO'),
     (NOT NULL,'PROFESIONAL TECNICO BACHILLER EN HOSPITALIDAD TURISTICA',''),
     (NOT NULL,'PROFESIONAL TECNICO BACHILLER EN ALIMENTOS Y BEBIDAS','AYBE'),
     (NOT NULL,'PROFESIONAL TECNICO BACHILLER EN CONTABILIDAD','');

     INSERT INTO Estados (Id_Estado,NombreEstado) VALUES
     (NOT NULL,'Estado de Mexico'),
     (NOT NULL,'Colima'),
     (NOT NULL,'Chihuahua'),
     (NOT NULL,'Coahuila'),
     (NOT NULL,'Yucatan'),
     (NOT NULL,'Veracruz'),
     (NOT NULL,'Guanajuato'),
     (NOT NULL,'Monterrey'),
     (NOT NULL,'Nuevo Leon'),
     (NOT NULL,'Zaragosa');

     INSERT INTO Municipios ( Id_Municipio,NombreMunicipio,Id_Estado) VALUES
     (NOT NULL,'Atizapán','1'),
     (NOT NULL,'Cocotitlán','1'),
     (NOT NULL,'Chalco','1'),
     (NOT NULL,'Chapultepec','1'),
     (NOT NULL,'Chiautla','1'),
     (NOT NULL,'Huehuetoca','1'),
     (NOT NULL,'Ixtapaluca','1'),
     (NOT NULL,'Ocuilan','1'),
     (NOT NULL,'Coyotepec','1'),
     (NOT NULL,'Cocotitlán','1');

     INSERT INTO Plantel (Id_Plantel,NombrePlantel,Id_Estado,Id_Carrera) VALUES
     (NOT NULL,'Naucalpan1','1','1'),
     (NOT NULL,'Cancun','1','1'),
     (NOT NULL,'Atizapan1','1','2'),
     (NOT NULL,'Ecatepec','1','2'),
     (NOT NULL,'Chalco','1','3'),
    (NOT NULL,'Naucalpan2','1','4'),
    (NOT NULL,'Coacalco','1','4'),
    (NOT NULL,'Lerma','1','4'),
    (NOT NULL,'Tecamac','1','1'),
    (NOT NULL,'Texcoco','1','2');

    INSERT INTO Historial (Id_Historial,id_Usuarios,Fecha) VALUES
    (NOT NULL,'1','2023-02-12'),
    (NOT NULL,'2','2023-01-02'),
    (NOT NULL,'3','2022-10-25'),
    (NOT NULL,'4','2022-11-11'),
    (NOT NULL,'5','2023-01-20'),
    (NOT NULL,'6','2023-03-02'),
    (NOT NULL,'7','2022-06-12'),
    (NOT NULL,'8','2023-01-27'),
    (NOT NULL,'9','2023-02-28'),
    (NOT NULL,'10','2023-01-18');

    INSERT INTO  UMedida (Id_UMedida,DescripcionM) VALUES
    (NOT NULL, 'centimetros'),
    (NOT NULL, 'metros'),
    (NOT NULL, 'onza');

    INSERT INTO Materiales ( Id_Material,NombreM,Descripcion,Fecha_Alta,Cantidad,Id_UMedida) VALUES
    (NOT NULL,'Cable','Tiene como fin apoyar a las practicas en clase','2023-02-20',50,'2'),
    (NOT NULL,'Hojas','Material para copias e impresiones','2023-03-05',100,'1'),
    (NOT NULL,'Pinzas','dedicado a practicas en clase','2022-10-25',5,'3');

    INSERT INTO  SolicitudMateriales (Id_Solicitud,Id_Material,Id_Carrera,id_Usuarios,Id_Plantel,Id_Estatus,Fecha_Solicitud) VALUES
    (NOT NULL,'2','3','5','3','1','2022-06-22'),
    (NOT NULL,'1','1','3','1','1','2023-02-10');
