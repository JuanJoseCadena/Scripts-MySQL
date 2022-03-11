CREATE DATABASE Arturo_Calle;

USE Arturo_Calle;

CREATE TABLE Tiendas(
Número_de_identificación int PRIMARY KEY NOT NULL,
Nombre_de_la_sede varchar(80),
Ciudad varchar(30),
Dirección varchar(120),
Horario_de_apertura time,
Horario_de_cierre time,
Teléfono bigint,
INDEX Sede (Nombre_de_la_sede));

CREATE TABLE Clientes(
Cédula int PRIMARY KEY NOT NULL,
Nombre varchar(100) NOT NULL,
Dirección varchar(120),
Teléfono bigint,
INDEX Cédula (Cédula),
INDEX Nombre (Nombre));

CREATE TABLE Empleados(
Cédula int PRIMARY KEY NOT NULL,
Nombre varchar(100) NOT NULL,
Fecha_de_nacimiento date,
Dirección varchar(120),
Teléfono bigint,
Correo_electrónico varchar(100),
Sede varchar(80),
Salario decimal(19, 4),
INDEX Nombre (Nombre),
INDEX Cédula (Cédula),
CONSTRAINT Sede FOREIGN KEY (Sede)
	REFERENCES Tiendas (Nombre_de_la_sede)
    ON UPDATE CASCADE
    ON DELETE SET NULL);

CREATE TABLE Productos(
Código int PRIMARY KEY NOT NULL AUTO_INCREMENT,
Nombre varchar(80) NOT NULL,
Descripción varchar(200),
Precio decimal(19, 4) NOT NULL,
Número_de_existencias int,
Sede_en_donde_está_disponible varchar(80),
INDEX Código (Código),
INDEX Nombre (Nombre),
INDEX Precio (Precio),
CONSTRAINT Sede_en_donde_está_disponible FOREIGN KEY (Sede_en_donde_está_disponible)
	REFERENCES Tiendas (Nombre_de_la_sede)
    ON UPDATE CASCADE
    ON DELETE SET NULL);

CREATE TABLE Lista_de_precios(
Código_del_producto int PRIMARY KEY NOT NULL AUTO_INCREMENT,
Nombre_del_producto varchar(80) NOT NULL,
Precio decimal(19, 4),
Aplicación_del_IVA varchar(2) NOT NULL,
Valor_del_IVA decimal(19, 4),
INDEX Aplicación_del_IVA (Aplicación_del_IVA),
INDEX Valor_del_IVA (Valor_del_IVA),
CONSTRAINT Código FOREIGN KEY (Código_del_producto)
	REFERENCES Productos (Código)
    ON UPDATE CASCADE
    ON DELETE CASCADE,
CONSTRAINT Nombre FOREIGN KEY (Nombre_del_producto)
	REFERENCES Productos (Nombre)
    ON UPDATE CASCADE
    ON DELETE CASCADE,
CONSTRAINT Precio FOREIGN KEY (Precio)
	REFERENCES Productos (Precio)
    ON UPDATE CASCADE
    ON DELETE SET NULL);
    
CREATE TABLE Facturas(
Número_de_la_factura int PRIMARY KEY NOT NULL AUTO_INCREMENT,
Cédula_del_cliente int NOT NULL,
Nombre_del_cliente varchar(100) NOT NULL,
Cantidad_de_productos_comprados int NOT NULL,
Fecha_de_la_compra date,
INDEX Número_de_la_factura (Número_de_la_factura),
CONSTRAINT Cédula FOREIGN KEY (Cédula_del_cliente)
	REFERENCES Clientes (Cédula)
    ON UPDATE CASCADE
    ON DELETE CASCADE,
CONSTRAINT Nombre_del_cliente FOREIGN KEY (Nombre_del_cliente)
	REFERENCES Clientes (Nombre)
    ON UPDATE CASCADE
    ON DELETE CASCADE);
    
