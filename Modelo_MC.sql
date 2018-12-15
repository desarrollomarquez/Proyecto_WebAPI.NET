
IF object_id('dbo.Colegio') is not null
   DROP TABLE dbo.Colegio;
IF object_id('dbo.Usuario') is not null
   DROP TABLE dbo.Usuario;
IF object_id('dbo.Roles') is not null
   DROP TABLE dbo.Roles;
    
 CREATE TABLE dbo.Colegio(
  Codigo_Id		 UNIQUEIDENTIFIER NOT NULL ,
  Nit			 INT  NOT NULL,
  Nombre		 VARCHAR(200) NOT NULL,
  CodigoColegio  INT NOT NULL,
  CodigoDane  	 INT NOT NULL,
  Direccion      VARCHAR(100) NOT NULL,
  Telefono       VARCHAR(20) NOT NULL,
  FiniFiscal     DATE NOT NULL,
  FfinFiscal     DATE NOT NULL,
  UbicacionGeo   VARCHAR(100) NOT NULL,
  Foto           VARCHAR(100) NOT NULL,
  CONSTRAINT PK_Colegio primary key (Codigo_Id)
 );

  CREATE TABLE dbo.Usuario(
  Usuario_Id	  UNIQUEIDENTIFIER NOT NULL ,
  Password		  VARCHAR(100)  NOT NULL,
  PasswordDecrip  VARCHAR(100) NOT NULL,
  Estado          INT NOT NULL,
  CONSTRAINT PK_Usuario primary key (Usuario_Id)
 );

   
  CREATE TABLE dbo.Rol(
  Rol_Id	      UNIQUEIDENTIFIER NOT NULL ,
  Nombre		  VARCHAR(200)  NOT NULL,
  Estado          BIT,
  Descripcion     VARCHAR(200)  NOT NULL,
  CONSTRAINT PK_Rol primary key (Rol_Id)
 );


insert into secciones values('Administracion',300);
insert into secciones values('Contaduría',400);
insert into secciones values('Sistemas',500);

insert into empleados values('22222222','f','Lopez','Ana','Colon 123',1,2,'casado','1990-10-10');
insert into empleados values('23333333','m','Lopez','Luis','Sucre 235',1,0,'soltero','1990-02-10');
insert into empleados values('24444444','m','Garcia','Marcos','Sarmiento 1234',2,3,'divorciado', '1998-07-12');
insert into empleados values('25555555','m','Gomez','Pablo','Bulnes 321',3,2,'casado','1998-10-09');
insert into empleados values('26666666','f','Perez','Laura','Peru 1254',3,3,'casado','2000-05-09');
