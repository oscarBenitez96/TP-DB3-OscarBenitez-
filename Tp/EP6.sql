CREATE TRIGGER TX_PUNTERO_ACTUALIZA ON
Comprobantes_Cabecera FOR INSERT
AS
IF (SELECT TOP 1 TIPO_COMPROBANTE FROM Comprobantes_Cabecera ORDER BY ID DESC) = 1
BEGIN 
 UPDATE	Tipos_Comprobantes SET PUNTERO = PUNTERO + 1 WHERE ID = 1
 PRINT 'Puntero Factura A actualizado'
END
ELSE
BEGIN
 UPDATE Tipos_Comprobantes SET PUNTERO = PUNTERO + 1 WHERE ID = 2
 PRINT 'Puntero Factura B actualizado'
END
GO