SET SERVEROUTPUT ON;
---EJERCICIO7.7---
DECLARE
    DOM1 TDOMICILIO := NEW TDOMICILIO('PLAZA', 'ESPANIA', 103, '1ºA');
    CODIGOPOSTAL1 TCODIGOPOSTAL := NEW TCODIGOPOSTAL(28,003);
    NOMBRECOMPLETO1 TNOMBRECOMPLETO := NEW TNOMBRECOMPLETO('DOLORES', 'SANCHEZ', 'GOMEZ');
    PROFESOR PROFESOR := NEW PROFESOR (133,NOMBRECOMPLETO1,DOM1,CODIGOPOSTAL1,'21/08/1997','1/9/2021');

    DOM2 TDOMICILIO := NEW TDOMICILIO('CALLE', 'LAGUNAS', 12, '1ºA');
    CODIGOPOSTAL2 TCODIGOPOSTAL := NEW TCODIGOPOSTAL(660, 28);
    NOMBRECOMPLETO2 TNOMBRECOMPLETO := NEW TNOMBRECOMPLETO('LUIS', 'MARIN', 'SOL');
    vCALIFICACIONES CALIFICACIONES:=NEW CALIFICACIONES(4,4,5,7);
    ALUMNO ALUMNO := NEW ALUMNO (234,NOMBRECOMPLETO2,DOM2,CODIGOPOSTAL2,'04/09/2006',vCALIFICACIONES)
    
BEGIN

    DBMS_OUTPUT.PUT_LINE('Profesor: '|| PROFESOR.NOMBRECOMPLETO1.NOMBRE||' '||PROFESOR.NOMBRECOMPLETO1.PRAPELLIDO);
    DBMS_OUTPUT.PUT_LINE('Alumno: ' ||  ALUMNO.NOMBRECOMPLETO2||', CON NOTA FINAL: '||ALUMNO.vCALIFICACIONES.CALIFICACIONCUATRO);
    
END;