USE Arturo_Calle;

INSERT INTO Tiendas (Número_de_identificación,
	Nombre_de_la_sede,
	Ciudad,
	Dirección,
	Horario_de_apertura,
	Horario_de_cierre,
	Teléfono) 
VALUES ('102',
	'CC. Hayuelos',
	'Bogotá D.C.',
	'C.C. Hayuelos Local 1-104 Av. Ciudad de Cali, Cl. 20 ##82-52',
	'10:30:00',
	'21:30:00',
	'3546078');

INSERT INTO Tiendas (Número_de_identificación,
	Nombre_de_la_sede,
	Ciudad,
	Dirección,
	Horario_de_apertura,
	Horario_de_cierre,
	Teléfono) 
VALUES ('105',
	'CC. Parque la Colina',
	'Bogotá D.C.',
	'Cra. 58d ##146-51',
	'10:00:00',
	'21:00:00',
	'3152954421');
    
INSERT INTO Tiendas (Número_de_identificación,
	Nombre_de_la_sede,
	Ciudad,
	Dirección,
	Horario_de_apertura,
	Horario_de_cierre,
	Teléfono) 
VALUES ('129',
	'CC. El Tesoro',
	'Medellín',
	'Cra. 25a ##1A Sur 45',
	'10:30:00',
	'21:00:00',
	'3181510');
    
INSERT INTO Clientes (Cédula,
	Nombre,
	Dirección,
	Teléfono) 
VALUES ('1058495344',
	'Luis Alberto Perez',
	'Cra. 97 #32-14',
	'3152895140');
    
INSERT INTO Clientes (Cédula,
	Nombre,
	Dirección,
	Teléfono) 
VALUES ('2058494526',
	'Carlos Rodriguez',
	'Calle 105 #46-12',
	'3114875213');
    
INSERT INTO Clientes (Cédula,
	Nombre,
	Dirección,
	Teléfono) 
VALUES ('2078498812',
	'Mario Jiménez',
	'Cra. 68 #12-73',
	'3005984613');
    
INSERT INTO Empleados (Cédula,
	Nombre,
    Fecha_de_nacimiento,
	Dirección,
	Teléfono,
    Correo_electrónico,
    Sede,
    Salario) 
VALUES ('2094881532',
	'Raúl Hernández',
    '1984-06-14',
	'Calle 108 #72-19',
	'3056889549',
    'raulh14@gmail.com',
    'CC. Hayuelos',
    '1052000');
    
INSERT INTO Empleados (Cédula,
	Nombre,
    Fecha_de_nacimiento,
	Dirección,
	Teléfono,
    Correo_electrónico,
    Sede,
    Salario) 
VALUES ('2135978451',
	'Humberto Beltrán',
    '1988-10-25',
	'Cra. 92 #14-26',
	'3002975412',
    'humbel88@gmail.com',
    'CC. Parque la Colina',
    '1193000');
    
INSERT INTO Empleados (Cédula,
	Nombre,
    Fecha_de_nacimiento,
	Dirección,
	Teléfono,
    Correo_electrónico,
    Sede,
    Salario) 
VALUES ('1754625910',
	'Edwin Carrillo',
    '1996-02-06',
	'Calle 26 #12-46',
	'3108945623',
    'edwincar@gmail.com',
    'CC. Hayuelos',
    '956000');
    
INSERT INTO Productos (Código,
	Nombre,
	Descripción,
	Precio,
	Número_de_existencias,
	Sede_en_donde_está_disponible) 
VALUES ('1895', 
	'Blue Jean', 
	'Pantalon Jean azul de tela', 
	'198000', 
    '26', 
    'CC. El Tesoro');
    
INSERT INTO Productos (Código,
	Nombre,
	Descripción,
	Precio,
	Número_de_existencias,
	Sede_en_donde_está_disponible) 
VALUES ('2341', 
	'Chaqueta de Cuero', 
	'Chaqueta hecha de cuero de color negro', 
	'237000', 
    '40', 
    'CC. Parque la Colina');
    
