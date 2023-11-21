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
DROP TABLE IF EXISTS "Coordinador";
DROP TABLE IF EXISTS "Almacenista";
DROP TABLE IF EXISTS "Estudiante";
DROP TABLE IF EXISTS "Mantenimiento";
DROP TABLE IF EXISTS "Material";
DROP TABLE IF EXISTS "Pedido";
DROP TABLE IF EXISTS "Desc_Pedido";

CREATE TABLE "Categoria" (
	"CategoriaId" INTEGER PRIMARY KEY,
	"Nombre" nvarchar (50) NOT NULL ,
	"Descripcion" "ntext" NOT NULL,
  "Acceso" nvarchar (1) NULL DEFAULT (0)
  /*1 - Todos
    2 - Docentes 
    3 - Nadie son del Almacen*/
);

-----------------------------------------------------

INSERT INTO "Categoria" ("CategoriaId", "Nombre", "Descripcion", "Acceso") VALUES ('1', 'BORRADOR', 'BORRADOR DE MEMORIAS', '2');
INSERT INTO "Categoria" ("CategoriaId", "Nombre", "Descripcion", "Acceso") VALUES ('2', 'BRAZO', 'BRAZO ROBOT', '2');
INSERT INTO "Categoria" ("CategoriaId", "Nombre", "Descripcion", "Acceso") VALUES ('3', 'CAMARA', 'CAMARA DE VIDEO', '2');
INSERT INTO "Categoria" ("CategoriaId", "Nombre", "Descripcion", "Acceso") VALUES ('4', 'CAUTIN', 'CAUTIN DE ESTACION', '1');
INSERT INTO "Categoria" ("CategoriaId", "Nombre", "Descripcion", "Acceso") VALUES ('5', 'CERTIFICADOR', 'CERTIFICADOR DE GAMA DE FRECUENCIAS', '2');
INSERT INTO "Categoria" ("CategoriaId", "Nombre", "Descripcion", "Acceso") VALUES ('6', 'COMPUTADORA', 'COMPUTADORA', '3');
INSERT INTO "Categoria" ("CategoriaId", "Nombre", "Descripcion", "Acceso") VALUES ('7', 'ENGARGOLADORA', 'ENGARGOLADORA', '2');
INSERT INTO "Categoria" ("CategoriaId", "Nombre", "Descripcion", "Acceso") VALUES ('8', 'EQUIPO', 'CONJUNTO DE INSTRUMENTACION CON 12 INSTRUMENTOS INTEGRADOS', '2');
INSERT INTO "Categoria" ("CategoriaId", "Nombre", "Descripcion", "Acceso") VALUES ('9', 'ESTACION', 'ESTACION DE SOLDADO Y DESOLDADO', '1');
INSERT INTO "Categoria" ("CategoriaId", "Nombre", "Descripcion", "Acceso") VALUES ('10', 'FRECUENCIOMETRO', 'FRECUENCIOMETRO', '1');
INSERT INTO "Categoria" ("CategoriaId", "Nombre", "Descripcion", "Acceso") VALUES ('11', 'FUENTE', 'FUENTE DE ALIMENTACION', '1');
INSERT INTO "Categoria" ("CategoriaId", "Nombre", "Descripcion", "Acceso") VALUES ('12', 'GENERADOR', 'GENERADOR DE FUNCIONES', '1');
INSERT INTO "Categoria" ("CategoriaId", "Nombre", "Descripcion", "Acceso") VALUES ('13', 'KIT', 'HERRAMIENTA DE CRIMPEO', '2');
INSERT INTO "Categoria" ("CategoriaId", "Nombre", "Descripcion", "Acceso") VALUES ('14', 'LCR', 'LCR', '1');
INSERT INTO "Categoria" ("CategoriaId", "Nombre", "Descripcion", "Acceso") VALUES ('15', 'LECTOR', 'LECTOR DE CODIGO DE BARRAS', '2');
INSERT INTO "Categoria" ("CategoriaId", "Nombre", "Descripcion", "Acceso") VALUES ('16', 'MULTIMETRO', 'MULTIMETRO DIGITAL', '1');
INSERT INTO "Categoria" ("CategoriaId", "Nombre", "Descripcion", "Acceso") VALUES ('17', 'OSCILOSCOPIO', 'OSCILOSCOPIO', '1');
INSERT INTO "Categoria" ("CategoriaId", "Nombre", "Descripcion", "Acceso") VALUES ('18', 'PLC', 'PLC', '2');
INSERT INTO "Categoria" ("CategoriaId", "Nombre", "Descripcion", "Acceso") VALUES ('19', 'PROBADOR', 'PROBADOR Y PROGRAMADOR UNIVERSAL', '2');
INSERT INTO "Categoria" ("CategoriaId", "Nombre", "Descripcion", "Acceso") VALUES ('20', 'PROGRAMADOR', 'PROGRAMADOR UNIVERSAL', '2');
INSERT INTO "Categoria" ("CategoriaId", "Nombre", "Descripcion", "Acceso") VALUES ('21', 'PROYECTOR', 'PROYECTOR', '2');
INSERT INTO "Categoria" ("CategoriaId", "Nombre", "Descripcion", "Acceso") VALUES ('22', 'PUENTE', 'PUENTE UNIVERSAL', '2');
INSERT INTO "Categoria" ("CategoriaId", "Nombre", "Descripcion", "Acceso") VALUES ('23', 'REGULADOR', 'REGULADOR', '3');
INSERT INTO "Categoria" ("CategoriaId", "Nombre", "Descripcion", "Acceso") VALUES ('24', 'REPRODUCTOR', 'REPRODUCTOR MP3, CD, DVD, CD-RW/R, DVD-RW/R, SVCD, JPEG Y VHS', '2');
INSERT INTO "Categoria" ("CategoriaId", "Nombre", "Descripcion", "Acceso") VALUES ('25', 'SAD', 'EQUIPO DE ADQUISICION DE DATOS', '2');

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

INSERT INTO "Laboratorio" ("LaboratorioId", "Nombre", "Descripcion") VALUES ('1', 'F:202', 'AULA 202');
INSERT INTO "Laboratorio" ("LaboratorioId", "Nombre", "Descripcion") VALUES ('2', 'F:203A', 'AULA 203 A');
INSERT INTO "Laboratorio" ("LaboratorioId", "Nombre", "Descripcion") VALUES ('3', 'F:203B', 'AULA 203 B');
INSERT INTO "Laboratorio" ("LaboratorioId", "Nombre", "Descripcion") VALUES ('4', 'F:215', 'AULA 215');
INSERT INTO "Laboratorio" ("LaboratorioId", "Nombre", "Descripcion") VALUES ('5', 'LABA', 'LABORATORIO DE COMPUTO A');
INSERT INTO "Laboratorio" ("LaboratorioId", "Nombre", "Descripcion") VALUES ('6', 'LABB', 'LABORATORIO DE COMPUTO B');
INSERT INTO "Laboratorio" ("LaboratorioId", "Nombre", "Descripcion") VALUES ('7', 'LABC', 'LABORATORIO DE COMPUTO C');
INSERT INTO "Laboratorio" ("LaboratorioId", "Nombre", "Descripcion") VALUES ('8', 'LABD', 'LABORATORIO DE COMPUTO D');
INSERT INTO "Laboratorio" ("LaboratorioId", "Nombre", "Descripcion") VALUES ('9', 'LABE', 'LABORATORIO DE COMPUTO E');
INSERT INTO "Laboratorio" ("LaboratorioId", "Nombre", "Descripcion") VALUES ('10', 'ELECA', 'LABORATORIO DE ELECTRONICA A');
INSERT INTO "Laboratorio" ("LaboratorioId", "Nombre", "Descripcion") VALUES ('11', 'ELECB', 'LABORATORIO DE ELCETRONICA B');
INSERT INTO "Laboratorio" ("LaboratorioId", "Nombre", "Descripcion") VALUES ('12', 'ELECC', 'LABORATORIO DE ELECTRONICA C');
INSERT INTO "Laboratorio" ("LaboratorioId", "Nombre", "Descripcion") VALUES ('13', 'LRED1', 'LABORATORIO DE REDES 1');
INSERT INTO "Laboratorio" ("LaboratorioId", "Nombre", "Descripcion") VALUES ('14', 'LRED2', 'LABORATORIO DE REDES 2');
INSERT INTO "Laboratorio" ("LaboratorioId", "Nombre", "Descripcion") VALUES ('15', 'SL1', 'SOFTWARE LIBRE 1');
INSERT INTO "Laboratorio" ("LaboratorioId", "Nombre", "Descripcion") VALUES ('16', 'SL2', 'SOFTWARE LIBRE 2');
INSERT INTO "Laboratorio" ("LaboratorioId", "Nombre", "Descripcion") VALUES ('17', 'SL3', 'SOFTWARE LIBRE 3');
INSERT INTO "Laboratorio" ("LaboratorioId", "Nombre", "Descripcion") VALUES ('18', 'MTO', 'TALLER DE MANTENIMIENTO');
INSERT INTO "Laboratorio" ("LaboratorioId", "Nombre", "Descripcion") VALUES ('19', 'LSDIG1', 'TALLER DE SISTEMAS DIGITALES 1');
INSERT INTO "Laboratorio" ("LaboratorioId", "Nombre", "Descripcion") VALUES ('20', 'LSDIG2', 'TALLER DE SISTEMAS DIGITALES 2');

-----------------------------------------------------

CREATE TABLE "Marca" (
  "MarcaId" INTEGER PRIMARY KEY,
  "Nombre" nvarchar(50) NOT NULL,
  "Descripcion" "ntext" NOT NULL
);

-----------------------------------------------------

INSERT INTO "Marca" ("MarcaId", "Nombre", "Descripcion") VALUES ('1', 'S/M', 'S/M');
INSERT INTO "Marca" ("MarcaId", "Nombre", "Descripcion") VALUES ('2', 'APOLLO', 'APOLLO');
INSERT INTO "Marca" ("MarcaId", "Nombre", "Descripcion") VALUES ('3', 'BB', 'BB');
INSERT INTO "Marca" ("MarcaId", "Nombre", "Descripcion") VALUES ('4', 'B&K', 'B&K');
INSERT INTO "Marca" ("MarcaId", "Nombre", "Descripcion") VALUES ('5', 'BK PRECISION', 'BK PRECISION');
INSERT INTO "Marca" ("MarcaId", "Nombre", "Descripcion") VALUES ('6', 'CENTRA', 'CENTRA');
INSERT INTO "Marca" ("MarcaId", "Nombre", "Descripcion") VALUES ('7', 'ELENCO PRECISION', 'ELENCO PRECISION');
INSERT INTO "Marca" ("MarcaId", "Nombre", "Descripcion") VALUES ('8', 'EE TOOLS', 'EE TOOLS');
INSERT INTO "Marca" ("MarcaId", "Nombre", "Descripcion") VALUES ('9', 'ESCORT', 'ESCORT');
INSERT INTO "Marca" ("MarcaId", "Nombre", "Descripcion") VALUES ('10', 'EPROM', 'EPROM');
INSERT INTO "Marca" ("MarcaId", "Nombre", "Descripcion") VALUES ('11', 'EXTECH', 'EXTECH');
INSERT INTO "Marca" ("MarcaId", "Nombre", "Descripcion") VALUES ('12', 'FCP', 'FCP');
INSERT INTO "Marca" ("MarcaId", "Nombre", "Descripcion") VALUES ('13', 'FESTO', 'FESTO');
INSERT INTO "Marca" ("MarcaId", "Nombre", "Descripcion") VALUES ('14', 'FLUKE', 'FLUKE');
INSERT INTO "Marca" ("MarcaId", "Nombre", "Descripcion") VALUES ('15', 'GB LOHNOS', 'GB LOHNOS');
INSERT INTO "Marca" ("MarcaId", "Nombre", "Descripcion") VALUES ('16', 'GWINSTEK', 'GWINSTEK');
INSERT INTO "Marca" ("MarcaId", "Nombre", "Descripcion") VALUES ('17', 'HUNG-CHANG', 'HUNG-CHANG');
INSERT INTO "Marca" ("MarcaId", "Nombre", "Descripcion") VALUES ('18', 'IDEAL', 'IDEAL');
INSERT INTO "Marca" ("MarcaId", "Nombre", "Descripcion") VALUES ('19', 'INSTEK', 'INSTEK');
INSERT INTO "Marca" ("MarcaId", "Nombre", "Descripcion") VALUES ('20', 'MICROCHIP', 'MICROCHIP');
INSERT INTO "Marca" ("MarcaId", "Nombre", "Descripcion") VALUES ('21', 'MULTILAB', 'MULTILAB');
INSERT INTO "Marca" ("MarcaId", "Nombre", "Descripcion") VALUES ('22', 'NOVATEK', 'NOVATEK');
INSERT INTO "Marca" ("MarcaId", "Nombre", "Descripcion") VALUES ('23', 'OPTOMA', 'OPTOMA');
INSERT INTO "Marca" ("MarcaId", "Nombre", "Descripcion") VALUES ('24', 'PASCO SCIENTIFIC', 'PASCO SCIENTIFIC');
INSERT INTO "Marca" ("MarcaId", "Nombre", "Descripcion") VALUES ('25', 'PIS STAR PLUS', 'PIS STAR PLUS');
INSERT INTO "Marca" ("MarcaId", "Nombre", "Descripcion") VALUES ('26', 'PROSKIT', 'PROSKIT');
INSERT INTO "Marca" ("MarcaId", "Nombre", "Descripcion") VALUES ('27', 'PROTEK', 'PROTEK');
INSERT INTO "Marca" ("MarcaId", "Nombre", "Descripcion") VALUES ('28', 'ROBIX', 'ROBIX');
INSERT INTO "Marca" ("MarcaId", "Nombre", "Descripcion") VALUES ('29', 'ROMMAX', 'ROMMAX');
INSERT INTO "Marca" ("MarcaId", "Nombre", "Descripcion") VALUES ('30', 'SONY', 'SONY');
INSERT INTO "Marca" ("MarcaId", "Nombre", "Descripcion") VALUES ('31', 'SOLOMON', 'SOLOMON');
INSERT INTO "Marca" ("MarcaId", "Nombre", "Descripcion") VALUES ('32', 'STEREN', 'STEREN');
INSERT INTO "Marca" ("MarcaId", "Nombre", "Descripcion") VALUES ('33', 'SUN EQUIPAMENT', 'SUN EQUIPAMENT');
INSERT INTO "Marca" ("MarcaId", "Nombre", "Descripcion") VALUES ('34', 'TEKTRONIX', 'TEKTRONIX');
INSERT INTO "Marca" ("MarcaId", "Nombre", "Descripcion") VALUES ('35', 'VISION', 'VISION');
INSERT INTO "Marca" ("MarcaId", "Nombre", "Descripcion") VALUES ('36', 'WAVETEK', 'WAVETEK');
INSERT INTO "Marca" ("MarcaId", "Nombre", "Descripcion") VALUES ('37', 'WELCH ALLYN', 'WELCH ALLYN');
INSERT INTO "Marca" ("MarcaId", "Nombre", "Descripcion") VALUES ('38', 'WELLER', 'WELLER');

-----------------------------------------------------

CREATE TABLE "Modelo" (
  "ModeloId" INTEGER PRIMARY KEY,
  "Nombre" nvarchar(50) NOT NULL,
  "Descripcion" "ntext" NOT NULL
);

-----------------------------------------------------