CREATE TABLE Ventas_factura_producto(
Número_de_la_factura int PRIMARY KEY NOT NULL AUTO_INCREMENT,
Código_del_producto_facturado int,
Nombre_del_producto_facturado varchar(80),
Precio decimal(19, 4),
Aplicación_del_IVA varchar(2),
Valor_del_IVA decimal(19, 4),
Cantidad_de_productos_comprados int NOT NULL,
CONSTRAINT Número_de_la_factura FOREIGN KEY (Número_de_la_factura)
	REFERENCES Facturas (Número_de_la_factura)
    ON UPDATE CASCADE
    ON DELETE CASCADE,
CONSTRAINT Código_del_producto_facturado FOREIGN KEY (Código_del_producto_facturado)
	REFERENCES Productos (Código)
    ON UPDATE CASCADE
    ON DELETE SET NULL,
CONSTRAINT Nombre_del_producto_facturado FOREIGN KEY (Nombre_del_producto_facturado)
	REFERENCES Productos (Nombre)
    ON UPDATE CASCADE
    ON DELETE SET NULL,
CONSTRAINT Precio_factura FOREIGN KEY (Precio)
	REFERENCES Productos (Precio)
    ON UPDATE CASCADE
    ON DELETE SET NULL,
CONSTRAINT Aplicación_del_IVA FOREIGN KEY (Aplicación_del_IVA)
	REFERENCES Lista_de_precios (Aplicación_del_IVA)
    ON UPDATE CASCADE
    ON DELETE NO ACTION,
CONSTRAINT Valor_del_IVA FOREIGN KEY (Valor_del_IVA)
	REFERENCES Lista_de_precios (Valor_del_IVA)
    ON UPDATE CASCADE
    ON DELETE CASCADE);

CREATE TABLE Proveedores(
Nombre varchar(50) NOT NULL,
Apellido varchar(50) NOT NULL,
Cédula int PRIMARY KEY NOT NULL,
Teléfono bigint,
Elemento_que_provee varchar(100) NOT NULL,
Sede_a_la_que_provee varchar(80),
CONSTRAINT Sede_a_la_que_provee FOREIGN KEY (Sede_a_la_que_provee)
	REFERENCES Tiendas (Nombre_de_la_sede)
    ON UPDATE CASCADE
    ON DELETE SET NULL);

CREATE TABLE Mesa_directiva(
	Nombre varchar(100) NOT NULL,
	Cédula int PRIMARY KEY NOT NULL,
	Cargo varchar(50),
	Teléfono bigint,
	Correo_electrónico varchar(100),
	Salario decimal(19, 4),
    Nombre_del_empleado_que_se_encarga varchar(100),
    Cédula_del_empleado_que_se_encarga int,
    INDEX Nombre (Nombre),
    CONSTRAINT Nombre_del_empleado_que_se_encarga FOREIGN KEY (Nombre_del_empleado_que_se_encarga)
		REFERENCES Empleados (Nombre)
        ON UPDATE CASCADE
		ON DELETE SET NULL,
	CONSTRAINT Cédula_del_empleado_que_se_encarga FOREIGN KEY (Cédula_del_empleado_que_se_encarga)
		REFERENCES Empleados (Cédula)
        ON UPDATE CASCADE
		ON DELETE SET NULL);

CREATE TABLE Empresas_de_referencias_comerciales(
	Nombre varchar(70) NOT NULL,
	Número_de_identificación int PRIMARY KEY NOT NULL AUTO_INCREMENT,
	Ciudad varchar(30),
	Dirección varchar(120),
	Teléfono bigint,
    Nombre_de_quien_recibe_la_referencia varchar(100),
	INDEX Nombre (Nombre),
    CONSTRAINT Nombre_de_quien_recibe_la_referencia FOREIGN KEY (Nombre_de_quien_recibe_la_referencia)
		REFERENCES Mesa_directiva (Nombre)
        ON UPDATE CASCADE
		ON DELETE CASCADE);

CREATE TABLE Referencias_comerciales_de_los_clientes(
Nombre_de_la_empresa_que_referencia varchar(70) NOT NULL,
Nombre_del_cliente varchar(50) NOT NULL,
Cédula_del_cliente int PRIMARY KEY NOT NULL,
Teléfono_del_cliente bigint,
CONSTRAINT Nombre_de_la_empresa_que_referencia FOREIGN KEY (Nombre_de_la_empresa_que_referencia)
	REFERENCES Empresas_de_referencias_comerciales (Nombre)
    ON UPDATE CASCADE
    ON DELETE CASCADE);