INSERT INTO Productos (Código,
	Nombre,
	Descripción,
	Precio,
	Número_de_existencias,
	Sede_en_donde_está_disponible) 
VALUES ('1742', 
	'Cinturon Marrón', 
	'Cinturon de cuero de color marrón', 
	'43000', 
    '10', 
    'CC. Hayuelos');

INSERT INTO Lista_de_precios(Código_del_producto,
	Nombre_del_producto,
	Precio,
	Aplicación_del_IVA,
	Valor_del_IVA)
VALUES('1742',
	'Cinturon Marrón',
    '43000',
    'SI',
    '6880');
    
INSERT INTO Lista_de_precios(Código_del_producto,
	Nombre_del_producto,
	Precio,
	Aplicación_del_IVA,
	Valor_del_IVA)
VALUES('1895',
	'Blue Jean',
    '198000',
    'SI',
    '31680');
    
INSERT INTO Lista_de_precios(Código_del_producto,
	Nombre_del_producto,
	Precio,
	Aplicación_del_IVA,
	Valor_del_IVA)
VALUES('2341',
	'Chaqueta de Cuero',
    '237000',
    'SI',
    '37920');

INSERT INTO Facturas(Número_de_la_factura,
	Cédula_del_cliente,
	Nombre_del_cliente,
	Cantidad_de_productos_comprados,
	Fecha_de_la_compra)
VALUES('5879',
	'2058494526',
    'Carlos Rodriguez',
    '2',
    '2019-11-29');
    
INSERT INTO Facturas(Número_de_la_factura,
	Cédula_del_cliente,
	Nombre_del_cliente,
	Cantidad_de_productos_comprados,
	Fecha_de_la_compra)
VALUES('9542',
	'2078498812',
    'Mario Jiménez',
    '4',
    '2020-02-12');
    
INSERT INTO Facturas(Número_de_la_factura,
	Cédula_del_cliente,
	Nombre_del_cliente,
	Cantidad_de_productos_comprados,
	Fecha_de_la_compra)
VALUES('10787',
	'1058495344',
    'Luis Alberto Perez',
    '1',
    '2020-03-27');

INSERT INTO Ventas_factura_producto(Número_de_la_factura,
	Código_del_producto_facturado,
	Nombre_del_producto_facturado,
	Precio,
	Aplicación_del_IVA,
	Valor_del_IVA,
	Cantidad_de_productos_comprados)
VALUES('10787',
	'1742',
    'Cinturon Marrón',
    '43000',
    'SI',
    '6880',
    '1');

INSERT INTO Ventas_factura_producto(Número_de_la_factura,
	Código_del_producto_facturado,
	Nombre_del_producto_facturado,
	Precio,
	Aplicación_del_IVA,
	Valor_del_IVA,
	Cantidad_de_productos_comprados)
VALUES('9542',
	'2341',
    'Chaqueta de Cuero',
    '237000',
    'SI',
    '37920',
    '4');

INSERT INTO Ventas_factura_producto(Número_de_la_factura,
	Código_del_producto_facturado,
	Nombre_del_producto_facturado,
	Precio,
	Aplicación_del_IVA,
	Valor_del_IVA,
	Cantidad_de_productos_comprados)
VALUES('5879',
	'1895',
    'Blue Jean',
    '198000',
    'SI',
    '31680',
    '2');

INSERT INTO Proveedores(Nombre,
	Apellido,
	Cédula,
	Teléfono,
	Elemento_que_provee,
	Sede_a_la_que_provee)
VALUES('Alberto',
	'Marín',
    '157892234',
    '3002894716',
    'Cuero',
    'CC. Hayuelos');
    
INSERT INTO Proveedores(Nombre,
	Apellido,
	Cédula,
	Teléfono,
	Elemento_que_provee,
	Sede_a_la_que_provee)
