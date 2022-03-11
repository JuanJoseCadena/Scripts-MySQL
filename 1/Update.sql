USE Arturo_Calle;

UPDATE Tiendas
SET Horario_de_Apertura='10:00:00' WHERE Número_de_Identificación='102';

UPDATE Clientes
SET Teléfono='3004879241' WHERE Cédula='2058494526';

UPDATE Empleados
SET Salario='1125000' WHERE Nombre='Edwin Carrillo';

UPDATE Productos
SET Precio='218000' WHERE Código='2341';

UPDATE Lista_de_Precios
SET Precio='218000', Valor_del_IVA='34880' WHERE Código_del_producto='2341';

UPDATE Facturas
SET Cantidad_de_productos_comprados='3' WHERE Número_de_la_factura='9542';

UPDATE Ventas_factura_producto
SET Cantidad_de_productos_comprados='3', Precio='218000', Valor_del_IVA='34880' WHERE Número_de_la_factura='9542';

UPDATE Proveedores
SET Sede_a_la_que_provee='CC. Parque la Colina' WHERE Cédula='157892234';

UPDATE Mesa_directiva
SET Correo_electrónico='VelazquezS92@yahoo.com' WHERE Nombre='Sergio Velazquez';

UPDATE Empresas_de_referencias_comerciales
SET Nombre_de_quien_recibe_la_referencia='Arturo Calle' WHERE Nombre='Forever 21';

UPDATE Referencias_comerciales_de_los_clientes
SET Teléfono_del_cliente='3124847952' WHERE Cédula_del_cliente='1589746325'
