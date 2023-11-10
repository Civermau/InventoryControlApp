DROP TABLE IF EXISTS "Categoria";
DROP TABLE IF EXISTS "Grupo";
DROP TABLE IF EXISTS "Laboratorio";
DROP TABLE IF EXISTS "Marca";
DROP TABLE IF EXISTS "Modelo";
DROP TABLE IF EXISTS "Plantel";
DROP TABLE IF EXISTS "Semestre";
DROP TABLE IF EXISTS "Tipo";
DROP TABLE IF EXISTS "Usuario";
DROP TABLE IF EXISTS "Docente";
DROP TABLE IF EXISTS "Estudiante";
DROP TABLE IF EXISTS "Mantenimiento";
DROP TABLE IF EXISTS "Material";
DROP TABLE IF EXISTS "Pedido";
DROP TABLE IF EXISTS "Desc_Pedido";

CREATE TABLE "Categoria" (
	"CategoriaId" INTEGER PRIMARY KEY,
	"Nombre" nvarchar (50) NOT NULL ,
	"Descripcion" "ntext" NOT NULL,
  "Acceso" "bit" NULL DEFAULT (0)
);

-----------------------------------------------------

CREATE TABLE "Grupo" (
  "GrupoId" INTEGER PRIMARY KEY,
  "Nombre" nvarchar(3) NOT NULL
);

-----------------------------------------------------

INSERT INTO "Grupo" ("Nombre") VALUES ('A1');
INSERT INTO "Grupo" ("Nombre") VALUES ('B1');
INSERT INTO "Grupo" ("Nombre") VALUES ('C1');
INSERT INTO "Grupo" ("Nombre") VALUES ('D1');
INSERT INTO "Grupo" ("Nombre") VALUES ('E1');
INSERT INTO "Grupo" ("Nombre") VALUES ('F1');
INSERT INTO "Grupo" ("Nombre") VALUES ('G1');
INSERT INTO "Grupo" ("Nombre") VALUES ('H1');
INSERT INTO "Grupo" ("Nombre") VALUES ('I1');
INSERT INTO "Grupo" ("Nombre") VALUES ('J1');
INSERT INTO "Grupo" ("Nombre") VALUES ('K1');
INSERT INTO "Grupo" ("Nombre") VALUES ('L1');
INSERT INTO "Grupo" ("Nombre") VALUES ('M1');
INSERT INTO "Grupo" ("Nombre") VALUES ('N1');
INSERT INTO "Grupo" ("Nombre") VALUES ('O1');
INSERT INTO "Grupo" ("Nombre") VALUES ('P1');
INSERT INTO "Grupo" ("Nombre") VALUES ('Q1');
INSERT INTO "Grupo" ("Nombre") VALUES ('R1');
INSERT INTO "Grupo" ("Nombre") VALUES ('S1');
INSERT INTO "Grupo" ("Nombre") VALUES ('T1');
INSERT INTO "Grupo" ("Nombre") VALUES ('U1');
INSERT INTO "Grupo" ("Nombre") VALUES ('V1');
INSERT INTO "Grupo" ("Nombre") VALUES ('W1');
INSERT INTO "Grupo" ("Nombre") VALUES ('X1');
INSERT INTO "Grupo" ("Nombre") VALUES ('Y1');
INSERT INTO "Grupo" ("Nombre") VALUES ('Z1');

-----------------------------------------------------

CREATE TABLE "Laboratorio" (
  "LaboratorioId" INTEGER PRIMARY KEY,
  "Nombre" nvarchar(50) NOT NULL,
  "Descripcion" "ntext" NOT NULL
);

-----------------------------------------------------

CREATE TABLE "Marca" (
  "MarcaId" INTEGER PRIMARY KEY,
  "Nombre" nvarchar(50) NOT NULL,
  "Descripcion" "ntext" NOT NULL
);

-----------------------------------------------------

