
SELECT * FROM PRODUCTO;
INSERT INTO PRODUCTO(NOMBRE_PRODUCTO,PRECIO,FECHA_ELABORACION,FECHA_VENCIMIENTO)
VALUES('HARINA',9,  '2018-06-11','2018-9-02');

ALTER TABLE  COMPRA_CREDITO
ALTER COLUMN FECHA_COMPRA DATE;
ALTER TABLE  COMPRA_CREDITO
ALTER COLUMN FECHA_PAGO DATE;

ALTER TABLE PRODUCTO
DROP COLUMN FECHA_ELAVORACION ;

ALTER TABLE PRODUCTO
ADD FECHA_ELAVORACION ;


INSERT INTO CATEGORIA(CATEGORIA, ID_PRODUCTO)
VALUES('EMBUTIDOS',1);

USE PBDSI;   
GO  
EXEC sp_rename 'NOMBRE_DIRECCION', 'NOMBRE_PROVEEDOR','COLUMN'; 

USE PBDSI; 

GO  
EXEC sp_rename 'PROVEEDOR.NOMBRE_DIRECCION', 'NOMBRE_DIRECCION', 'COLUMN';  
GO 
 */
SELECT * FROM INVENTARIO ;
SELECT * FROM GASTO;

INSERT INTO GASTO(NOMBRE_PRODUCTO,CANTIDAD,FECHA_GASTO,ID_INVENTARIO)
VALUES               ('SALSA DULCE',       3,      '2018-5-1', 6);

SELECT * FROM GASTOS_PERSONALES;


INSERT INTO GASTOS_PERSONALES(FECHA_GASTO,DESCRICCION_GASTO,MONTO,NOMBRE_USUARIO,ID_INVENTARIO, ID_GASTO)
VALUES               ('2018-4-1',     'AJUSTE DEL CABLE',       100,'ROBERTO HERNANDES',2,5);

DROP TABLE GASTO_PUBLICOS;
DROP TABLE GASTO_PERSONALES;

SELECT * FROM PROVEEDOR;

SELECT * FROM COMPRA;


INSERT INTO COMPRA(NOMBRE_PRODUCTO,PRECIO_COSTO,CANTIDAD, ID_INVENTARIO,ID_PROVEEDOR)
VALUES             ('ARROS',        8,       25  , 3,5);

INSERT INTO COMPRA_CONTADO(NOMBRE_PRODUCTO,NO_FACTURA,CANTIDAD, ID_COMPRA)
VALUES             ('AZUCAR',     456,       20  , 2);
INSERT INTO COMPRA_CREDITO(NOMBRE_PRODUCTO,PRECIO_COSTO,CANTIDAD,FECHA_COMPRA,FECHA_PAGO, ID_COMPRA)
VALUES             ('FRIJOLES',     8,       100, '2018-5-6','2018-7-9',1);

INSERT INTO PROVEEDOR(NOMBRE_DIRECCION,DIRECCION,NOMBRE_VENDEDOR,APELLIDO_VENDEDOR,DIAS_VISITA, ID_PRODUCTO,ID_COMPRA)
VALUES                ('CERVESERIA HONDURE�A','COMAYAGUELLA', 'ROBERTO ','PAZ' , 'LUNES', 10, 2);

INSERT INTO PROVEEDOR(NOMBRE_DIRECCION,DIRECCION,NOMBRE_VENDEDOR,APELLIDO_VENDEDOR,DIAS_VISITA, ID_PRODUCTO,ID_COMPRA)
VALUES                ('CERVESERIA HONDURE�A','COMAYAGUELLA', 'ROBERTO ','PAZ' , 'LUNES', 10, 2);

INSERT INTO USUARIO(NOMBRE_USUARIO,APELLIDO_USUARIO,EMAIL,OBSERVACIONES, ID_INVENTARIO)
VALUES                ('ANGEL','HERNANDES','angelhernandes@gmail.com','null' , 5);