VALUES('Gilberto',
	'Caro',
    '1874963244',
    '3152789314',
    'Metal',
    'CC. El Tesoro');
    
INSERT INTO Proveedores(Nombre,
	Apellido,
	Cédula,
	Teléfono,
	Elemento_que_provee,
	Sede_a_la_que_provee)
VALUES('Edgar',
	'Pulido',
    '2064879230',
    '3128987712',
    'Cuero',
    'CC. El Tesoro');

INSERT INTO Mesa_directiva(Nombre,
	Cédula,
	Cargo,
	Teléfono,
	Correo_electrónico,
	Salario,
	Nombre_del_empleado_que_se_encarga,
	Cédula_del_empleado_que_se_encarga)
VALUES('Sergio Velazquez',
	'1879542360',
    'Supervisor',
    '3002425981',
    'Sergiov2@yahoo.com',
    '2890000',
    'Humberto Beltrán',
    '2135978451');
    
INSERT INTO Mesa_directiva(Nombre,
	Cédula,
	Cargo,
	Teléfono,
	Correo_electrónico,
	Salario,
	Nombre_del_empleado_que_se_encarga,
	Cédula_del_empleado_que_se_encarga)
VALUES('Hernando Vasquez',
	'2089746315',
    'Gerente',
    '3152416584',
    'Vasquezhernando@gmail.com',
    '3219000',
    'Raúl Hernández',
    '2094881532');
    
INSERT INTO Mesa_directiva(Nombre,
	Cédula,
	Cargo,
	Teléfono,
	Correo_electrónico,
	Salario,
	Nombre_del_empleado_que_se_encarga,
	Cédula_del_empleado_que_se_encarga)
VALUES('Arturo Calle',
	'1896472350',
    'Dueño',
    '3054891264',
    'acalle@arturocalle.com.co',
    '5648000',
    'Edwin Carrillo',
    '1754625910');

INSERT INTO Empresas_de_referencias_comerciales(Nombre,
	Número_de_identificación,
	Ciudad,
	Dirección,
	Teléfono,
	Nombre_de_quien_recibe_la_referencia)
VALUES('GEF',
	'1005498',
    'Bogotá D.C.',
    'Ac. 26 #62-47',
    '3113554281',
    'Hernando Vasquez');
    
INSERT INTO Empresas_de_referencias_comerciales(Nombre,
	Número_de_identificación,
	Ciudad,
	Dirección,
	Teléfono,
	Nombre_de_quien_recibe_la_referencia)
VALUES('Forever 21',
	'2175962',
    'Medellín',
    'Cra 43A #7 Sur-170',
    '3214049',
    'Sergio Velazquez');
    
INSERT INTO Empresas_de_referencias_comerciales(Nombre,
	Número_de_identificación,
	Ciudad,
	Dirección,
	Teléfono,
	Nombre_de_quien_recibe_la_referencia)
VALUES('Adidas Store',
	'1504975',
    'Medellín',
    'Calle 29 # 43g-10',
    '3174376763',
    'Sergio Velazquez');

INSERT INTO Referencias_comerciales_de_los_clientes(Nombre_de_la_empresa_que_referencia,
	Nombre_del_cliente,
	Cédula_del_cliente,
	Teléfono_del_cliente)
VALUES('Adidas Store',
	'Miguel Vargas',
    '2104896542',
    '3052897247');
    
INSERT INTO Referencias_comerciales_de_los_clientes(Nombre_de_la_empresa_que_referencia,
	Nombre_del_cliente,
	Cédula_del_cliente,
	Teléfono_del_cliente)
VALUES('Adidas Store',
	'Ernesto Suarez',
    '1589746325',
    '3005846931');
    
INSERT INTO Referencias_comerciales_de_los_clientes(Nombre_de_la_empresa_que_referencia,
	Nombre_del_cliente,
	Cédula_del_cliente,
	Teléfono_del_cliente)
VALUES('GEF',
	'Rodrigo Martínez',
    '1987465203',
    '31020448710');