CREATE TABLE "Modelo" (
  "ModeloId" INTEGER PRIMARY KEY,
  "Nombre" nvarchar(50) NOT NULL,
  "Descripcion" "ntext" NOT NULL
);

-----------------------------------------------------

CREATE TABLE "Plantel" (
  "PlantelId" INTEGER PRIMARY KEY,
  "Nombre" nvarchar(50) NOT NULL,
  "Direccion" nvarchar(100) NOT NULL,
  "Telefono" INTEGER NOT NULL
);

-----------------------------------------------------

INSERT INTO "Plantel" ("PlantelId","Nombre", "Direccion", "Telefono") VALUES (1,'Colomos', 'C. Nueva Escocia 1885, 44630 Guadalajara, Jal.', 3336413250);
INSERT INTO "Plantel" ("PlantelId","Nombre", "Direccion", "Telefono") VALUES (2,'Tonalá', 'Loma Dorada Norte, Loma Dorada 8962, Ejidal, 45418 Tonalá, Jal.', 333687417);
INSERT INTO "Plantel" ("PlantelId","Nombre", "Direccion", "Telefono") VALUES (3,'Rio Santiago', 'Camino a Matatlán # 2400, Fraccionamiento Urbi Paseos de Santiago II, Tonalá, Jal.', 3330020800);

-----------------------------------------------------

CREATE TABLE "Semestre" (
  "SemestreId" INTEGER PRIMARY KEY,
  "Numero" INTEGER NOT NULL
);

-----------------------------------------------------

INSERT INTO "Semestre" ("Numero") VALUES (1);
INSERT INTO "Semestre" ("Numero") VALUES (2);
INSERT INTO "Semestre" ("Numero") VALUES (3);
INSERT INTO "Semestre" ("Numero") VALUES (4);
INSERT INTO "Semestre" ("Numero") VALUES (5);
INSERT INTO "Semestre" ("Numero") VALUES (6);
INSERT INTO "Semestre" ("Numero") VALUES (7);
INSERT INTO "Semestre" ("Numero") VALUES (8);


-----------------------------------------------------

CREATE TABLE "Mantenimiento" (
  "MantenimientoId" INTEGER PRIMARY KEY,
  "Nombre" nvarchar(50) NOT NULL,
  "Descripcion" "ntext"(100) NOT NULL
);

-----------------------------------------------------

CREATE TABLE "Usuario" (
  "UsuarioId" INTEGER PRIMARY KEY,
  "Usuario" nvarchar(50) NOT NULL,
  "Password" nvarchar(8) NOT NULL,
  "Temporal" "bit" NOT NULL DEFAULT (0)
);

-----------------------------------------------------

INSERT INTO "Usuario" ("Usuario","Password") VALUES ('Diego','Diego');
INSERT INTO "Usuario" ("Usuario","Password") VALUES ('Rodrigo','Rodrigo');
INSERT INTO "Usuario" ("Usuario","Password") VALUES ('Jared','Jared');
INSERT INTO "Usuario" ("Usuario","Password") VALUES ('Gabriela','Gabriela');
INSERT INTO "Usuario" ("Usuario","Password") VALUES ('Bruno','Bruno');
INSERT INTO "Usuario" ("Usuario", "Password") VALUES ('Angel', 'Angel');
INSERT INTO "Usuario" ("Usuario", "Password") VALUES ('Areli', 'Areli');
INSERT INTO "Usuario" ("Usuario", "Password") VALUES ('Carlos', 'Carlos');
INSERT INTO "Usuario" ("Usuario", "Password") VALUES ('Ernesto', 'Ernesto');
INSERT INTO "Usuario" ("Usuario", "Password") VALUES ('Susana', 'Susana');
INSERT INTO "Usuario" ("Usuario", "Password") VALUES ('Aneel', 'Aneel');
INSERT INTO "Usuario" ("Usuario", "Password") VALUES ('Andres', 'Andres');

-----------------------------------------------------

