CREATE OR REPLACE PACKAGE DISPLAY_NAME_PACKAGE
IS
PROCEDURE DISPLAY_EMPLOYEE_NAME_BY_ID(PIN_EMPLOYEE_ID IN NUMBER);
END DISPLAY_NAME_PACKAGE;
CREATE OR REPLACE PACKAGE BODY DISPLAY_NAME_PACKAGE
IS
PROCEDURE display_employee_name_by_id(pin_employee_id IN NUMBER)
IS vs_first_name VARCHAR(20);
BEGIN  SELECT first_name  INTO vs_first_name   FROM HR.EMPLOYEES  WHERE employee_id = pin_employee_id;
DBMS_OUTPUT.PUT_LINE(vs_first_name);
 END;
BEGIN	
DBMS_OUTPUT.PUT_LINE('DISPLAY_NAME_PACKAGE');
END DISPLAY_NAME_PACKAGE;
BEGIN 
    DISPLAY_NAME_PACKAGE.DISPLAY_EMPLOYEE_NAME_BY_ID(100);
END;