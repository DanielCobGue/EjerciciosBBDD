SET SERVEROUTPUT ON;
---EJERCICIO7.2---
DECLARE
    VNOMBRECOMPLETO TNOMBRECOMPLETO;
    VDOMICILIO TDOMICILIO;
    VCODIGOPOSTAL TCODIGOPOSTAL;
    VDATOSPERSONALES DATOSPERSONALES;
BEGIN
     VNOMBRECOMPLETO :=NEW TNOMBRECOMPLETO('ANGELA', 'NEGRO', 'CASTILLA');
    VDOMICILIO :=NEW TDOMICILIO('AVENIDA', 'POSTIGO', 100, '1ºA');
    VCODIGOPOSTAL :=NEW TCODIGOPOSTAL(41,001);
    VDATOSPERSONALES :=NEW DATOSPERSONALES(11, VNOMBRECOMPLETO, VDOMICILIO, VCODIGOPOSTAL, '18/05/1991');
    DBMS_OUTPUT.PUT_LINE(VDATOSPERSONALES.FECHANACIMIENTO);
END;