CREATE TABLE "Docente" (
  "DocenteId" INTEGER PRIMARY KEY,
  "Nombre" nvarchar(50) NOT NULL,
  "ApellidoPaterno" nvarchar(50) NOT NULL,
  "ApellidoMaterno" nvarchar(50) NOT NULL,
  "Correo" nvarchar(100) NOT NULL,
  "Pin" INTEGER NULL,
  "PlantelId" INTEGER NOT NULL,
  "UsuarioId" INTEGER NOT NULL,

  CONSTRAINT "FK_Docente_Plantel" FOREIGN KEY 
	(
		"PlantelId"
	) REFERENCES "Plantel" (
		"PlantelId"
    ),

  CONSTRAINT "FK_Docente_Usuario" FOREIGN KEY 
	(
		"UsuarioId"
	) REFERENCES "Usuario" (
		"UsuarioId"
    )

);

-----------------------------------------------------

INSERT INTO "Docente" ("DocenteId","Nombre","ApellidoPaterno","ApellidoMaterno","Correo","PlantelId","UsuarioId") VALUES (1,'Angel','Brambila','Ulloa','brambila@ceti.mx',1,6);
INSERT INTO "Docente" ("DocenteId","Nombre","ApellidoPaterno","ApellidoMaterno","Correo","PlantelId","UsuarioId") VALUES (2,'Areli','Perez','Lomas','perez@ceti.mx',1,7);
INSERT INTO "Docente" ("DocenteId","Nombre","ApellidoPaterno","ApellidoMaterno","Correo","PlantelId","UsuarioId") VALUES (3,'Carlos Alberto','Ramirez','Garcia','ramirez@ceti.mx',1,8);
INSERT INTO "Docente" ("DocenteId","Nombre","ApellidoPaterno","ApellidoMaterno","Correo","PlantelId","UsuarioId") VALUES (4,'Ernesto Alejandro','Plaza','Oryazabal','plaza@ceti.mx',1,9);
INSERT INTO "Docente" ("DocenteId","Nombre","ApellidoPaterno","ApellidoMaterno","Correo","PlantelId","UsuarioId") VALUES (5,'Susana Elizabeth','Ferrer','Hernandez','ferrer@ceti.mx',1,10);

-----------------------------------------------------

CREATE TABLE "Almacenista" (
  "AlmacenistaId" INTEGER PRIMARY KEY,
  "Nombre" nvarchar(50) NOT NULL,
  "ApellidoPaterno" nvarchar(50) NOT NULL,
  "ApellidoMaterno" nvarchar(50) NOT NULL,
  "Correo" nvarchar(100) NOT NULL,
  "PlantelId" INTEGER NOT NULL,
  "UsuarioId" INTEGER NOT NULL,

  CONSTRAINT "FK_Almacenista_Plantel" FOREIGN KEY 
	(
		"PlantelId"
	) REFERENCES "Plantel" (
		"PlantelId"
    ),

  CONSTRAINT "FK_Almacenista_Usuario" FOREIGN KEY 
	(
		"UsuarioId"
	) REFERENCES "Usuario" (
		"UsuarioId"
    )

);

-----------------------------------------------------

INSERT INTO "Almacenista" ("AlmacenistaId","Nombre","ApellidoPaterno","ApellidoMaterno","Correo","PlantelId","UsuarioId") VALUES (1,'Aneel','Martin','Rodriguez','martin@ceti.mx',1,11);

-----------------------------------------------------

CREATE TABLE "Coordinador" (
  "CoordinadorId" INTEGER PRIMARY KEY,
  "Nombre" nvarchar(50) NOT NULL,
  "ApellidoPaterno" nvarchar(50) NOT NULL,
  "ApellidoMaterno" nvarchar(50) NOT NULL,
  "Correo" nvarchar(100) NOT NULL,
  "PlantelId" INTEGER NOT NULL,
  "UsuarioId" INTEGER NOT NULL,

  CONSTRAINT "FK_Coordinador_Plantel" FOREIGN KEY 
	(
		"PlantelId"
	) REFERENCES "Plantel" (
		"PlantelId"
    ),

  CONSTRAINT "FK_Coordinador_Usuario" FOREIGN KEY 
	(
		"UsuarioId"
	) REFERENCES "Usuario" (
		"UsuarioId"
    )

);