INSERT INTO "Modelo" ("ModeloId", "Nombre", "Descripcion") VALUES ('1', 'S/M', 'S/M');
INSERT INTO "Modelo" ("ModeloId", "Nombre", "Descripcion") VALUES ('2', '114B', '114B');
INSERT INTO "Modelo" ("ModeloId", "Nombre", "Descripcion") VALUES ('3', '1803C', '1803C');
INSERT INTO "Modelo" ("ModeloId", "Nombre", "Descripcion") VALUES ('4', '187', '187');
INSERT INTO "Modelo" ("ModeloId", "Nombre", "Descripcion") VALUES ('5', '192', '192');
INSERT INTO "Modelo" ("ModeloId", "Nombre", "Descripcion") VALUES ('6', '202', '202');
INSERT INTO "Modelo" ("ModeloId", "Nombre", "Descripcion") VALUES ('7', '280', '280');
INSERT INTO "Modelo" ("ModeloId", "Nombre", "Descripcion") VALUES ('8', '2880A', '2880A');
INSERT INTO "Modelo" ("ModeloId", "Nombre", "Descripcion") VALUES ('9', '33-993', '33-993');
INSERT INTO "Modelo" ("ModeloId", "Nombre", "Descripcion") VALUES ('10', '382213', '382213');
INSERT INTO "Modelo" ("ModeloId", "Nombre", "Descripcion") VALUES ('11', '382270', '382270');
INSERT INTO "Modelo" ("ModeloId", "Nombre", "Descripcion") VALUES ('12', '4000', '4000');
INSERT INTO "Modelo" ("ModeloId", "Nombre", "Descripcion") VALUES ('13', '3063 RCS-6', '3063 RCS-6');
INSERT INTO "Modelo" ("ModeloId", "Nombre", "Descripcion") VALUES ('14', '4040DDS', '4040DDS');
INSERT INTO "Modelo" ("ModeloId", "Nombre", "Descripcion") VALUES ('15', '600', '600');
INSERT INTO "Modelo" ("ModeloId", "Nombre", "Descripcion") VALUES ('16', '844A', '844A');
INSERT INTO "Modelo" ("ModeloId", "Nombre", "Descripcion") VALUES ('17', '850', '850');
INSERT INTO "Modelo" ("ModeloId", "Nombre", "Descripcion") VALUES ('18', '875B', '875B');
INSERT INTO "Modelo" ("ModeloId", "Nombre", "Descripcion") VALUES ('19', '878', '878');
INSERT INTO "Modelo" ("ModeloId", "Nombre", "Descripcion") VALUES ('20', 'CFG253', 'CFG253');
INSERT INTO "Modelo" ("ModeloId", "Nombre", "Descripcion") VALUES ('21', 'CONCEPT 2210', 'CONCEPT 2210');
INSERT INTO "Modelo" ("ModeloId", "Nombre", "Descripcion") VALUES ('22', 'DCR TRV 361', 'DCR TRV 361');
INSERT INTO "Modelo" ("ModeloId", "Nombre", "Descripcion") VALUES ('23', 'DMM-1230', 'DMM-1230');
INSERT INTO "Modelo" ("ModeloId", "Nombre", "Descripcion") VALUES ('24', 'DS200', 'DS200');
INSERT INTO "Modelo" ("ModeloId", "Nombre", "Descripcion") VALUES ('25', 'EAS200', 'EAS200');
INSERT INTO "Modelo" ("ModeloId", "Nombre", "Descripcion") VALUES ('26', 'EFG3210', 'EFG3210');
INSERT INTO "Modelo" ("ModeloId", "Nombre", "Descripcion") VALUES ('27', 'EMIGFG8215A', 'EMIGFG8215A');
INSERT INTO "Modelo" ("ModeloId", "Nombre", "Descripcion") VALUES ('28', 'EP719', 'EP719');
INSERT INTO "Modelo" ("ModeloId", "Nombre", "Descripcion") VALUES ('29', 'GOS-653G', 'GOS-653G');
INSERT INTO "Modelo" ("ModeloId", "Nombre", "Descripcion") VALUES ('30', 'MASTER 3 1', 'MASTER 3 1');
INSERT INTO "Modelo" ("ModeloId", "Nombre", "Descripcion") VALUES ('31', 'MS860', 'MS860');
INSERT INTO "Modelo" ("ModeloId", "Nombre", "Descripcion") VALUES ('32', 'PENTIUM 4 A', 'PENTIUM 4 A');
INSERT INTO "Modelo" ("ModeloId", "Nombre", "Descripcion") VALUES ('33', 'PIS STAR PLUS', 'PIS STAR PLUS');
INSERT INTO "Modelo" ("ModeloId", "Nombre", "Descripcion") VALUES ('34', 'PRO 260', 'PRO 260');
INSERT INTO "Modelo" ("ModeloId", "Nombre", "Descripcion") VALUES ('35', 'QJ3005II', 'QJ3005II');
INSERT INTO "Modelo" ("ModeloId", "Nombre", "Descripcion") VALUES ('36', 'ROMMAX', 'ROMMAX');
INSERT INTO "Modelo" ("ModeloId", "Nombre", "Descripcion") VALUES ('37', 'SCIENCE WORKSHIP 750', 'SCIENCE WORKSHIP 750');
INSERT INTO "Modelo" ("ModeloId", "Nombre", "Descripcion") VALUES ('38', 'TDS220', 'TDS220');
INSERT INTO "Modelo" ("ModeloId", "Nombre", "Descripcion") VALUES ('39', 'TDS1012', 'TDS1012');
INSERT INTO "Modelo" ("ModeloId", "Nombre", "Descripcion") VALUES ('40', 'TDS2014C', 'TDS2014C');
INSERT INTO "Modelo" ("ModeloId", "Nombre", "Descripcion") VALUES ('41', 'TOP MAX TM-A48', 'TOP MAX TM-A48');
INSERT INTO "Modelo" ("ModeloId", "Nombre", "Descripcion") VALUES ('42', 'TOP MAX TM-A49', 'TOP MAX TM-A49');
INSERT INTO "Modelo" ("ModeloId", "Nombre", "Descripcion") VALUES ('43', 'VPL-EX100', 'VPL-EX100');
INSERT INTO "Modelo" ("ModeloId", "Nombre", "Descripcion") VALUES ('44', 'WTCPN 417', 'WTCPN 417');
INSERT INTO "Modelo" ("ModeloId", "Nombre", "Descripcion") VALUES ('45', 'XP-620', 'XP-620');
INSERT INTO "Modelo" ("ModeloId", "Nombre", "Descripcion") VALUES ('46', 'X0620 ED333T', 'X0620 ED333T');

-----------------------------------------------------

