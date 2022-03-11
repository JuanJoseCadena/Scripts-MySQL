USE Arturo_Calle;

DELETE FROM Tiendas WHERE Nombre_de_la_sede='CC. Hayuelos';

DELETE FROM Clientes WHERE Cédula='2058494526';

DELETE FROM Empleados WHERE Nombre='Humberto Beltrán';

DELETE FROM Productos WHERE Número_de_existencias='26';

DELETE FROM Lista_de_Precios WHERE Código_del_producto='1895'; 

DELETE FROM Facturas WHERE Número_de_la_factura='9542';

DELETE FROM Ventas_factura_producto WHERE Número_de_la_factura='9542';

DELETE FROM Ventas_factura_producto WHERE Nombre_del_producto_facturado='Blue Jean';

DELETE FROM Proveedores WHERE Cédula='1874963244';

DELETE FROM Mesa_directiva WHERE Cédula='2089746315';

DELETE FROM Empresas_de_referencias_comerciales WHERE Nombre='GEF';

DELETE FROM Referencias_comerciales_de_los_clientes WHERE Cédula_del_cliente='1589746325';