-----------------------------------------------------

INSERT INTO "Coordinador" ("CoordinadorId","Nombre","ApellidoPaterno","ApellidoMaterno","Correo","PlantelId","UsuarioId") VALUES (1,'Andres','Figueroa','Flores','figueroa@ceti.mx',1,12);

-----------------------------------------------------

CREATE TABLE "Estudiante" (
  "EstudianteId" INTEGER PRIMARY KEY,
  "Nombre" nvarchar(50) NOT NULL,
  "ApellidoPaterno" nvarchar(50) NOT NULL,
  "ApellidoMaterno" nvarchar(50) NOT NULL,
  "SemestreId" INTEGER NOT NULL,
  "GrupoId" INTEGER NOT NULL,
  "Adeudo" decimal(10,2) NULL,
  "Correo" nvarchar(100) NOT NULL,
  "PlantelId" INTEGER NOT NULL,
  "UsuarioId" INTEGER NOT NULL,

  CONSTRAINT "FK_Estudiante_Semestre" FOREIGN KEY 
	(
		"SemestreId"
	) REFERENCES "Semestre" (
		"SemestreId"
    ),

  CONSTRAINT "FK_Estudiante_Plantel" FOREIGN KEY 
	(
		"PlantelId"
	) REFERENCES "Plantel" (
		"PlantelId"
    ),

  CONSTRAINT "FK_Estudiante_Grupo" FOREIGN KEY 
	(
		"GrupoId"
	) REFERENCES "Grupo" (
		"GrupoId"
    ),

  CONSTRAINT "FK_Estudiante_Usuario" FOREIGN KEY 
	(
		"UsuarioId"
	) REFERENCES "Usuario" (
		"UsuarioId"
    )

);
-----------------------------------------------------

INSERT INTO "Estudiante" ("EstudianteId","Nombre","ApellidoPaterno","ApellidoMaterno","SemestreId","GrupoId","Adeudo","Correo","PlantelId","UsuarioId") VALUES (20300697, 'Diego', 'Romero', 'Corvera', 7, 2, 0, 'romero@ceti.mx', 1, 1);
INSERT INTO "Estudiante" ("EstudianteId","Nombre","ApellidoPaterno","ApellidoMaterno","SemestreId","GrupoId","Adeudo","Correo","PlantelId","UsuarioId") VALUES (20300699, 'Rodrigo', 'Romero', 'Corvera', 7, 2, 0, 'corvera@ceti.mx', 1, 2);
INSERT INTO "Estudiante" ("EstudianteId","Nombre","ApellidoPaterno","ApellidoMaterno","SemestreId","GrupoId","Adeudo","Correo","PlantelId","UsuarioId") VALUES (20300799, 'Jared', 'Duenas', 'Flores', 7, 2, 0, 'duenas@ceti.mx', 1, 3);
INSERT INTO "Estudiante" ("EstudianteId","Nombre","ApellidoPaterno","ApellidoMaterno","SemestreId","GrupoId","Adeudo","Correo","PlantelId","UsuarioId") VALUES (20300685, 'Gabriela', 'Arias', 'Gomez', 7, 2, 0, 'arias@ceti.mx', 1, 4);
INSERT INTO "Estudiante" ("EstudianteId","Nombre","ApellidoPaterno","ApellidoMaterno","SemestreId","GrupoId","Adeudo","Correo","PlantelId","UsuarioId") VALUES (20300666, 'Bruno', 'Castaneda', 'Soto', 7, 2, 0, 'castaneda@ceti.mx', 1, 5);

-----------------------------------------------------