CREATE TABLE "Plantel" (
  "PlantelId" INTEGER PRIMARY KEY,
  "Nombre" nvarchar(50) NOT NULL,
  "Direccion" nvarchar(100) NOT NULL,
  "Telefono" BIGINT NOT NULL
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

INSERT INTO 'Mantenimiento' ('MantenimientoId', 'Nombre', 'Descripcion') VALUES ('1', 'LIMPIEZA', 'SE LE HARA UNA LIMPIEZA AL EQUIPO INGRESADO');
INSERT INTO 'Mantenimiento' ('MantenimientoId', 'Nombre', 'Descripcion') VALUES ('2', 'REPARACION', 'SE LE HARA UNA REPARACION AL EQUIPO INGRESADO');
INSERT INTO 'Mantenimiento' ('MantenimientoId', 'Nombre', 'Descripcion') VALUES ('3', 'CAMBIO DE PIEZA', 'SE LE HARA UN CAMBIO DE PIEZA AL EQUIPO INGRESADO');
INSERT INTO 'Mantenimiento' ('MantenimientoId', 'Nombre', 'Descripcion') VALUES ('4', 'SOLDADO DE PIEZA', 'SE LE SOLDARA UNA DE LAS PIEZA AL EQUIPO INGRESADO');
INSERT INTO 'Mantenimiento' ('MantenimientoId', 'Nombre', 'Descripcion') VALUES ('5', 'CAMBIO DE BATERIA', 'SE LE HARA UN CAMBIO DE BATERIA AL EQUIPO INGRESADO');

-----------------------------------------------------

CREATE TABLE "Usuario" (
  "UsuarioId" INTEGER PRIMARY KEY,
  "Usuario" nvarchar(50) NOT NULL,
  "Password" ntext NOT NULL,
  "Temporal" "bit" NOT NULL DEFAULT (0)
  /*
  0- no temporal
  1- temporal*/
);

-----------------------------------------------------

INSERT INTO 'Usuario' ('UsuarioId', 'Usuario', 'Password', 'Temporal') VALUES ('1', 'ANFLTR', '@ANDRES#1', '0');
INSERT INTO 'Usuario' ('UsuarioId', 'Usuario', 'Password', 'Temporal') VALUES ('2', 'MASARA', '@MARIADELCARMEN#1 ', '0');
INSERT INTO 'Usuario' ('UsuarioId', 'Usuario', 'Password', 'Temporal') VALUES ('3', 'MECOPE', '@MELISSA#1', '0');
INSERT INTO 'Usuario' ('UsuarioId', 'Usuario', 'Password', 'Temporal') VALUES ('4', 'YAFUME', '@YAIR#1', '0');
INSERT INTO 'Usuario' ('UsuarioId', 'Usuario', 'Password', 'Temporal') VALUES ('5', 'JOARHE', '@JORDAN#1', '0');
INSERT INTO 'Usuario' ('UsuarioId', 'Usuario', 'Password', 'Temporal') VALUES ('6', 'ROCODE', '@ROMAN#1', '0');
INSERT INTO 'Usuario' ('UsuarioId', 'Usuario', 'Password', 'Temporal') VALUES ('7', 'ANLOVA', '@ANTONIO#1', '0');
INSERT INTO 'Usuario' ('UsuarioId', 'Usuario', 'Password', 'Temporal') VALUES ('8', 'CARABA', '@CARLOS#1', '0');
INSERT INTO 'Usuario' ('UsuarioId', 'Usuario', 'Password', 'Temporal') VALUES ('9', 'JOECJI', '@JORGE#1', '0');
INSERT INTO 'Usuario' ('UsuarioId', 'Usuario', 'Password', 'Temporal') VALUES ('10', 'JADERO', '@JAIR#1', '0');
INSERT INTO 'Usuario' ('UsuarioId', 'Usuario', 'Password', 'Temporal') VALUES ('11', 'ANRUAV', '@ANDREA#1', '0');
INSERT INTO 'Usuario' ('UsuarioId', 'Usuario', 'Password', 'Temporal') VALUES ('12', 'MOVAAY', '@MONSERRAT#1', '0');
INSERT INTO 'Usuario' ('UsuarioId', 'Usuario', 'Password', 'Temporal') VALUES ('13', 'LUROCA', '@LUISALEJANDRO#1', '0');
INSERT INTO 'Usuario' ('UsuarioId', 'Usuario', 'Password', 'Temporal') VALUES ('14', 'PAPERA', '@PAULINA#1', '0');
INSERT INTO 'Usuario' ('UsuarioId', 'Usuario', 'Password', 'Temporal') VALUES ('15', 'SALOOC', '@SARA#1', '0');
INSERT INTO 'Usuario' ('UsuarioId', 'Usuario', 'Password', 'Temporal') VALUES ('16', 'ANMARO', '@ANEEL#1', '0');
INSERT INTO 'Usuario' ('UsuarioId', 'Usuario', 'Password', 'Temporal') VALUES ('17', 'JUPEGO', '@JUAN#1', '0');
INSERT INTO 'Usuario' ('UsuarioId', 'Usuario', 'Password', 'Temporal') VALUES ('18', 'MAGAMA', '@MARIA#1', '0');
INSERT INTO 'Usuario' ('UsuarioId', 'Usuario', 'Password', 'Temporal') VALUES ('19', 'ANHESA', '@ANA#1', '0');
INSERT INTO 'Usuario' ('UsuarioId', 'Usuario', 'Password', 'Temporal') VALUES ('20', 'ALROGO', '@ALEJANDRO#1', '0');
INSERT INTO 'Usuario' ('UsuarioId', 'Usuario', 'Password', 'Temporal') VALUES ('21', 'DARUTO', '@DANIELA#1', '0');
INSERT INTO 'Usuario' ('UsuarioId', 'Usuario', 'Password', 'Temporal') VALUES ('22', 'MATORE', '@MARISOL#1', '0');
INSERT INTO 'Usuario' ('UsuarioId', 'Usuario', 'Password', 'Temporal') VALUES ('23', 'JAGOAV', '@JAVIER#1', '0');
INSERT INTO 'Usuario' ('UsuarioId', 'Usuario', 'Password', 'Temporal') VALUES ('24', 'SOCALO', '@SOFIA#1', '0');
INSERT INTO 'Usuario' ('UsuarioId', 'Usuario', 'Password', 'Temporal') VALUES ('25', 'DAARSO', '@DANIEL#1', '0');
INSERT INTO 'Usuario' ('UsuarioId', 'Usuario', 'Password', 'Temporal') VALUES ('26', 'MAPISE', '@MARIAN#1', '0');
INSERT INTO 'Usuario' ('UsuarioId', 'Usuario', 'Password', 'Temporal') VALUES ('27', 'MAMEES', '@MARIANA#1', '0');
INSERT INTO 'Usuario' ('UsuarioId', 'Usuario', 'Password', 'Temporal') VALUES ('28', 'JUOZES', '@JULIO#1', '0');
INSERT INTO 'Usuario' ('UsuarioId', 'Usuario', 'Password', 'Temporal') VALUES ('29', 'MIGOLA', '@MIGUEL#1', '0');
INSERT INTO 'Usuario' ('UsuarioId', 'Usuario', 'Password', 'Temporal') VALUES ('30', 'ANRAMO', '@ANGEL#1', '0');
INSERT INTO 'Usuario' ('UsuarioId', 'Usuario', 'Password', 'Temporal') VALUES ('31', 'LUGABE', '@LUZARACELI#1', '0');
INSERT INTO 'Usuario' ('UsuarioId', 'Usuario', 'Password', 'Temporal') VALUES ('32', 'KAISRO', '@KARLAARELY#1', '0');
INSERT INTO 'Usuario' ('UsuarioId', 'Usuario', 'Password', 'Temporal') VALUES ('33', 'NABEME', '@NANCYDELCARMEN#1', '0');
INSERT INTO 'Usuario' ('UsuarioId', 'Usuario', 'Password', 'Temporal') VALUES ('34', 'CARAGA', '@CARLOSALBERTO#1', '0');
INSERT INTO 'Usuario' ('UsuarioId', 'Usuario', 'Password', 'Temporal') VALUES ('35', 'LUDUHE', '@LUISRENE#1', '0');
INSERT INTO 'Usuario' ('UsuarioId', 'Usuario', 'Password', 'Temporal') VALUES ('36', 'ANBRSA', '@ANGELEMMANUEL#1', '0');
INSERT INTO 'Usuario' ('UsuarioId', 'Usuario', 'Password', 'Temporal') VALUES ('37', 'ERPLOY', '@ERNESTOALEJANDRO#1', '0');
INSERT INTO 'Usuario' ('UsuarioId', 'Usuario', 'Password', 'Temporal') VALUES ('38', 'ALALTO', '@ALEJANDRA#1', '0');
INSERT INTO 'Usuario' ('UsuarioId', 'Usuario', 'Password', 'Temporal') VALUES ('39', 'ELDESO', '@ELIZABETHALVAREZ#1', '0');
INSERT INTO 'Usuario' ('UsuarioId', 'Usuario', 'Password', 'Temporal') VALUES ('40', 'ULVACA', '@ULYSES#1', '0');
INSERT INTO 'Usuario' ('UsuarioId', 'Usuario', 'Password', 'Temporal') VALUES ('41', 'ANLOGO', '@ANTONIO#1', '0');
INSERT INTO 'Usuario' ('UsuarioId', 'Usuario', 'Password', 'Temporal') VALUES ('42', 'SEELRO', '@SERGIOANTONIO#1', '0');
INSERT INTO 'Usuario' ('UsuarioId', 'Usuario', 'Password', 'Temporal') VALUES ('43', 'SOIBTO', '@SONIAERIKA#1', '0');
INSERT INTO 'Usuario' ('UsuarioId', 'Usuario', 'Password', 'Temporal') VALUES ('44', 'SUFEHE', '@SUSANAELIZABETH#1', '0');
INSERT INTO 'Usuario' ('UsuarioId', 'Usuario', 'Password', 'Temporal') VALUES ('45', 'SEBEDE', '@SERGIO#1', '0');
INSERT INTO 'Usuario' ('UsuarioId', 'Usuario', 'Password', 'Temporal') VALUES ('46', 'DIROCO', '@DIEGO#1', '0');
INSERT INTO 'Usuario' ('UsuarioId', 'Usuario', 'Password', 'Temporal') VALUES ('47', 'ROROCO', '@RODRIGO#1', '0');
INSERT INTO 'Usuario' ('UsuarioId', 'Usuario', 'Password', 'Temporal') VALUES ('48', 'JADUFL', '@JARED#1', '0');
INSERT INTO 'Usuario' ('UsuarioId', 'Usuario', 'Password', 'Temporal') VALUES ('49', 'GAARGO', '@GABRIELA#1', '0');
INSERT INTO 'Usuario' ('UsuarioId', 'Usuario', 'Password', 'Temporal') VALUES ('50', 'BRCASO', '@BRUNO#1', '0');
INSERT INTO 'Usuario' ('UsuarioId', 'Usuario', 'Password', 'Temporal') VALUES ('51', 'PERAPI', '@PERLADAYANE#1', '0');
INSERT INTO 'Usuario' ('UsuarioId', 'Usuario', 'Password', 'Temporal') VALUES ('52', 'DELOMO', '@DENAHI#1', '0');
INSERT INTO 'Usuario' ('UsuarioId', 'Usuario', 'Password', 'Temporal') VALUES ('53', 'ALOCLO', '@ALEXISABRAHAM#1', '0');
INSERT INTO 'Usuario' ('UsuarioId', 'Usuario', 'Password', 'Temporal') VALUES ('54', 'DIROAN', '@DIEGOANTONIO#1', '0');
INSERT INTO 'Usuario' ('UsuarioId', 'Usuario', 'Password', 'Temporal') VALUES ('55', 'DAREHA', '@DAVIDKALEB#1', '0');
INSERT INTO 'Usuario' ('UsuarioId', 'Usuario', 'Password', 'Temporal') VALUES ('56', 'DIGOMA', '@DIEGOEMILIANO#1', '0');
INSERT INTO 'Usuario' ('UsuarioId', 'Usuario', 'Password', 'Temporal') VALUES ('57', 'ARZAUL', '@ARELYJAZMIN#1', '0');
INSERT INTO 'Usuario' ('UsuarioId', 'Usuario', 'Password', 'Temporal') VALUES ('58', 'DACRME', '@DANIEL#1', '0');
INSERT INTO 'Usuario' ('UsuarioId', 'Usuario', 'Password', 'Temporal') VALUES ('59', 'SECRNA', '@SERGIOYAEL#1', '0');
INSERT INTO 'Usuario' ('UsuarioId', 'Usuario', 'Password', 'Temporal') VALUES ('60', 'FEGAAP', '@FERNANDO#1', '0');

-----------------------------------------------------

CREATE TABLE "Docente" (
  "DocenteId" INTEGER PRIMARY KEY,
  "Nombre" nvarchar(50) NOT NULL,
  "ApellidoPaterno" nvarchar(50) NOT NULL,
  "ApellidoMaterno" nvarchar(50) NOT NULL,
  "Correo" nvarchar(100) NOT NULL,
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

INSERT INTO "Docente" ("DocenteId", "Nombre", "ApellidoPaterno", "ApellidoMaterno", "Correo", "PlantelId", "UsuarioId") VALUES ('1', 'LUZ ARACELI', 'GARCIA', 'BELTRAN', 'luzgarcia@ceti.mx', '1', '31');
INSERT INTO "Docente" ("DocenteId", "Nombre", "ApellidoPaterno", "ApellidoMaterno", "Correo", "PlantelId", "UsuarioId") VALUES ('2', 'KARLA ARELY', 'ISAAC', 'RODRIGUEZ', 'arely@ceti.mx', '1', '32');
INSERT INTO "Docente" ("DocenteId", "Nombre", "ApellidoPaterno", "ApellidoMaterno", "Correo", "PlantelId", "UsuarioId") VALUES ('3', 'NANCY DEL CARMEN', 'BENAVIDES', 'MEDINA', 'nancy@ceti.mx', '1', '33');
INSERT INTO "Docente" ("DocenteId", "Nombre", "ApellidoPaterno", "ApellidoMaterno", "Correo", "PlantelId", "UsuarioId") VALUES ('4', 'CARLOS ALBERTO', 'RAMIREZ', 'GARCIA', 'carlosg@ceti.mx', '1', '34');
INSERT INTO "Docente" ("DocenteId", "Nombre", "ApellidoPaterno", "ApellidoMaterno", "Correo", "PlantelId", "UsuarioId") VALUES ('5', 'LUIS RENE', 'DURAN', 'HERNANDEZ', 'lduran@ceti.mx', '1', '35');
INSERT INTO "Docente" ("DocenteId", "Nombre", "ApellidoPaterno", "ApellidoMaterno", "Correo", "PlantelId", "UsuarioId") VALUES ('6', 'ANGEL EMMANUEL', 'BRAMBILA', 'SANTAMARIA', 'abrambila@ceti.mx', '1', '36');
INSERT INTO "Docente" ("DocenteId", "Nombre", "ApellidoPaterno", "ApellidoMaterno", "Correo", "PlantelId", "UsuarioId") VALUES ('7', 'ERNESTO ALEJANDRO', 'PLAZA', 'OYARZABAL', 'plaza@ceti.mx', '1', '37');
INSERT INTO "Docente" ("DocenteId", "Nombre", "ApellidoPaterno", "ApellidoMaterno", "Correo", "PlantelId", "UsuarioId") VALUES ('8', 'ALEJANDRA', 'ALCARAZ', 'TORRES', 'alcaraz@ceti.mx', '1', '38');
INSERT INTO "Docente" ("DocenteId", "Nombre", "ApellidoPaterno", "ApellidoMaterno", "Correo", "PlantelId", "UsuarioId") VALUES ('9', 'ELIZABETH ALVAREZ', 'DEL CASTILLO', 'SOLORIO', 'castillo@ceti.mx', '1', '39');
INSERT INTO "Docente" ("DocenteId", "Nombre", "ApellidoPaterno", "ApellidoMaterno", "Correo", "PlantelId", "UsuarioId") VALUES ('10', 'ULYSES', 'VAZQUEZ', 'CARDENAS', 'uvazquez@ceti.mx', '1', '40');
INSERT INTO "Docente" ("DocenteId", "Nombre", "ApellidoPaterno", "ApellidoMaterno", "Correo", "PlantelId", "UsuarioId") VALUES ('11', 'ANTONIO', 'LOZANO', 'GONZALEZ', 'lozano@ceti.mx', '1', '41');
INSERT INTO "Docente" ("DocenteId", "Nombre", "ApellidoPaterno", "ApellidoMaterno", "Correo", "PlantelId", "UsuarioId") VALUES ('12', 'SERGIO ANTONIO', 'ELLEBRACKE', 'ROMAN', 'sellebracke@ceti.mx', '1', '42');
INSERT INTO "Docente" ("DocenteId", "Nombre", "ApellidoPaterno", "ApellidoMaterno", "Correo", "PlantelId", "UsuarioId") VALUES ('13', 'SONIA ERIKA', 'IBAÑEZ', 'TORRE', 'sdtorrre@ceti.mx', '1', '43');
INSERT INTO "Docente" ("DocenteId", "Nombre", "ApellidoPaterno", "ApellidoMaterno", "Correo", "PlantelId", "UsuarioId") VALUES ('14', 'SUSANA ELIZABETH', 'FERRER', 'HERNANDEZ', 'susanah@ceti.mx', '1', '44');
INSERT INTO "Docente" ("DocenteId", "Nombre", "ApellidoPaterno", "ApellidoMaterno", "Correo", "PlantelId", "UsuarioId") VALUES ('15', 'SERGIO', 'BECERRA', 'DELGADO', 'sergiobd@ceti.mx', '1', '45');

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

INSERT INTO "Almacenista" ("AlmacenistaId", "Nombre", "ApellidoPaterno", "ApellidoMaterno", "Correo", "UsuarioId", "PlantelId") VALUES ('1', 'ANEEL', 'MARTIN', 'RODRIGUEZ', 'martin@ceti.mx', '16', '1');
INSERT INTO "Almacenista" ("AlmacenistaId", "Nombre", "ApellidoPaterno", "ApellidoMaterno", "Correo", "UsuarioId", "PlantelId") VALUES ('2', 'JUAN', 'PEREZ', 'GONZALEZ', 'aperez@ceti.mx', '17', '1');
INSERT INTO "Almacenista" ("AlmacenistaId", "Nombre", "ApellidoPaterno", "ApellidoMaterno", "Correo", "UsuarioId", "PlantelId") VALUES ('3', 'MARIA', 'GARCIA', 'MARTINEZ', 'jgarcia@ceti.mx', '18', '1');
INSERT INTO "Almacenista" ("AlmacenistaId", "Nombre", "ApellidoPaterno", "ApellidoMaterno", "Correo", "UsuarioId", "PlantelId") VALUES ('4', 'ANA', 'HERNANDEZ', 'SANCHEZ', 'ahernandez@ceti.mx', '19', '1');
INSERT INTO "Almacenista" ("AlmacenistaId", "Nombre", "ApellidoPaterno", "ApellidoMaterno", "Correo", "UsuarioId", "PlantelId") VALUES ('5', 'ALEJANDRO', 'ROMERO', 'GOMEZ', 'aromero@ceti.mx', '20', '1');
INSERT INTO "Almacenista" ("AlmacenistaId", "Nombre", "ApellidoPaterno", "ApellidoMaterno", "Correo", "UsuarioId", "PlantelId") VALUES ('6', 'DANIELA', 'RUIZ', 'TORRES', 'druiz@ceti.mx', '21', '1');
INSERT INTO "Almacenista" ("AlmacenistaId", "Nombre", "ApellidoPaterno", "ApellidoMaterno", "Correo", "UsuarioId", "PlantelId") VALUES ('7', 'MARISOL', 'TORRES', 'REYES', 'matorres@ceti.mx', '22', '1');
INSERT INTO "Almacenista" ("AlmacenistaId", "Nombre", "ApellidoPaterno", "ApellidoMaterno", "Correo", "UsuarioId", "PlantelId") VALUES ('8', 'JAVIER', 'GOMEZ', 'AVILA', 'javgomez@ceti.mx', '23', '1');
INSERT INTO "Almacenista" ("AlmacenistaId", "Nombre", "ApellidoPaterno", "ApellidoMaterno", "Correo", "UsuarioId", "PlantelId") VALUES ('9', 'SOFIA', 'CASTILLO', 'LOPEZ', 'sfcastillo@ceti.mx', '24', '1');
INSERT INTO "Almacenista" ("AlmacenistaId", "Nombre", "ApellidoPaterno", "ApellidoMaterno", "Correo", "UsuarioId", "PlantelId") VALUES ('10', 'DANIEL', 'ARAUJO', 'SOLIS', 'daraujo@ceti.mx', '25', '1');
INSERT INTO "Almacenista" ("AlmacenistaId", "Nombre", "ApellidoPaterno", "ApellidoMaterno", "Correo", "UsuarioId", "PlantelId") VALUES ('11', 'MARIAN', 'PINEDO', 'SEGURA', 'marpin@ceti.mx', '26', '1');
INSERT INTO "Almacenista" ("AlmacenistaId", "Nombre", "ApellidoPaterno", "ApellidoMaterno", "Correo", "UsuarioId", "PlantelId") VALUES ('12', 'MARIANA', 'MERCADO', 'ESTRADA', 'mercado@ceti.mx', '27', '1');
INSERT INTO "Almacenista" ("AlmacenistaId", "Nombre", "ApellidoPaterno", "ApellidoMaterno", "Correo", "UsuarioId", "PlantelId") VALUES ('13', 'JULIO', 'OZUNA', 'ESPINOZA', 'jespinoza@ceti.mx', '28', '1');
INSERT INTO "Almacenista" ("AlmacenistaId", "Nombre", "ApellidoPaterno", "ApellidoMaterno", "Correo", "UsuarioId", "PlantelId") VALUES ('14', 'MIGUEL', 'GONZALEZ', 'LADINO', 'gonzalez@ceti.mx', '29', '1');
INSERT INTO "Almacenista" ("AlmacenistaId", "Nombre", "ApellidoPaterno", "ApellidoMaterno", "Correo", "UsuarioId", "PlantelId") VALUES ('15', 'ANGEL', 'RAYGOZA', 'MONTANA', 'montana@ceti.mx', '30', '1');

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

INSERT INTO "Coordinador" ("CoordinadorId", "Nombre", "ApellidoPaterno", "ApellidoMaterno", "Correo", "PlantelId", "UsuarioId") VALUES ('1', 'ANDRES', 'FLORES', 'TREVIÑO', 'ftcordinador@ceti.mx', '1', '1');
INSERT INTO "Coordinador" ("CoordinadorId", "Nombre", "ApellidoPaterno", "ApellidoMaterno", "Correo", "PlantelId", "UsuarioId") VALUES ('2', 'MARIA DEL CARMEN', 'SANTILLAN', 'RAMIREZ', 'marcordinador@ceti.mx', '1', '2');
INSERT INTO "Coordinador" ("CoordinadorId", "Nombre", "ApellidoPaterno", "ApellidoMaterno", "Correo", "PlantelId", "UsuarioId") VALUES ('3', 'MELISSA', 'CONTRERAS', 'PEREA', 'melcordinador@ceti.mx', '1', '3');
INSERT INTO "Coordinador" ("CoordinadorId", "Nombre", "ApellidoPaterno", "ApellidoMaterno", "Correo", "PlantelId", "UsuarioId") VALUES ('4', 'YAIR', 'FUENTES', 'MERCADO', 'jarcordinador@ceti.mx', '1', '4');
INSERT INTO "Coordinador" ("CoordinadorId", "Nombre", "ApellidoPaterno", "ApellidoMaterno", "Correo", "PlantelId", "UsuarioId") VALUES ('5', 'JORDAN', 'ARAUJO', 'HERNANDEZ', 'jorcordinador@ceti.mx', '1', '5');
INSERT INTO "Coordinador" ("CoordinadorId", "Nombre", "ApellidoPaterno", "ApellidoMaterno", "Correo", "PlantelId", "UsuarioId") VALUES ('6', 'ROMAN', 'CORTEZ', 'DE LA TORRE', 'romacordinador@ceti.mx', '1', '6');
INSERT INTO "Coordinador" ("CoordinadorId", "Nombre", "ApellidoPaterno", "ApellidoMaterno", "Correo", "PlantelId", "UsuarioId") VALUES ('7', 'ANTONIO', 'LOPEZ', 'VALENZUELA', 'antcordinador@ceti.mx', '1', '7');
INSERT INTO "Coordinador" ("CoordinadorId", "Nombre", "ApellidoPaterno", "ApellidoMaterno", "Correo", "PlantelId", "UsuarioId") VALUES ('8', 'CARLOS', 'RAMIREZ', 'BARRAGAN', 'barragancordinador@ceti.mx', '1', '8');
INSERT INTO "Coordinador" ("CoordinadorId", "Nombre", "ApellidoPaterno", "ApellidoMaterno", "Correo", "PlantelId", "UsuarioId") VALUES ('9', 'JORGE', 'ECHEVERRIA', 'JIMENEZ', 'jimcordinador@ceti.mx', '1', '9');
INSERT INTO "Coordinador" ("CoordinadorId", "Nombre", "ApellidoPaterno", "ApellidoMaterno", "Correo", "PlantelId", "UsuarioId") VALUES ('10', 'JAIR', 'DE LA CRUZ', 'ROJAS', 'rojascordinador@ceti.mx', '1', '10');
INSERT INTO "Coordinador" ("CoordinadorId", "Nombre", "ApellidoPaterno", "ApellidoMaterno", "Correo", "PlantelId", "UsuarioId") VALUES ('11', 'ANDREA', 'RUBIO', 'AVELAR', 'acordinador@ceti.mx', '1', '11');
INSERT INTO "Coordinador" ("CoordinadorId", "Nombre", "ApellidoPaterno", "ApellidoMaterno", "Correo", "PlantelId", "UsuarioId") VALUES ('12', 'MONSERRAT', 'VAZQUEZ', 'AYALA', 'moncordinador@ceti.mx', '1', '12');
INSERT INTO "Coordinador" ("CoordinadorId", "Nombre", "ApellidoPaterno", "ApellidoMaterno", "Correo", "PlantelId", "UsuarioId") VALUES ('13', 'LUIS ALEJANDRO', 'RODRIGUEZ', 'CARDENAS', 'larodcordinador@ceti.mx', '1', '13');
INSERT INTO "Coordinador" ("CoordinadorId", "Nombre", "ApellidoPaterno", "ApellidoMaterno", "Correo", "PlantelId", "UsuarioId") VALUES ('14', 'PAULINA', 'PEREZ', 'RAMOS', 'paucordinador@ceti.mx', '1', '14');
INSERT INTO "Coordinador" ("CoordinadorId", "Nombre", "ApellidoPaterno", "ApellidoMaterno", "Correo", "PlantelId", "UsuarioId") VALUES ('15', 'SARA', 'LOZANO', 'OCHOA', 'lozcordinador@ceti.mx', '1', '15');

-----------------------------------------------------

CREATE TABLE "Estudiante" (
  "EstudianteId" INTEGER PRIMARY KEY,
  "Nombre" nvarchar(50) NOT NULL,
  "ApellidoPaterno" nvarchar(50) NOT NULL,
  "ApellidoMaterno" nvarchar(50) NOT NULL,
  "SemestreId" INTEGER NOT NULL,
  "GrupoId" INTEGER NULL,
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

INSERT INTO "Estudiante" ("EstudianteId", "Nombre", "ApellidoPaterno", "ApellidoMaterno", "SemestreId", "GrupoId", "Adeudo", "Correo", "PlantelId", "UsuarioId") VALUES ('20300697', 'DIEGO', 'ROMERO', 'CORVERA', '7', '2', '0', 'a20300697@ceti.mx', '1', '46');
INSERT INTO "Estudiante" ("EstudianteId", "Nombre", "ApellidoPaterno", "ApellidoMaterno", "SemestreId", "GrupoId", "Adeudo", "Correo", "PlantelId", "UsuarioId") VALUES ('20300699', 'RODRIGO', 'ROMERO', 'CORVERA', '7', '2', '0', 'a20300699@ceti.mx', '1', '47');
INSERT INTO "Estudiante" ("EstudianteId", "Nombre", "ApellidoPaterno", "ApellidoMaterno", "SemestreId", "GrupoId", "Adeudo", "Correo", "PlantelId", "UsuarioId") VALUES ('20300799', 'JARED', 'DUENAS', 'FLORES', '7', '2', '0', 'a20300799@ceti.mx', '1', '48');
INSERT INTO "Estudiante" ("EstudianteId", "Nombre", "ApellidoPaterno", "ApellidoMaterno", "SemestreId", "GrupoId", "Adeudo", "Correo", "PlantelId", "UsuarioId") VALUES ('20300685', 'GABRIELA', 'ARIAS', 'GOMEZ', '7', '2', '0', 'a20300685@ceti.mx', '1', '49');
INSERT INTO "Estudiante" ("EstudianteId", "Nombre", "ApellidoPaterno", "ApellidoMaterno", "SemestreId", "GrupoId", "Adeudo", "Correo", "PlantelId", "UsuarioId") VALUES ('20300666', 'BRUNO', 'CASTANEDA', 'SOTO', '7', '2', '0', 'a20300666@ceti.mx', '1', '50');
INSERT INTO "Estudiante" ("EstudianteId", "Nombre", "ApellidoPaterno", "ApellidoMaterno", "SemestreId", "GrupoId", "Adeudo", "Correo", "PlantelId", "UsuarioId") VALUES ('20100320', 'PERLA DAYANE', 'RAYGOZA', 'PINEDA', '7', '2', '0', 'a20100320@ceti.mx', '1', '51');
INSERT INTO "Estudiante" ("EstudianteId", "Nombre", "ApellidoPaterno", "ApellidoMaterno", "SemestreId", "GrupoId", "Adeudo", "Correo", "PlantelId", "UsuarioId") VALUES ('20100314', 'DENAHI', 'LOPEZ', 'MONTES', '7', '2', '0', 'a20100314@ceti.mx', '1', '52');
INSERT INTO "Estudiante" ("EstudianteId", "Nombre", "ApellidoPaterno", "ApellidoMaterno", "SemestreId", "GrupoId", "Adeudo", "Correo", "PlantelId", "UsuarioId") VALUES ('20100317', 'ALEXIS ABRAHAM', 'OCHOA', 'LOPEZ', '7', '2', '0', 'a20100317@ceti.mx', '1', '53');
INSERT INTO "Estudiante" ("EstudianteId", "Nombre", "ApellidoPaterno", "ApellidoMaterno", "SemestreId", "GrupoId", "Adeudo", "Correo", "PlantelId", "UsuarioId") VALUES ('20300668', 'DIEGO ANTONIO', 'RODRIGUEZ', 'ANGUIANO', '7', '2', '0', 'a20300668@ceti.mx', '1', '54');
INSERT INTO "Estudiante" ("EstudianteId", "Nombre", "ApellidoPaterno", "ApellidoMaterno", "SemestreId", "GrupoId", "Adeudo", "Correo", "PlantelId", "UsuarioId") VALUES ('20300663', 'DAVID KALEB', 'REAL', 'HARO', '7', '2', '0', 'a20300663@ceti.mx', '1', '55');
INSERT INTO "Estudiante" ("EstudianteId", "Nombre", "ApellidoPaterno", "ApellidoMaterno", "SemestreId", "GrupoId", "Adeudo", "Correo", "PlantelId", "UsuarioId") VALUES ('20300821', 'DIEGO EMILIANO', 'GONZALEZ', 'MARTINEZ', '7', '2', '0', 'a20300821@ceti.mx', '1', '56');
INSERT INTO "Estudiante" ("EstudianteId", "Nombre", "ApellidoPaterno", "ApellidoMaterno", "SemestreId", "GrupoId", "Adeudo", "Correo", "PlantelId", "UsuarioId") VALUES ('20300846', 'ARELY JAZMIN', 'ZAVALA', 'ULLOA', '7', '2', '0', 'a20300846@ceti.mx', '1', '57');
INSERT INTO "Estudiante" ("EstudianteId", "Nombre", "ApellidoPaterno", "ApellidoMaterno", "SemestreId", "GrupoId", "Adeudo", "Correo", "PlantelId", "UsuarioId") VALUES ('20100336', 'DANIEL', 'CRUZ', 'MENDOZA', '7', '2', '0', 'a20100336@ceti.mx', '1', '58');
INSERT INTO "Estudiante" ("EstudianteId", "Nombre", "ApellidoPaterno", "ApellidoMaterno", "SemestreId", "GrupoId", "Adeudo", "Correo", "PlantelId", "UsuarioId") VALUES ('19300115', 'SERGIO YAEL', 'CRUZ', 'NAVARRO', '7', '2', '0', 'a19300115@ceti.mx', '1', '59');
INSERT INTO "Estudiante" ("EstudianteId", "Nombre", "ApellidoPaterno", "ApellidoMaterno", "SemestreId", "GrupoId", "Adeudo", "Correo", "PlantelId", "UsuarioId") VALUES ('20300674', 'FERNANDO', 'GARCIA', 'APOLINAR', '7', '2', '0', 'a20300674@ceti.mx', '1', '60');

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

INSERT INTO 'ReporteMantenimiento' ('ReporteMantenimientoId', 'Fecha', 'MantenimientoId', 'MaterialId') VALUES ('1', '2023-11-20', '1', '31590');
INSERT INTO 'ReporteMantenimiento' ('ReporteMantenimientoId', 'Fecha', 'MantenimientoId', 'MaterialId') VALUES ('2', '2023-11-21', '2', '31495');
INSERT INTO 'ReporteMantenimiento' ('ReporteMantenimientoId', 'Fecha', 'MantenimientoId', 'MaterialId') VALUES ('3', '2023-11-22', '3', '31564');
INSERT INTO 'ReporteMantenimiento' ('ReporteMantenimientoId', 'Fecha', 'MantenimientoId', 'MaterialId') VALUES ('4', '2023-11-23', '4', '31774');
INSERT INTO 'ReporteMantenimiento' ('ReporteMantenimientoId', 'Fecha', 'MantenimientoId', 'MaterialId') VALUES ('5', '2023-11-24', '5', '11475');

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
  "Condicion" nvarchar(1) NOT NULL DEFAULT (0),
  /*
  1 - normal
  2 - manteniemiento */

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

INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('26888', '17', 'BORRADOR DE MEMORIAS EPRON TEMPORIZADA B&K PRECISION MOD 850', '2001', '4', '1', 'S/S', '769.68', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('26887', '17', 'BORRADOR DE MEMORIAS EPRON TEMPORIZADA B&K PRECISION MOD 850', '2001', '4', '1', 'S/S', '769.68', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('24975', '17', 'BORRADOR DE MEMORIAS EPRON TEMPORIZADA B&K PRECISION MOD 850 SERIE 811632', '2000', '4', '1', '811632', '747.27', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('26708', '13', 'BRAZO ROBOT ROBIX MOD(3060) RSC-6 SERIE 16187', '2001', '28', '2', '16187', '12098', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('26707', '13', 'BRAZO ROBOT ROBIX MOD(3060) RSC-6 SERIE 16212', '2001', '28', '2', '16212', '12098', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('31121', '22', 'CAMARA DE VIDEO 8 SISTEMA ESTABILIZADO DE IMAGEN SHOT LCD DCR TRV 361 SONY', '2004', '30', '3', 'S/S', '6423.9', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('31122', '22', 'CAMARA DE VIDEO 8 SISTEMA ESTABILIZADO DE IMAGEN SHOT LCD DCR TRV 361 SONY', '2004', '30', '3', 'S/S', '6423.9', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('31507', '44', 'CAUTIN DE ESTACION MCA SOLOMON MOD WTCPN 417 SERIE 355962', '2004', '31', '4', 'S/S', '632.5', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('31505', '44', 'CAUTIN DE ESTACION MCA SOLOMON MOD WTCPN 417 SERIE 355959', '2004', '31', '4', 'S/S', '632.5', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('31508', '44', 'CAUTIN DE ESTACION MCA SOLOMON MOD WTCPN 417 SERIE 355950', '2004', '31', '4', 'S/S', '632.5', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('39620', '9', 'GAMA DE FRECUENCIAS 1000 MHZ MCA. IDEAL MOD. 33-993', '2010', '18', '5', 'S/S', '115884', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('29257', '32', 'COMPUTADORA PENTIUM 4 A 1 6 GHZ CON 256 MB MONITOR LG 5PULGADAS SUPER VGA', '2002', '1', '6', 'S/S', '9504.79', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('31148', '30', 'ENGARGOLADORA GB LOHNOS MASTER 3 1 USO RUDO', '2004', '15', '7', 'S/S', '4002', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('26794', '37', 'EQUIPO DE ADQUISICION DE DATOS SCIENCE WORKSHIP 750 MCA PASCO SCIENTIFIC', '2001', '24', '8', 'S/S', '54515.75', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('40995', '1', 'CONJUNTO DE INSTRUMENTACION CON 12 INSTRUMENTOS INTEGRADOS S:16552EF', '2011', '1', '8', '16552EF', '67744', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('40996', '1', 'CONJUNTO DE INSTRUMENTACION CON 12 INSTRUMENTOS INTEGRADOS S:16552DC', '2011', '1', '8', '16552DC', '67744', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('40992', '1', 'CONJUNTO DE INSTRUMENTACION CON 12 INSTRUMENTOS INTEGRADOS S:16552BB', '2011', '1', '8', '16552BB', '67744', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('40994', '1', 'CONJUNTO DE INSTRUMENTACION CON 12 INSTRUMENTOS INTEGRADOS S:16552AA', '2011', '1', '8', '16552AA', '67744', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('40997', '1', 'CONJUNTO DE INSTRUMENTACION CON 12 INSTRUMENTOS INTEGRADOS S:1655288', '2011', '1', '8', '1655288', '67744', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('26769', '24', 'ESTACION DE SOLDADO Y DESOLDADO POR AIRE MCA WELLER MOD DS200 SERIE 0201', '2001', '38', '9', '201', '9372.5', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('26768', '24', 'ESTACION DE SOLDADO Y DESOLDADO POR AIRE MCA WELLER DS200 SERIE 0500', '2001', '38', '9', '500', '9372.5', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('34456', '3', 'FRECUENCIOMETRO DE 100 MHZ MOD 1803C MCA BK PRECISION 50MV TIPO 1803C S 18034057405110378', '2007', '38', '10', '18034057405110378', '2283.9', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('31439', '3', 'FRECUENCIOMETRO DE 100 MHZ MOD 1803C MCA BK PRECISION 50MV TIPO 1803C 1M S 6205040124', '2004', '38', '10', '6205040124', '2224.84', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('31438', '3', 'FRECUENCIOMETRO DE 100 MHZ MOD 1803C MCA BK PRECISION 50MV TIPO 1803C 1M S 6205040052', '2004', '38', '10', '6205040052', '2224.84', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('34455', '3', 'FRECUENCIOMETRO DE 100 MHZ MOD 1803C MCA BK PRECISION 50MV TIPO 1803C S 18034057405110384', '2007', '38', '10', '18034057405110384', '2283.9', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('34454', '3', 'FRECUENCIOMETRO DE 100 MHZ MOD 1803C MCA BK PRECISION 50MV TIPO 1803C S 18034057405110380', '2007', '38', '10', '18034057405110380', '2283.9', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('34457', '3', 'FRECUENCIOMETRO DE 100 MHZ MOD 1803C MCA BK PRECISION 50MV TIPO 1803C S 18034057405110383', '2007', '38', '10', '18034057405110383', '2283.9', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('31437', '3', 'FRECUENCIOMETRO DE 100 MHZ MOD 1803C MCA BK PRECISION 50MV TIPO 1803C 1M S 6205040051', '2004', '38', '10', '6205040051', '2224.84', '1', '2');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('31436', '3', 'FRECUENCIOMETRO DE 100 MHZ MOD 1803C MCA BK PRECISION 50MV TIPO 1803C 1M S 6205040049', '2004', '38', '10', '6205040049', '2224.84', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('32437', '3', 'FRECUENCIOMETRO DE 100 MHZ MOD 1803C MCA BK PRESICION 50 MV TIPO 1803C S 6205040051', '2004', '38', '10', '6205040051', '2224.84', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('42712', '35', 'DE PODER REGULADA DIGITAL SALIDA SIMPLE.MCA:NOVATEK MOD:QJ3005II', '2012', '22', '11', 'S/S', '3654', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('42714', '35', 'DE PODER REGULADA DIGITAL SALIDA SIMPLE.MCA:NOVATEK MOD:QJ3005II', '2012', '22', '11', 'S/S', '3654', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('42713', '35', 'DE PODER REGULADA DIGITAL SALIDA SIMPLE.MCA:NOVATEK MOD:QJ3005II', '2012', '22', '11', 'S/S', '3654', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('32772', '1', 'FUENTE DE ALIMENTACION DIGITAL REGULADOR DE VOLTAJE RANGO 030V CORRIENTE 03A EXTECH', '2005', '11', '11', 'S/S', '3845.6', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('32776', '1', 'FUENTE DE ALIMENTACION DIGITAL REGULADOR DE VOLTAJE RANGO 030V CORRIENTE 03A EXTECH', '2005', '11', '11', 'S/S', '3845.6', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('32775', '1', 'FUENTE DE ALIMENTACION DIGITAL REGULADOR DE VOLTAJE RANGO 030V CORRIENTE 03A EXTECH', '2005', '11', '11', 'S/S', '3845.6', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('32780', '1', 'FUENTE DE ALIMENTACION DIGITAL REGULADOR DE VOLTAJE RANGO 030V CORRIENTE 03A EXTECH', '2005', '11', '11', 'S/S', '3845.6', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('32782', '1', 'FUENTE DE ALIMENTACION DIGITAL REGULADOR DE VOLTAJE RANGO 030V CORRIENTE 03A EXTECH', '2005', '11', '11', 'S/S', '3845.6', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('39628', '11', 'DE ALIMENTACION CUADRUPE MCA. EXTECH MOD. 382270', '2010', '11', '11', 'S/S', '7899.6', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('39632', '11', 'DE ALIMENTACION CUADRUPE MCA. EXTECH MOD. 382270', '2010', '11', '11', 'S/S', '7899.6', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('31602', '46', 'FUENTE DE ALIMENTACION DE X0620 ED333T ELENCO PRESICION', '2004', '7', '11', 'S/S', '1875.91', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('31606', '46', 'FUENTE DE ALIMENTACION DE X0620 ED333T ELENCO PRESICION', '2004', '7', '11', 'S/S', '1875.91', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('31610', '46', 'FUENTE DE ALIMENTACION DE X0620 ED333T ELENCO PRESICION', '2004', '7', '11', 'S/S', '1875.91', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('31835', '1', 'FUENTE RECTIFICADORA CV A 30V VARIABLE 3A REGULADA SERIE 961314721', '2004', '1', '11', 'S/S', '2178.1', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('32778', '1', 'FUENTE DE ALIMENTACION DIGITAL REGULADOR DE VOLTAJE RANGO 030V CORRIENTE 03A EXTECH', '2005', '11', '11', 'S/S', '3845', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('11419', '10', 'FUENTE, MARCA: EXTECH, MODELO: 382213', '2023', '11', '11', 'N96134096', '1', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('11489', '10', 'FUENTE, MARCA: EXTECH, MODELO: 382213', '2023', '11', '11', 'N96135683', '1', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('31603', '46', 'FUENTE DE ALIMENTACION DE X0620 ED33T ELENCO PRESICION', '2004', '7', '11', 'S/S', '1875.91', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('31609', '46', 'FUENTE DE ALIMENTACION DE X0620 ED33T ELENCO PRESICION', '2004', '7', '11', 'S/S', '1875.91', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('31608', '46', 'FUENTE DE ALIMENTACION DE X0620 ED33T ELENCO PRESICION', '2004', '7', '11', 'S/S', '1875.91', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('42715', '35', 'DE PODER REGULADA DIGITAL SALIDA SIMPLE MCA: NOVATEK MOD:QJ2005SII', '2012', '22', '11', 'S/S', '3654', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('1', '10', 'FUENTE MARCA: EXTECH, MODELO:382213', '2023', '11', '11', 'N96134104', '1', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('31605', '46', 'FUENTE DE ALIMENTACION DE X0620 ED333T ELENCO PRECISION', '2004', '7', '11', 'S/S', '1875.91', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('11487', '10', 'FUENTE MARCA: EXTECH, MODELO:382213', '2023', '11', '11', 'N96134100', '1', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('1490', '10', 'FUENTE MARCA: EXTECH, MODELO:382213', '2023', '11', '11', 'N96135739', '1', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('11494', '10', 'FUENTE MARCA: EXTECH, MODELO:382213', '2023', '11', '11', 'N96030635', '1', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('11485', '10', 'FUENTE MARCA: EXTECH, MODELO:382213', '2023', '11', '11', '300310588', '1', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('11492', '10', 'FUENTE MARCA: EXTECH, MODELO:382213', '2023', '11', '11', 'N96134064', '1', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('11495', '10', 'FUENTE MARCA: EXTECH, MODELO:382203', '2023', '11', '11', 'N96030508', '1', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('11497', '10', 'FUENTE MARCA: EXTECH, MODELO:382213', '2023', '11', '11', 'N96135768', '1', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('11488', '10', 'FUENTE MARCA: EXTECH, MODELO:382213', '2023', '11', '11', 'N96134099', '1', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('11486', '10', 'FUENTE MARCA: EXTECH, MODELO:382213', '2023', '11', '11', 'N96134103', '1', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('32777', '1', 'FUENTE DE ALMACENAMIENTO DIGITAL REGULADOR DE VOLTAJE RANGO 030V CORRIENTE 03A EXTECH', '2005', '11', '11', 'S/S', '3845.6', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('32770', '1', 'FUENTE DE ALMACENAMIENTO DIGITAL REGULADOR DE VOLTAJE RANGO 030V CORRIENTE 03A EXTECH', '2005', '11', '11', 'S/S', '3845.6', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('11421', '10', 'FUENTE, MARCA: EXTECH, MODELO: 382213', '2023', '11', '11', 'N96134095', '1', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('11409', '10', 'FUENTE, MARCA: EXTECH, MODELO: 382213', '2023', '11', '11', '390519678', '1', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('32787', '1', 'FUENTE DE ALMACENAMIENTO DIGITAL REGULADOR DE VOLTAJE RANGO 030V CORRIENTE 03A EXTECH', '2005', '11', '11', 'S/S', '3845.6', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('32769', '1', 'FUENTE DE ALMACENAMIENTO DIGITAL REGULADOR DE VOLTAJE RANGO 030V CORRIENTE 03A EXTECH', '2005', '11', '11', 'S/S', '3845.6', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('32786', '1', 'FUENTE DE ALMACENAMIENTO DIGITAL REGULADOR DE VOLTAJE RANGO 030V CORRIENTE 03A EXTECH', '2005', '11', '11', 'S/S', '3845.6', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('11416', '10', 'FUENTE, MARCA: EXTECH, MODELO: 382213', '2023', '11', '11', 'N96135741', '1', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('32788', '1', 'FUENTE DE ALMACENAMIENTO DIGITAL REGULADOR DE VOLTAJE RANGO 030V CORRIENTE 03A EXTECH', '2005', '11', '11', 'S/S', '3845.6', '1', '2');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('32774', '1', 'FUENTE DE ALIMENTACION DIGITAL REGULADOR DE VOLTAJE RANGO 030V CORRIENTE 03A EXTECH', '2005', '11', '11', 'S/S', '3845.6', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('11493', '10', 'FUENTE, MARCA: EXTECH, MODELO: 382213', '2023', '11', '11', 'N96134110', '1', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('11420', '10', 'FUENTE, MARCA: EXTECH, MODELO: 382213', '2023', '11', '11', '310519015', '1', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('32781', '1', 'FUENTE DE ALIMENTACION DIGITAL REGULADOR DE VOLTAJE RANGO 030V CORRIENTE 03A EXTECH', '2005', '11', '11', 'S/S', '3845.6', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('11425', '45', 'FUENTE, MARCA: BK, MODELO: XP-620', '2023', '4', '11', 'S/S', '1', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('31604', '45', 'FUENTE, MARCA: BK, MODELO: XP-620', '2023', '4', '11', 'S/S', '1', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('11423', '45', 'FUENTE, MARCA: BK, MODELO: XP-620', '2023', '3', '11', 'S/S', '1', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('11412', '10', 'FUENTE, MARCA: EXTECH, MODELO 382213', '2023', '11', '11', 'N96135758', '1', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('11422', '10', 'FUENTE, MARCA: EXTECH, MODELO 382213', '2023', '11', '11', 'N96134063', '1', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('32773', '1', 'FUENTE DE ALIMENTACION DIGITAL REGULADOR DE VOLTAJE RANGO 030V CORRIENTE 03A EXTECH', '2005', '11', '11', 'S/S', '3845.6', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('32784', '1', 'FUENTE DE ALIMENTACION DIGITAL REGULADOR DE VOLTAJE RANGO 030V CORRIENTE 03A EXTECH', '2005', '11', '11', 'S/S', '3845.6', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('32771', '1', 'FUENTE DE ALIMENTACION DIGITAL REGULADOR DE VOLTAJE RANGO 030V CORRIENTE 03A EXTECH', '2005', '11', '11', 'S/S', '3845.6', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('32779', '1', 'FUENTE DE ALIMENTACION DIGITAL REGULADOR DE VOLTAJE RANGO 030V CORRIENTE 03A EXTECH', '2005', '11', '11', 'S/S', '3845.6', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('31607', '46', 'FUENTE DE ALIMENTACION DE X0620 ED33T ELENCO PRESICION', '2004', '7', '11', 'S/S', '1875.91', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('11502', '45', 'FUENTE, MARCA: BK, MODELO: XP-620', '2023', '4', '11', 'S/S', '1', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('3606', '46', 'FUENTE DE ALIMENTACION DE X0620 ED33T ELENCO PRESICION', '2004', '7', '11', 'S/S', '1875.91', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('32783', '1', 'FUENTE DE ALIMENTACION DIGITAL REGULADOR DE VOLTAJE RANGO 030V CORRIENTE 03A EXTECH', '2005', '11', '11', 'S/S', '3845.6', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('42728', '14', 'DE FUNCIONES Y BARRIDO DIGITAL, 4 EQUIPOS EN 1, MCA:B PRECISION MOD:4040DDS', '2012', '38', '12', 'S/S', '12291.03', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('42725', '14', 'DE FUNCIONES Y BARRIDO DIGITAL, 4 EQUIPOS EN 1, MCA:B PRECISION MOD:4040DDS', '2012', '38', '12', 'S/S', '12291.03', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('42729', '14', 'DE FUNCIONES Y BARRIDO DIGITAL, 4 EQUIPOS EN 1, MCA:B PRECISION MOD:4040DDS', '2012', '38', '12', 'S/S', '12291.03', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('42727', '14', 'DE FUNCIONES Y BARRIDO DIGITAL, 4 EQUIPOS EN 1, MCA:B PRECISION MOD:4040DDS', '2012', '38', '12', 'S/S', '12291.03', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('42726', '14', 'DE FUNCIONES Y BARRIDO DIGITAL, 4 EQUIPOS EN 1, MCA:B PRECISION MOD:4040DDS', '2012', '38', '12', 'S/S', '12291.03', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('42730', '14', 'DE FUNCIONES Y BARRIDO DIGITAL, 4 EQUIPOS EN 1, MCA:B PRECISION MOD:4040DDS', '2012', '38', '12', 'S/S', '12291.03', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('31581', '1', 'GENERADOR DE FUNCIONES IMPEDANCIA DE ENTRADA 10 HOMS Y RANGO 2 HZ A 20 MHZ', '2004', '1', '12', 'S/S', '4457.4', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('31594', '1', 'GENERADOR DE FUNCIONES IMPEDANCIA DE ENTRADA 10 HOMS Y RANGO 2 HZ A 20 MHZ', '2004', '1', '12', 'S/S', '4457.4', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('31593', '1', 'GENERADOR DE FUNCIONES IMPEDANCIA DE ENTRADA 10 HOMS Y RANGO 2 HZ A 20 MHZ', '2004', '1', '12', 'S/S', '4457.4', '1', '2');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('31589', '1', 'GENERADOR DE FUNCIONES IMPEDANCIA DE ENTRADA 10 HOMS Y RANGO 2 HZ A 20 MHZ', '2004', '1', '12', 'S/S', '4457.4', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('31591', '1', 'GENERADOR DE FUNCIONES IMPEDANCIA DE ENTRADA 10 HOMS Y RANGO 2 HZ A 20 MHZ', '2004', '1', '12', 'S/S', '4457.4', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('31590', '1', 'GENERADOR DE FUNCIONES IMPEDANCIA DE ENTRADA 10 HOMS Y RANGO 2 HZ A 20 MHZ', '2004', '1', '12', 'S/S', '4457.4', '1', '2');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('31592', '1', 'GENERADOR DE FUNCIONES IMPEDANCIA DE ENTRADA 10 HOMS Y RANGO 2 HZ A 20 MHZ', '2004', '1', '12', 'S/S', '4457.4', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('31595', '1', 'GENERADOR DE FUNCIONES IMPEDANCIA DE ENTRADA 10 HOMS Y RANGO 2 HZ A 20 MHZ', '2004', '1', '12', 'S/S', '4457.4', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('31579', '1', 'GENERADOR DE FUNCIONES IMPEDANCIA DE ENTRADA 10 HOMS Y RANGO 2 HZ A 20 MHZ', '2004', '1', '12', 'S/S', '4457.4', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('31584', '1', 'GENERADOR DE FUNCIONES IMPEDANCIA DE ENTRADA 10 HOMS Y RANGO 2 HZ A 20 MHZ', '2004', '1', '12', 'S/S', '4457.4', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('31586', '1', 'GENERADOR DE FUNCIONES IMPEDANCIA DE ENTRADA 10 HOMS Y RANGO 2 HZ A 20 MHZ', '2004', '1', '12', 'S/S', '4457.4', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('31585', '1', 'GENERADOR DE FUNCIONES IMPEDANCIA DE ENTRADA 10 HOMS Y RANGO 2 HZ A 20 MHZ', '2004', '1', '12', 'S/S', '4457.4', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('26711', '20', 'GENERADOR DE FUNCIONES MCA TEKTRONIX CFG253 SERIE B670703', '2001', '34', '12', 'B670703', '2271.25', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('39582', '27', 'DE FUNCIONES 3 MHz, SENOIDA, CUADRADA, TRIANG. MCA GWINSTEK MOD EMIGFG8215A', '2010', '16', '12', 'S/S', '2918.56', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('39580', '27', 'DE FUNCIONES 3 MHz, SENOIDA, CUADRADA, TRIANG. MCA GWINSTEK MOD EMIGFG8215A', '2010', '16', '12', 'S/S', '2918.56', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('39581', '27', 'DE FUNCIONES 3 MHz, SENOIDA, CUADRADA, TRIANG. MCA GWINSTEK MOD EMIGFG8215A', '2010', '16', '12', 'S/S', '2918.56', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('39578', '27', 'DE FUNCIONES 3 MHz, SENOIDA, CUADRADA, TRIANG. MCA GWINSTEK MOD EMIGFG8215A', '2010', '16', '12', 'S/S', '2918.56', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('26709', '20', 'GENERADOR DE FUNCIONES MCA TEKTRONIX CFG253 SERIE B670362', '2001', '34', '12', 'B670362', '2271.25', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('39583', '27', 'DE FUNCIONES 3 MHz, SENOIDA, CUADRADA, TRIANG. MCA GWINSTEK MOD EMIGFG8215A', '2010', '16', '12', 'S/S', '2918.56', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('41030', '1', 'DE FUNCIONES ANALOGICAS RANGO DE FRECUENCIA 0.3HZ-3MHZ. S:9205CQ0537', '2011', '1', '12', '9205CQ0537', '4474.12', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('41034', '1', 'DE FUNCIONES ANALOGICAS RANGO DE FRECUENCIA 0.3HZ-3MHZ. S:9205CQ0533', '2011', '1', '12', '9205CQ0533', '4474.12', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('41029', '1', 'DE FUNCIONES ANALOGICAS RANGO DE FRECUENCIA 0.3HZ-3MHZ. S:9205CQ1603', '2011', '1', '12', '9205CQ1603', '4474.12', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('41033', '1', 'DE FUNCIONES ANALOGICAS RANGO DE FRECUENCIA 0.3HZ-3MHZ. S:9205CQ0536', '2011', '1', '12', '9205CQ0536', '4474.12', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('41032', '1', 'DE FUNCIONES ANALOGICAS RANGO DE FRECUENCIA 0.3HZ-3MHZ. S:9205CQ0535', '2011', '1', '12', '9205CQ0535', '4474.12', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('41031', '1', 'DE FUNCIONES ANALOGICAS RANGO DE FRECUENCIA 0.3HZ-3MHZ. S:9205CQ0534', '2011', '1', '12', '9205CQ0534', '4474.12', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('31709', '1', 'GENERADOR DE FUNCIONES IMPEDANCIA ENTRADA 10 K HOMS 7 RANGOS SERIE 729985', '2004', '1', '12', '729985', '2456.4', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('41028', '1', 'DE FUNCIONES ANALOGICAS RANGO DE FRECUENCIA 0.3HZ-3MHZ. S:9205CQ1601', '2011', '1', '12', '9205CQ1601', '4474.12', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('31708', '1', 'GENERADOR DE FUNCIONES IMPEDANCIA ENTRADA 10 K HOMS 7 RANGOS SERIE 729949', '2004', '1', '12', '729949', '2456.4', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('31707', '1', 'GENERADOR DE FUNCIONES IMPEDANCIA ENTRADA 10 K HOMS 7 RANGOS SERIE 729995', '2004', '1', '12', '729995', '2456.4', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('24624', '26', 'GENERADOR DE FUNCIONES MCA ESCORT MODELO EFG3210 SERIE 00040031', '2000', '9', '12', '40031', '2474.8', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('40887', '1', 'GENERADOR DE TONOS, PRESENTA LA FUNCION CABLEMAP S:0262057409030778', '2011', '1', '12', 'S:0262057409030778', '1496.98', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('40888', '1', 'GENERADOR DE TONOS, PRESENTA LA FUNCION CABLEMAP S:0262057409030780', '2011', '1', '12', 'S:0262057409030780', '1496.98', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('40886', '1', 'GENERADOR DE TONOS, PRESENTA LA FUNCION CABLEMAP S:0262057409030779', '2011', '1', '12', 'S:0262057409030779', '1496.98', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('31583', '1', 'GENERADOR DE FUNCIONES IMPEDANCIA DE ENTRADA 10K HOMS Y RANGOS 2HZ A 20MHZ', '2004', '1', '12', 'S/S', '4457.4', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('31588', '1', 'GENERADOR DE FUNCIONES IMPEDANCIA DE ENTRADA 10K HOMS Y RANGOS 2HZ A 20MHZ', '2004', '1', '12', 'S/S', '4457.4', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('31587', '1', 'GENERADOR DE FUNCIONES IMPEDANCIA DE ENTRADA 10K HOMS Y RANGOS 2HZ A 20MHZ', '2004', '1', '12', 'S/S', '4457.4', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('31596', '1', 'GENERADOR DE FUNCIONES IMPEDANCIA DE ENTRADA 10K HOMS Y RANGOS 2HZ A 20MHZ', '2004', '1', '12', 'S/S', '4457.4', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('31582', '1', 'GENERADOR DE FUNCIONES IMPEDANCIA DE ENTRADA 10K HOMS Y RANGOS 2HZ A 20MHZ', '2004', '1', '12', 'S/S', '4457.4', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('31580', '1', 'GENERADOR DE FUNCIONES IMPEDANCIA DE ENTRADA 10K HOMS Y RANGOS 2HZ A 20MHZ', '2004', '1', '12', 'S/S', '4457.4', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('26710', '20', 'GENERADOR DE FUNCIONES MCA TEKTRONIZ CFG253 SERIE B670704', '2001', '34', '12', 'B670704', '2271.25', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('2671', '20', 'GENERADOR DE FUNCIONES MCA TEKTRONIX CFG253 SERIE B670703', '2001', '34', '12', 'B670703', '2271.25', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('39571', '27', 'DE FUNCIONES 3 MHz, SENOIDAL, CUADRADA, TRIANG. MCA. GWINSTEK MOD EMIGFG8215A', '2010', '16', '12', 'S/S', '2918.56', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('39579', '27', 'DE FUNCIONES 3 MHz, SENOIDA, CUADRADA, TRIANG. MCA GWINSTEK MOD EMIGFG8215A', '2002', '16', '12', 'S/S', '9504.79', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('315951', '1', 'GENERADOR DE FUNCIIONES IMPEDANCIA DE ENTRADA 10 HOMS Y RANGO 2 HZ A 20 MHZ', '2004', '1', '12', 'S/S', '4457.4', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('31207', '1', 'GENERADOR DE FUNCIONES IMPEDANCIA ENTRADA 10 K HOMS 7 RANGOS SERIE 729995', '2004', '1', '12', '729995', '2456.4', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('40629', '1', 'DE FIBRA OPTICA, MICROSCOPIO 100X,MULTIMODO, HERRAMIENTA DE CRIMPEO', '2011', '1', '13', 'S/S', '53032.88', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('40963', '1', 'DE FIBRA OPTICA, MICROSCOPIO 100X,MULTIMODO, HERRAMIENTA DE CRIMPEO', '2011', '1', '13', 'S/S', '53032.88', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('25438', '19', 'LCR METER MCA BK PRECISION 878 SERIE NUMERO 23706415', '2001', '38', '14', '23706415', '1', '1', '2');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('25439', '19', 'LCR METER MCA BK PRECISION 878 SERIE 23706954', '2001', '38', '14', '23706954', '1', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('25447', '18', 'LCR MCA BK PRECISION 875 B SERIE 98070025', '2001', '38', '14', '98070025', '1', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('25446', '18', 'LCR MCA BK PRECISION 875 B SERIE 98070089', '2001', '38', '14', '98070089', '1', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('25451', '18', 'LCR MCA BK PRECISION 875 B SERIE 98070093', '2001', '38', '14', '98070093', '1', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('25449', '18', 'LCR MCA BK PRECISION 875 B SERIE 98070084', '2001', '38', '14', '98070084', '1', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('26789', '31', 'LECTOR DE CODIGO DE BARRAS PARA EMPORTRAR MOD ms860 MCA WELCCH ALLYN S 1701240335', '2001', '37', '15', '1701240335', '6893.67', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('26790', '31', 'LECTOR DE CODIGO DE BARRAS PARA EMPORTRAR MOD ms860 MCA WELCCH ALLYN S 170036114', '2001', '37', '15', '170036114', '6893.67', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('42786', '12', 'DIGITAL DE BANCO TRUE RMS VOLTAJE AC 750V MCA:PROTEK MOD:4000 S:4000Q 1231', '2012', '26', '16', '4000Q1231', '6580.68', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('42789', '12', 'DIGITAL DE BANCO TRUE RMS VOLTAJE AC 750V MCA:PROTEK MOD:4000 S:4000Q 1225', '2012', '26', '16', '4000Q1225', '6580.68', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('42790', '12', 'DIGITAL DE BANCO TRUE RMS VOLTAJE AC 750V MCA:PROTEK MOD:4000 S:4000Q 1228', '2012', '26', '16', '4000Q1228', '6580.68', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('42787', '12', 'DIGITAL DE BANCO TRUE RMS VOLTAJE AC 750V MCA:PROTEK MOD:4000 S:4000Q 1227', '2012', '26', '16', '4000Q1227', '6580.68', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('42784', '12', 'DIGITAL DE BANCO TRUE RMS VOLTAJE AC 750V MCA:PROTEK MOD:4000 S:4000Q 1232', '2012', '26', '16', '4000Q1232', '6580.68', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('42783', '12', 'DIGITAL DE BANCO TRUE RMS VOLTAJE AC 750V MCA:PROTEK MOD:4000 S:4000Q 1230', '2012', '26', '16', '4000Q1230', '6580.68', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('42788', '12', 'DIGITAL DE BANCO TRUE RMS VOLTAJE AC 750V MCA:PROTEK MOD:4000 S:4000Q1229', '2012', '26', '16', '4000Q1229', '6580.68', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('42785', '12', 'DIGITAL DE BANCO TRUE RMS VOLTAJE AC 750V MCA:PROTEK MOD:4000 S:4000Q1226', '2012', '26', '16', '4000Q1226', '6580.68', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('24979', '8', 'MULTIMETRO DIGITAL MCA B&K PRECISIN MOD 2880A SERIE 098-04-0057', '2000', '4', '16', '098-04-0057', '1604.48', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('24978', '8', 'MULTIMETRO DIGITAL MCA B&K PRECISIN MOD 2880A SERIE 098-04-0183', '2000', '4', '16', '098-04-0183', '1604.48', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('27050', '23', 'MULTIMETRO DIGITAL MCA SUN EQUIPAMENT MODDMM-1230', '2001', '33', '16', 'S/S', '1026.95', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('31567', '1', 'MULTIMETRO DIGITAL AUTORANGO ON MICROAMPERIMETRO', '2004', '1', '16', 'S/S', '448.96', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('31578', '1', 'MULTIMETRO DIGITAL AUTORANGO ON MICROAMPERIMETRO', '2004', '1', '16', 'S/S', '448.96', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('27049', '23', 'MULTIMETRO DIGITAL MCA SUN EQUIPAMENT MODDMM-1230', '2001', '33', '16', 'S/S', '1026.95', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('31568', '1', 'MULTIMETRO DIGITAL AUTORANGO CON MICROAMPERIMETRO', '2004', '1', '16', 'S/S', '448.96', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('31574', '1', 'MULTIMETRO DIGITAL AUTORANGO CON MICROAMPERIMETRO', '2004', '1', '16', 'S/S', '448.96', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('31559', '1', 'MULTIMETRO DIGITAL AUTORANGO CON MICROAMPERIMETRO', '2004', '1', '16', 'S/S', '448.96', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('31435', '1', 'MULTIMETRO ANALOGICO-DIGITAL MODELO 37 XR MCA WAVETEK S030907747', '2004', '36', '16', 'S/S', '1843.45', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('31536', '1', 'MULTIMETRO DIGITAL AUTORANGO CON MICROAMPERIMETRO', '2004', '1', '16', 'S/S', '448.96', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('27061', '23', 'MULTIMETRO DIGITAL MCA SUN EQUIPAMENT MOD DMM-1230', '2001', '34', '16', 'S/S', '1026.95', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('31576', '1', 'MULTIMETRO DIGITAL AUTORANGO CON MICROAMPERIMETRO', '2004', '1', '16', 'S/S', '448.96', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('27060', '23', 'MULTIMETRO DIGITAL MCA SUN EQUIPAMENT MOD DMM-1230', '2001', '33', '16', 'S/S', '1026.95', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('31572', '1', 'MULTIMETRO DIGITAL AUTORANGO CON MICROAMPERIMETRO', '2004', '1', '16', 'S/S', '448.96', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('24977', '8', 'MULTIMETRO DIGITAL MCA B&K PRECISION MOD 2880A SERIE 098-04-0059', '2000', '4', '16', '098-04-0059', '1604.48', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('27804', '4', 'MULTIMETRO DIGITAL MCA FLUKE MOD FLUKE-187 GARANTIA DE POR VIDA SERIE 81720158', '2002', '14', '16', '81720158', '4590.8', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('27797', '4', 'MULTIMETRO DIGITAL MCA FLUKE MOD FLUKE-187 GARANTIA DE POR VIDA SERIE 81910067', '2002', '14', '16', '81910067', '4590.8', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('27805', '4', 'MULTIMETRO DIGITAL MCA FLUKE MOD FLUKE-187 GARANTIA DE POR VIDA SERIE 81720160', '2002', '14', '16', '81720160', '4590.8', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('27790', '4', 'MULTIMETRO DIGITAL MCA FLUKE MOD FLUKE-187 GARANTIA DE POR VIDA SERIE 81720127', '2002', '14', '16', '81720127', '4590.8', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('27807', '4', 'MULTIMETRO DIGITAL MCA FLUKE MOD FLUKE-187 GARANTIA DE POR VIDA SERIE 82010216', '2002', '14', '16', '82010216', '4590.8', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('27798', '4', 'MULTIMETRO DIGITAL MCA FLUKE MOD FLUKE-187 GARANTIA DE POR VIDA SERIE 81910068', '2002', '14', '16', '81910068', '4590.8', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('277805', '4', 'MULTIMETRO DIGITAL MCA FLUKE MOD FLUKE-187 GARANTIA DE POR VIDA SERIE 81720160', '2002', '14', '16', '81720160', '4590.8', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('27789', '4', 'MULTIMETRO DIGITAL MCA FLUKE MOD FLUKE-187 GARANTIA DE POR VIDA S82010199', '2002', '14', '16', '82010199', '4590.8', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('27792', '4', 'MULTIMETRO DIGITAL MCA FLUKE MOD FLUKE-187 GARANTIA DE POR VIDA SERIE 81720131', '2002', '14', '16', '81720131', '4590.8', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('27794', '4', 'MULTIMETRO DIGITAL MCA FLUKE MOD FLUKE-187 GARANTIA DE POR VIDA SERIE 81910071', '2002', '14', '16', '81910071', '4590.8', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('27802', '4', 'MULTIMETRO DIGITAL MCA FLUKE MOD FLUKE-187 GARANTIA DE POR VIDA SERIE 81720161', '2002', '14', '16', '81720161', '4590.8', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('27799', '4', 'MULTIMETRO DIGITAL MCA FLUKE MOD FLUKE-187 GARANTIA DE POR VIDA SERIE 82010218', '2002', '14', '16', '82010218', '4590.8', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('31537', '1', 'MULTIMETRO DIGITAL AUTORANGO CON MICROAMPERIMETRO', '2004', '1', '16', 'S/S', '448.96', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('31573', '1', 'MULTIMETRO DIGITAL AUTORANGO CON MICROAMPERIMETRO', '2004', '1', '16', 'S/S', '448.96', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('31563', '1', 'MULTIMETRO DIGITAL AUTORANGO CON MICROAMPERIMETRO', '2004', '1', '16', 'S/S', '448.96', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('31566', '1', 'MULTIMETRO DIGITAL AUTORANGO CON MICROAMPERIMETRO', '2004', '1', '16', 'S/S', '448.96', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('11445', '7', 'MULTIMETRO DIGITAL, MARCA: STEREN, MODELO: 280', '2023', '32', '16', 'S/S', '1', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('31570', '1', 'MULTIMETRO DIGITAL AUTORANGO CON MICROAMPERIMETRO', '2004', '1', '16', 'S/S', '448.96', '1', '2');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('31562', '1', 'MULTIMETRO DIGITAL AUTORANGO CON MICROAMPERIMETRO', '2004', '1', '16', 'S/S', '448.96', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('31571', '1', 'MULTIMETRO DIGITAL AUTORANGO CON MICROAMPERIMETRO', '2004', '1', '16', 'S/S', '448.96', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('31569', '1', 'MULTIMETRO DIGITAL AUTORANGO CON MICROAMPERIMETRO', '2004', '1', '16', 'S/S', '448.96', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('31564', '1', 'MULTIMETRO DIGITAL AUTORANGO CON MICROAMPERIMETRO', '2004', '1', '16', 'S/S', '448.96', '1', '2');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('30143', '2', 'MULTIMETRO ANALOGICO MCA B&K PRESICION MOD 114B', '2003', '4', '16', 'S/S', '433.93', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('31561', '1', 'MULTIMETRO DIGITAL AUTORANGO CON MICROAMPERIMETRO', '2004', '1', '16', 'S/S', '448.96', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('27048', '23', 'MULTIMETRO DIGITAL MCA SUN EQUIPAMENT MOD DMM-1230', '2001', '33', '16', 'S/S', '1026.95', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('27068', '23', 'MULTIMETRO DIGITAL MCA SUN EQUIPAMENT MOD DMM-1230', '2001', '33', '16', 'S/S', '1026.95', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('27052', '23', 'MULTIMETRO DIGITAL MCA SUN EQUIPAMENT MOD DMM-1230', '2001', '33', '16', 'S/S', '1026.95', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('27064', '23', 'MULTIMETRO DIGITAL MCA SUN EQUIPAMENT MOD DMM-1230', '2001', '33', '16', 'S/S', '1026.95', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('31535', '1', 'MULTIMETRO DIGITAL AUTORANGO CON MICROAMPERIMETRO', '2004', '1', '16', 'S/S', '448.96', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('27051', '23', 'MULTIMETRO DIGITAL MCA SUN EQUIPAMENT MOD DMM-1230', '2001', '33', '16', 'S/S', '1026.95', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('27063', '23', 'MULTIMETRO DIGITAL MCA SUN EQUIPAMENT MOD DMM-1230', '2001', '33', '16', 'S/S', '1026.95', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('33215', '1', 'MULTÍMETRO PROFESIONAL AUTO RANGO', '2023', '32', '16', 'S/S', '1', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('33216', '1', 'MULTÍMETRO PROFESIONAL AUTO RANGO', '2023', '32', '16', 'S/S', '1', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('33217', '1', 'MULTÍMETRO PROFESIONAL AUTO RANGO', '2023', '32', '16', 'S/S', '1', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('24669', '5', 'OSCILOSOPIO PORTATIL MCA FLUKE MODELO 192 SERIE DM7670296', '2000', '14', '17', 'DM7670296', '22482.5', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('26866', '38', 'OSCILOSCOPIO DIGITAL TEXTRONIX MODELO TDS220 S:C035986', '2001', '1', '17', 'C035986', '17825', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('28060', '39', 'OSCILOSCOPIO DIGITAL DE 100 MHZ MCA TEKTRONIX MOD TDS1012 SC014980', '2002', '34', '17', 'SC014980', '12535', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('31495', '1', 'OSCILOSCOPIO DIGITAL PORTATIL RANGO 100 MHZ C/PUNTAS ATEN FREC. O.5 S/C042982', '2004', '1', '17', 'C042982', '15687.5', '1', '2');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('34433', '39', 'OSCILOSCOPIO DE ALMACENAMIENTO DIGITAL; 100MHZ, 1GS/S 2 CANALES MCA. TEKTRANIC MOD. TDS 1012', '2007', '34', '17', 'S/S', '12670.7', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('28070', '39', 'OSCILOSCOPIO DIGITAL DE 100 MHZ MCA TEKTRONIX MOD TDS1012 C014936', '2002', '34', '17', 'C014936', '12535', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('31492', '1', 'OSCILOSCOPIO DIGITAL PORTATIL RANGO 100 MHZ C/PUNTAS ATEN FREC. O.5 S/C042983', '2004', '1', '17', 'C042983', '15697.5', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('42819', '40', 'DIGITAL 100MHZ.4 CANALES CON ANCHO DE BANDA DE 100MHZ.MCA:TEKTRONIX,MOD:TDS2014C', '2012', '34', '17', 'S/S', '19128.4', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('28067', '39', 'OSCILOSCOPIO DIGITAL DE 100 MHZ MCA TETRONIX MOD TDS1012 SC014974', '2002', '34', '17', 'C014974', '12535', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('31494', '1', 'OSCILOSCOPIO DIGITAL PORTATIL RANGO 100 MHZ C/PUNTAS ATEN FREC. O.5 S/C042992', '2004', '1', '17', 'C042992', '15697.5', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('31440', '1', 'OSCILOSCOPIO DIGITAL DE 200 MHZ TIEMPO REAL PORTATIL SERIE C032806', '2004', '1', '17', 'C032806', '24728.74', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('23476', '1', 'OSCILOSCOPIO MCA TEKTRONIX 10 MHZ DIGITAL 2 CANALES SERIE B067263', '2000', '34', '17', 'B067263', '18872.44', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('28071', '39', 'OSCILOSCOPIO DIGITAL DE 100 MHZ MCA TEKTRONIX MOD TDS1012 SC014968', '2002', '34', '17', 'C014968', '12535', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('42823', '40', 'DIGITAL 100MHZ.4 CANALES CON ANCHO DE BANDA DE 100MHZ.MCA:TEKTRONIX.MOD:TDS2014C', '2012', '34', '17', 'S/S', '19128.4', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('31441', '1', 'OSCILOSCOPIO DIGITAL DE 200 MHZ TIEMPO REAL PORTATIL SERIE C032788', '2004', '1', '17', 'C032788', '24728.74', '1', '2');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('28065', '39', 'OSCILOSCOPIO DIGITAL DE 100 MHZ MCA TEKTRONIX MOD TDS1012 SC014987', '2002', '34', '17', 'C014987', '12535', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('42820', '40', 'DIGITAL 100MHZ.4 CANALES CON ANCHO DE BANDA DE 100MHZ.MCA:TEKTRONIX.MOD:TDS2014C', '2012', '34', '17', 'S/S', '19128.4', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('28068', '39', 'OSCILOSCOPIO DIGITAL DE 100 MHZ MCA TEKTRONIX MOD TDS1012 SC014999', '2002', '34', '17', 'C014999', '12535', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('34435', '39', 'OSCILOSCOPIO DE ALMACENAMIENTO DIGITAL; 100MHZ, 1GS/S 2 CANALES MCA. TEKTRONIC MOD. TDS 1012', '2007', '34', '17', 'S/S', '12670', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('28064', '39', 'OSCILOSCOPIO DIGITAL DE 100 MHZ MCA TEKTRONIX MOD TDS1012 SC014984', '2002', '34', '17', 'C014984', '12535', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('28061', '39', 'OSCILOSCOPIO DIGITAL DE 100 MHZ MCA TEKTRONIX MOD TDS1012 C014988', '2002', '34', '17', 'C014988', '12535', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('28066', '39', 'OSCILOSCOPIO DIGITAL DE 100 MHZ MCA TEKTRONIX MOD TDS1012 SC014989', '2002', '34', '17', 'C014989', '12535', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('42828', '40', 'DIGITAL 100MHZ.4 CANALES CON ANCHO DE BANDA DE 100MHZ.MCA:TEKTRONIX.MOD:TDS2014C', '2012', '34', '17', 'S/S', '19128.4', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('28062', '39', 'OSCILOSCOPIO DIGITAL DE 100 MHZ MCA TEKTRONIX MOD TDS1012 SC014986', '2002', '34', '17', 'C014986', '12535', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('42822', '40', 'DIGITAL 100MHZ.4 CANALES CON ANCHO DE BANDA DE 100MHZ.MCA:TEKTRONIX,MOD TDS2014C', '2012', '34', '17', 'S/S', '19128.4', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('42821', '40', 'DIGITAL 100MHZ.4 CANALES CON ANCHO DE BANDA DE 100MHZ.MCA:TEKTRONIX,MOD TDS2014C', '2012', '34', '17', 'S/S', '19128.4', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('34434', '39', 'OSCILOSCOPIO DE ALMACENAMIENTO DIGITAL; 100MHZ, 1GS/S 2 CANALES MCA. TEKTRONIC MOD TDS 1012', '2007', '34', '17', 'S/S', '12670.7', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('24653', '25', 'OSCILOSCOPIO 20 MHZ MCA ESCORT MODELO EAS200 SERIE 99042751', '2000', '9', '17', '99042751', '5648.8', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('24651', '25', 'OSCILOSCOPIO 20 MHZ MCA ESCORT MODELO EAS200 SERIE 99042748', '2000', '9', '17', '99042748', '5648.8', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('31789', '1', 'OSCILOSCOPIO DE 40 MHZ MINIMO DOBLE TRAZO SERIE E895646', '2004', '1', '17', 'E895646', '9188.5', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('24650', '25', 'OSCILOSCOPIO 20 MHZ  MCA ESCORT MODELO EAS200 SERIE 99042747', '2000', '9', '17', '99042747', '5648.8', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('26944', '1', 'OSCILOSCOPIO 60 MHZ DOBLE TRAZO MCA HUNG-CHANG', '2001', '17', '17', 'S/S', '7245', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('35651', '1', 'OSCILOSCOPIO DE ALMACENAMIENTO DIGITAL; 100MHZ, 1GS/S 2 CANALES DISPLAY MONOCROMATICO', '2007', '1', '17', 'S/S', '12073.85', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('24652', '25', 'OSCILOSCOPIO 20 MHZ MCA ESCORT MODELO EAS200 SERIE 99042750', '2000', '9', '17', '99042750', '5648.8', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('24649', '25', 'OSCILOSCOPIO 20 MHZ MCA ESCORT MODELO EAS200 SERIE 99042746', '2000', '9', '17', '99042746', '5648.8', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('24643', '25', 'OSCILOSCOPIO 20 MHZ MCA ESCORT MODELO EAS200 SERIE 10085379', '2000', '9', '17', '10085379', '5648.8', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('35652', '1', 'OSCILOSCOPIO DE ALMACENAMIENTO DIGITAL; 100MHZ, 1GS/S 2 CANALES DISPLAY MONOCROMATICO', '2007', '1', '17', 'S/S', '12073.85', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('26939', '1', 'OSCILOSCOPIO 60 MHZ DOBLE TRAZO MCA HUNG-CHANG', '2001', '17', '17', 'S/S', '7245', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('26943', '1', 'OSCILOSCOPIO 60 MHZ DOBLE TRAZO MCA HUNG-CHANG', '2001', '17', '17', 'S/S', '7245', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('31792', '1', 'OSCILOSCOPIO DE 40 MHZ MINIMO DOBLE TRAZO SERIE E895650', '2004', '1', '17', 'E895650', '9188.5', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('33276', '1', 'OSCILOSCOPIO DE 40 MHZ MINIMO DOBLE TRAZO SERIE E895638', '2005', '1', '17', 'EE8956638', '9188.5', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('35650', '1', 'OSCILOSCOPIO DE ALMACENAMIENTO DIGITAL; 100MHZ, 1GS/S 2 CANALES DISPLAY MONOCROMATICO', '2007', '1', '17', 'S/S', '12073.85', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('24648', '25', 'OSCILOSCOPIO 20 MHZ MCA ESCORT MODELO EAS200 SERIE 99042745', '2000', '9', '17', '99042745', '5648.8', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('39556', '29', 'ANALEGOS ANCHO DE BANDA 50 MHZ DOBLE CANAL MCA INSTE MOD GOS-653G S:EKK831726', '2010', '19', '17', 'EK831725', '9763.72', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('39555', '29', 'ANALEGOS ANCHO DE BANDA 50 MHZ DOBLE CANAL MCA INSTE MOD GOS-653G S:EKK831725', '2010', '19', '17', 'EK831725', '9763.72', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('31795', '1', 'OSCILOSCCOPIO DE 40 MHZ MINIMO DOBLE TRAZO SERIE E895639', '2004', '1', '17', 'E895639', '9188.5', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('26949', '25', 'OSCILOSCOPIO 20 MHZ MCA ESCORT MODELO EAS200 SERIE 99042746', '2000', '9', '17', '99042746', '5648.8', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('11312', '29', 'OSCILOSCOPIO MARCA: GW, MODELO: GOS-653G, SERIE No. E895649', '2023', '16', '17', 'E895649', '1', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('11311', '29', 'OSCILOSCOPIO MARCA: GW, MODELO: GOS-653G, SERIE No. E895632', '2023', '16', '17', 'E895632', '1', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('42818', '40', 'DIGITAL 100MHZ .4 CANALES CON ANCHO DE BANDA DE 100 MCA; TEKTRONIX, MOD:TDS2014C', '2012', '34', '17', 'S/S', '19128.4', '1', '2');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('26946', '1', 'OSCILOSCOPIO 60 MHZ DOBLE TRAZO MCA HUNG-CHANG', '2001', '17', '17', 'E840841', '7245', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('31799', '1', 'OSCILOSCOPIO DE 40 MHZ MINIMO DOBLE TRAZO SERIE E840841', '2004', '1', '17', 'S/S', '9188.5', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('33277', '1', 'OSCILOSCOPIO DE 40 MHZ  MINIMO, DOBLE TRAZO SERIE 098-04-0057', '2005', '1', '17', 'EE965634', '9188.5', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('31794', '1', 'OSCILOSCOPIO DE 40 MHZ MINIMO DOBLE TRAZO SERIE E895648', '2004', '1', '17', 'E895648', '9188.5', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('31777', '6', 'PLC FCP 202 COMPLETO SERIE I0001239622', '2004', '12', '18', 'I0001239622', '7529.74', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('31772', '6', 'PLC FCP 202 COMPLETO SERIE 00008451', '2004', '12', '18', 'S:00008451', '7529.74', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('31773', '6', 'PLC FCP 202 COMPLETO SERIE 00008039', '2004', '12', '18', 'S:00008039', '7529.74', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('40904', '1', 'LOGO POWER SUPPPLY, 230VAC INPUT, 24V/10A DC OUTPUT NS:Q6B4373082', '2011', '1', '18', 'Q6B4373082', '4724.16', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('31779', '6', 'PLC FCP 202 COMPLETO SERIE I0001239641', '2004', '12', '18', 'I0001239641', '7529.74', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('31771', '6', 'PLC FCP 202 COMPLETO SERIE 00008038', '2004', '12', '18', 'S:00008038', '7529.74', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('40905', '1', 'LOGO POWER SUPPPLY, 230VAC INPUT, 24V/10A DC OUTPUT NS:Q6B4373186', '2011', '1', '18', 'Q6B4373186', '4724.16', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('40903', '1', 'LOGO POWER SUPPPLY, 230VAC INPUT, 24V/10A DC OUTPUT NS:Q6B4373031', '2011', '1', '18', 'Q6B4373031', '4724.16', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('40902', '1', 'LOGO POWER SUPPPLY, 230VAC INPUT, 24V/10A DC OUTPUT NS:Q6B4373186', '2011', '1', '18', 'Q6B4373186', '4724.16', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('26720', '1', 'PLC MICRO CHIP PORTATIL MCA, FESTO SERE ID0012335353', '2001', '13', '18', 'ID0012335353', '4577', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('26721', '1', 'PLC MICRO CHIP PORTATIL MCA, FESTO SERE ID0012335407', '2001', '13', '18', 'ID0012335407', '4577', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('26723', '1', 'PLC MICRO CHIP PORTATIL MCA, FESTO SERE ID0012335446', '2001', '13', '18', 'ID0012335446', '4577', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('26717', '1', 'PLC MICRO CHIP PORTATIL MCA, FESTO SERE ID0012335513', '2001', '13', '18', 'ID0012335513', '4577', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('31780', '6', 'PLC FCP 202 COMPLETO SERIE I0001239681', '2004', '12', '18', 'I0001239681', '7529.74', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('31778', '6', 'PLC FCP 202 COMPLETO SERIE I0001237766', '2004', '12', '18', 'I0001237766', '7529.74', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('31776', '6', 'PLC FCP 202 COMPLETO SERIE I0001239619', '2004', '12', '18', 'I0001239619', '7529.74', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('31775', '6', 'PLC FCP 202 COMPLETO SERIE I0001239637', '2004', '12', '18', '10001239637', '7529.74', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('31774', '6', 'PLC FCP 202 COMPLETO SERIE I0001231774', '2004', '12', '18', 'I0001231774', '7529.74', '1', '2');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('32106', '40', 'PROBADOR Y PROGRAMADOR LOGICO UNIVERSAL MOD. TOP MAX TM-A48, EE TOOLS S:TMC6532', '2004', '8', '19', 'TMC6532', '9726.93', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('26867', '41', 'PROBADOR Y PROGRAMADOR LOGICO UNIVERSAL MOD. TOP MAX TM-A48 MCAA EE TOOLS S:TMC3870', '2001', '8', '19', 'TM3870', '12190', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('32107', '40', 'PROBADOR Y PROGRAMADOR LOGICO UNIVERSAL MOD. TOP MAX TM-A48, EE TOOLS S:TMC6531', '2004', '8', '19', 'TMC6531', '9726.93', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('11459', '8', 'PROBADOR DE CABLE, MARCA: PROSKIT, MODELO: 3PK-NT007', '2023', '26', '19', 'S/S', '1', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('40988', '1', 'PROGRAMADOR UNIVERSAL USB2.1, FUENTE DE PODER,COM.POR PUERTOUSB, MEM.EMPROM', '2011', '1', '20', 'S/S', '8584', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('40991', '1', 'PROGRAMADOR UNIVERSAL USB2.1, FUENTE DE PODER,COM.POR PUERTOUSB, MEM.EMPROM', '2011', '1', '20', 'S/S', '8584', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('40985', '1', 'PROGRAMADOR UNIVERSAL USB2.1, FUENTE DE PODER, COM.POR PUERTO USB, MEM.EPROM', '2011', '1', '20', 'S/S', '8584', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('40989', '1', 'PROGRAMADOR UNIVERSAL USB2.1, FUENTE DE PODER, COM.POR PUERTO USB, MEM.EPROM', '2011', '1', '20', 'S/S', '8584', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('40984', '1', 'PROGRAMADOR UNIVERSAL USB2.1, FUENTE DE PODER, COM.POR PUERTO USB, MEM.EPROM', '2011', '1', '20', 'S/S', '8584', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('40986', '1', 'PROGRAMADOR UNIVERSAL USB2.1, FUENTE DE PODER, COM.POR PUERTO USB, MEM.EPROM', '2011', '1', '20', 'S/S', '8584', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('40990', '1', 'PROGRAMADOR UNIVERSAL USB2.1, FUENTE DE PODER, COM.POR PUERTO USB, MEM.EPROM', '2011', '1', '20', 'S/S', '8584', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('28077', '33', 'PROGRAMADOR UNIVERSAL MCA. MICROCHIP MOD. PIS STAR PLUS S:JIT022360948', '2002', '20', '20', 'JIT022360948', '2163.15', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('24724', '1', 'PROGRAMADOR PIC STAR PLUS', '2000', '1', '20', 'S/S', '10067.1', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('24714', '1', 'PROGRAMADOR PIC STAR PLUS DE FAMILIA MICROCHIP SERIE JIT013354363', '2001', '1', '20', 'JIT013354363', '2861.2', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('23364', '36', 'PROGRAMADOR DE MEMORIAS EPRON MODELO ROMMAX S:A06873', '2000', '10', '20', 'A06873', '2370.15', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('23365', '36', 'PROGRAMADOR DE MEMORIAS EPRON MODELO ROMMAX S:ROMMAX', '2000', '10', '20', 'S/S', '2370.15', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('24713', '1', 'PROGRAMADOR PIC STAR PLUS DE FAMILIA MICROCHIP SERIE JIT013354029', '2001', '1', '20', 'JIT013354029', '2861.2', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('24712', '1', 'PROGRAMADOR PIC STAR PLUS DE FAMILIA MICROCHIP SERIE JIT013353939', '2001', '1', '20', 'JIT013353939', '2861.2', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('28078', '33', 'PROGRAMADOR UNIVERSAL MCA. MICROCHIP MOD. PIS STAR PLUS S:JIT022361032', '2002', '20', '20', 'JIT022361032', '2163.15', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('40987', '1', 'PROGRAMADOR UNIVERSAL USB 1,FUENTE DE PODER, COM. POR PUERTO USB, MEM EPROM', '2011', '1', '20', 'S/S', '8584', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('26712', '1', 'PROGRAMADOR PIC STAR PLUS DE FAMILIA MICROCHIP SERE JIT013353939', '2001', '1', '20', 'JIT013353939', '2861.2', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('26714', '1', 'PROGRAMADOR PIC STAR PLUS DE FAMILIA MICROCHIP SERE JIT013354363', '2001', '1', '20', 'JIT013354363', '2861.2', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('26713', '1', 'PROGRAMADOR PIC STAR PLUS DE FAMILIA MICROCHIP SERIE JIT013354029', '2001', '1', '20', 'JIT013354029', '2861.2', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('35629', '1', 'PROGRAMADOR UNIVERSAL DE ALTA VELOCIDAD SOPORTA USB 1.1 Y 2.0 EN PC S:TM20715', '2007', '1', '20', 'TM20715', '16387.5', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('30139', '16', 'PROGRAMADOR UNIVERSAL MCA B&K PRESICION MOD 844A SERIE 138-01271', '2003', '4', '20', '138-01271', '4706.35', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('35627', '1', 'PROGRAMADOR UNIVERSAL DE ALTA VELOCIDAD SOPORTA USB 1.1 Y 2.0 EN PC S:TM20722', '2007', '1', '20', 'TM20722', '26382.5', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('30140', '16', 'PROGRAMADOR UNIVERSAL MCA BK PRESICION MOD 844A SERIE 138-01270', '2003', '4', '20', '138-01270', '4706.35', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('35628', '1', 'PROGRAMADOR UNIVERSAL DE ALTA VELOCIDAD SOPORTA USB 1.1 Y 2.0 EN PC S:TM20721', '2007', '1', '20', 'TM20721', '16387.5', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('26999', '1', 'PROYECTOR DE ACETATOS PORTATIL CON CABEZAL ABIERTO INTERRUPTOR DE SEGURIDAD', '2001', '1', '21', 'S/S', '2609.35', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('37156', '28', 'PROYECTOR DE COMPUTADORA Y VIDEO OPTOMA MOD. EP719 CON BRILLO DE 2000 2KKG 1024X768XGA', '2008', '23', '21', 'S/S', '15066.57', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('32555', '1', 'CANON DE PROYECCION PARA PC 1400 ANSILUMENS PARA SVGA DE 80 X 600 MCA VISSION', '2005', '35', '21', 'S/S', '100499.5', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('43406', '43', 'LUMINOSIDAD 2300, TECNOLOGIA 3LCD, MC:SONY, MOD:VPL-EX100 S:015176558N', '2012', '30', '21', 'S:015176558N', '6378.93', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('26700', '21', 'RETROPROYECTOR, MARCA: MARCA: APOLO, MODELO: CONCEPT 2210, SERIE No. 517028A011104801', '2023', '2', '21', '517028A011104801', '1', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('11475', '34', 'CAÑON, MARCA: VISION, MODELO:PRO 260', '2023', '35', '21', 'W449DMAT01928', '1', '1', '2');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('11309', '34', 'PROYECTOR, MARCA: VISION SYSTEM, MODELO:PRO 260', '2023', '35', '21', 'W449DMAT01906', '1', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('2670', '21', 'RETROPROYECTOR, MARCA: MARCA: APOLO, MODELO: CONCEPT 2210, SERIE No. 517028A011101613', '2023', '2', '21', '517028A011101613', '1', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('31720', '1', 'PUENTE UNIVERSAL (RLC) RANGOS AUTOMATICOS 31/2 DIGITAL S:82388', '2004', '1', '22', 'S/S', '799.19', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('31717', '1', 'PUENTE UNIVERSAL (RLC) RANGOS AUTOMATICOS 31/2 DIGITAL S:82374', '2004', '1', '22', '82374', '799.19', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('31719', '1', 'PUENTE UNIVERSAL (RLC) RANGOS AUTOMATICOS 31/2 DIGITAL S:82377', '2004', '1', '22', '82377', '799.19', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('31714', '1', 'PUENTE UNIVERSAL (RLC) RANGOS AUTOMATICOS 31/2 DIGITAL S:82390', '2004', '1', '22', '82390', '799.19', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('31718', '1', 'PUENTE UNIVERSAL (RLC) RANGOS AUTOMATICOS 31/2 DIGITAL S:82371', '2004', '1', '22', '82371', '799.19', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('31716', '1', 'PUENTE UNIVERSAL (RLC) RANGOS AUTOMATICOS 31/2 DIGITAL S:82362', '2004', '1', '22', '82362', '799.19', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('12085', '15', 'REGULADOR, MARCA: CENTRA, MODELO: 600', '2023', '6', '23', 'S/S', '1', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('32236', '1', 'REPRODUCTOR MP3, CD, DVD, CD-RW/R, DVD-RW/R, SVCD, JPEG Y VHS, ESCANEO PROGRESIVO COLOR PLATA', '2005', '1', '24', 'S/S', '1743.4', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('26787', '1', 'EQUIPO DE ADQUISICION DE DATOS PC MULTILAB', '2001', '21', '25', 'S/S', '46000', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('26779', '1', 'EQUIPO DE ADQUISICION DE DATOS PC MULTILAB', '2001', '21', '25', 'S/S', '46000', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('26786', '1', 'EQUIPO DE ADQUISICION DE DATOS PC MULTILAB', '2001', '21', '25', 'S/S', '46000', '1', '1');
INSERT INTO "Material" ('MaterialId', 'ModeloId', 'Descripcion', 'YearEntrada', 'MarcaId', 'CategoriaId', 'Serie', 'ValorHistorico', 'PlantelId', 'Condicion') VALUES ('26788', '1', 'EQUIPO DE ADQUISICION DE DATOS PC MULTILAB', '2001', '21', '25', 'S/S', '46000', '1', '1');

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
  "Estado" "bit" NOT NULL DEFAULT (0),
  /*
  0 - Denegado
  1 - Aprovado*/
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

INSERT INTO 'Pedido' ('PedidoId', 'Fecha', 'LaboratorioId', 'HoraEntrega', 'HoraDevolucion', 'EstudianteId', 'DocenteId', 'CoordinadorId', 'Estado') VALUES ('1', '2023-11-06', '12', '07:00', '08:40', '20300663', '8', '2', '1');
INSERT INTO 'Pedido' ('PedidoId', 'Fecha', 'LaboratorioId', 'HoraEntrega', 'HoraDevolucion', 'EstudianteId', 'DocenteId', 'CoordinadorId', 'Estado') VALUES ('2', '2023-11-06', '12', '07:00', '08:40', '20300663', '8', '2', '0');
INSERT INTO 'Pedido' ('PedidoId', 'Fecha', 'LaboratorioId', 'HoraEntrega', 'HoraDevolucion', 'EstudianteId', 'DocenteId', 'CoordinadorId', 'Estado') VALUES ('3', '2023-11-14', '10', '12:50', '02:30', '20300846', '4', '2', '1');
INSERT INTO 'Pedido' ('PedidoId', 'Fecha', 'LaboratorioId', 'HoraEntrega', 'HoraDevolucion', 'EstudianteId', 'DocenteId', 'CoordinadorId', 'Estado') VALUES ('4', '2023-11-21', '10', '09:30', '11:10', '20300666', '4', '2', '0');
INSERT INTO 'Pedido' ('PedidoId', 'Fecha', 'LaboratorioId', 'HoraEntrega', 'HoraDevolucion', 'EstudianteId', 'DocenteId', 'CoordinadorId', 'Estado') VALUES ('5', '2023-11-22', '12', '10:20', '12:00', '20300668', '8', '2', '1');
INSERT INTO 'Pedido' ('PedidoId', 'Fecha', 'LaboratorioId', 'HoraEntrega', 'HoraDevolucion', 'EstudianteId', 'DocenteId', 'CoordinadorId', 'Estado') VALUES ('6', '2023-11-23', '12', '07:50', '09:30', '20100320', '8', '2', '0');

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

-----------------------------------------------------

INSERT INTO 'Desc_Pedido' ('Desc_PedidoId', 'Cantidad', 'PedidoId', 'MaterialId') VALUES ('1', '1', '1', '31441');
INSERT INTO 'Desc_Pedido' ('Desc_PedidoId', 'Cantidad', 'PedidoId', 'MaterialId') VALUES ('2', '2', '2', '31570');
INSERT INTO 'Desc_Pedido' ('Desc_PedidoId', 'Cantidad', 'PedidoId', 'MaterialId') VALUES ('3', '1', '3', '32788');
INSERT INTO 'Desc_Pedido' ('Desc_PedidoId', 'Cantidad', 'PedidoId', 'MaterialId') VALUES ('4', '2', '4', '31437');
INSERT INTO 'Desc_Pedido' ('Desc_PedidoId', 'Cantidad', 'PedidoId', 'MaterialId') VALUES ('5', '1', '5', '42818');
INSERT INTO 'Desc_Pedido' ('Desc_PedidoId', 'Cantidad', 'PedidoId', 'MaterialId') VALUES ('6', '2', '6', '31593');
