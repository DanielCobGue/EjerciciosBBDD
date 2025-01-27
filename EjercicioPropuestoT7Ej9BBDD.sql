SET SERVEROUTPUT ON;
---EJERCICIO7.9---
DECLARE
    POLI1 POLICIA;
    POLI2 POLICIA;
    POLI3 POLICIA;
    SALARIOFINAL NUMBER;
BEGIN
    POLI1:=NEW POLICIA('25896563M','PEDRO','LOPEZ','GARCIA', 656565656,'LOCAL', 1500);
    POLI2:=NEW POLICIA('25896563A','LUIS','ORTEGA','MARTIN', 656565666,'NACIONAL', 1700);
    POLI3:=NEW POLICIA('25896563E','ROBERTO','MARIN','SANZ', 656565555,'OPERACIONES ESPECIALES', 1900);
    
    DBMS_OUTPUT.PUT_LINE(POLI1.TELEFONO);
    DBMS_OUTPUT.PUT_LINE(POLI2.NOMBRE);
    DBMS_OUTPUT.PUT_LINE('EL DNI DEL POLICIA 3 ES: '||POLI3.DNI||' Y SU NOMBRE ES:'||POLI3.NOMBRE);
    
    DBMS_OUTPUT.PUT_LINE('SALARIO INICIAL DE POLI 1: '||POLI1.SALARIOBASE);
    SALARIOFINAL:=POLI1.CALCULARSALARIO(POLI1.SALARIOBASE);
    DBMS_OUTPUT.PUT_LINE('SALARIO FINAL DE POLI 1: '||SALARIOFINAL);
    
    DBMS_OUTPUT.PUT_LINE('SALARIO INICIAL DE POLI 2: '||POLI2.SALARIOBASE);
    SALARIOFINAL:=POLI2.CALCULARSALARIO(POLI2.SALARIOBASE);
    DBMS_OUTPUT.PUT_LINE('SALARIO FINAL DE POLI 2: '||SALARIOFINAL);
    
    DBMS_OUTPUT.PUT_LINE('SALARIO INICIAL DE POLI 3: '||POLI3.SALARIOBASE);
    SALARIOFINAL:=POLI3.CALCULARSALARIO(POLI3.SALARIOBASE);
    DBMS_OUTPUT.PUT_LINE('SALARIO FINAL DE POLI 3: '||SALARIOFINAL);
    
    INSERT INTO POLICIAS VALUES(POLI1);
    INSERT INTO POLICIAS VALUES(POLI2);
    INSERT INTO POLICIAS VALUES(POLI3);
    COMMIT;
    
    UPDATE POLICIAS SET SALARIOBASE=POLI1.CALCULARSALARIO(POLI1.SALARIOBASE) WHERE DNI=POLI1.DNI;
    UPDATE POLICIAS SET SALARIOBASE=POLI2.CALCULARSALARIO(POLI2.SALARIOBASE) WHERE DNI=POLI2.DNI;
    UPDATE POLICIAS SET SALARIOBASE=POLI3.CALCULARSALARIO(POLI3.SALARIOBASE) WHERE DNI=POLI3.DNI;
END;
CREATE TABLE INSPECTORES OF INSPECTOR;
DECLARE
    INSPECTOR1 INSPECTOR;
    INSPECTOR2 INSPECTOR;
BEGIN
    INSPECTOR1:=NEW INSPECTOR('25896563Z','PEDRO','LOPEZ','GARCIA', 656565657,'HOSTELERIA');
    INSPECTOR2:=NEW INSPECTOR('25896563H','JAVIER','LOPEZ','GARCIA', 656565659,'TRAFICO');
    DBMS_OUTPUT.PUT_LINE(INSPECTOR1.TELEFONO);
    DBMS_OUTPUT.PUT_LINE(INSPECTOR1.ESPECIALIDAD);
    
    INSERT INTO INSPECTORES VALUES(INSPECTOR1);
    INSERT INTO INSPECTORES VALUES(INSPECTOR2);
    COMMIT;
    
    UPDATE INSPECTORES SET ESPECIALIDAD='HOSTELERIA' WHERE ESPECIALIDAD='TRAFICO';
END;