CREATE TABLE "ReporteMantenimiento" (
  "ReporteMantenimientoId" INTEGER PRIMARY KEY,
  "Fecha" "datetime" NOT NULL,
  "MantenimientoId" INTEGER NOT NULL,
  "MaterialId" INTEGER NOT NULL,

  CONSTRAINT "FK_ReporteMantenimiento_Mantenimiento" FOREIGN KEY 
	(
		"MantenimientoId"
	) REFERENCES "Mantenimiento" (
		"MantenimientoId"
    ),

  CONSTRAINT "FK_ReporteMantenimiento_Material" FOREIGN KEY 
	(
		"MaterialId"
	) REFERENCES "Material" (
		"MaterialId"
    )

);

-----------------------------------------------------

CREATE TABLE "Material" (
  "MaterialId" INTEGER PRIMARY KEY,
  "ModeloId" INTEGER NOT NULL,
  "Descripcion" "ntext" NOT NULL,
  "YearEntrada" INTEGER NOT NULL,
  "MarcaId" INTEGER NOT NULL,
  "CategoriaId" INTEGER NOT NULL,
  "PlantelId" INTEGER NOT NULL,
  "Serie" nvarchar(255) NOT NULL,
  "ValorHistorico" decimal(18,2) NOT NULL,
  "Condición" "bit" NOT NULL DEFAULT (0),
  
  CONSTRAINT "FK_Material_Modelo" FOREIGN KEY 
	(
		"ModeloId"
	) REFERENCES "Modelo" (
		"ModeloId"
    ),

  CONSTRAINT "FK_Material_Marca" FOREIGN KEY 
	(
		"MarcaId"
	) REFERENCES "Marca" (
		"MarcaId"
    ),

    CONSTRAINT "FK_Material_Plantel" FOREIGN KEY 
	(
		"PlantelId"
	) REFERENCES "Plantel" (
		"PlantelId"
    ),

  CONSTRAINT "FK_Material_Categoria" FOREIGN KEY 
	(
		"CategoriaId"
	) REFERENCES "Categoria" (
		"CategoriaId"
    )
);

-----------------------------------------------------

CREATE TABLE "Pedido" (
  "PedidoId" INTEGER PRIMARY KEY,
  "Fecha" "datetime" NOT NULL,
  "LaboratorioId" INTEGER NOT NULL,
  "HoraEntrega" "datetime" NOT NULL,
  "HoraDevolucion" "datetime" NOT NULL,
  "EstudianteId" INTEGER NULL,
  "DocenteId" INTEGER NULL,
  "CoordinadorId" INTEGER NULL,
  "Estado" "bit" NULL DEFAULT (0),

  CONSTRAINT "FK_Pedido_Laboratorio" FOREIGN KEY 
	(
		"LaboratorioId"
	) REFERENCES "Laboratorio" (
		"LaboratorioId"
    ),

  CONSTRAINT "FK_Pedido_Estudiante" FOREIGN KEY 
	(
		"EstudianteId"
	) REFERENCES "Estudiante" (
		"EstudianteId"
    ),

  CONSTRAINT "FK_Pedido_Docente" FOREIGN KEY 
	(
		"DocenteId"
	) REFERENCES "Docente" (
		"DocenteId"
    ),
  CONSTRAINT "FK_Pedido_Coordinador" FOREIGN KEY 
	(
		"CoordinadorId"
	) REFERENCES "Coordinador" (
		"CoordinadorId"
    )
);

-----------------------------------------------------

CREATE TABLE "Desc_Pedido" (
    "Desc_PedidoId" INTEGER PRIMARY KEY,
    "Cantidad" INTEGER NOT NULL,
    "PedidoId" INTEGER NOT  NULL,
    "MaterialId" INTEGER NOT NULL,

  CONSTRAINT "FK_DescPedido_Pedido" FOREIGN KEY 
	(
		"PedidoId"
	) REFERENCES "Pedido" (
		"PedidoId"
    ),

    CONSTRAINT "FK_DescPedido_Material" FOREIGN KEY 
	(
		"MaterialId"
	) REFERENCES "Material" (
		"MaterialId"
    )
);