-- anonymous block for function get_teacher

SET VERIFY OFF
SET SERVEROUTPUT ON

ACCEPT cid PROMPT 'Enter class ID: '

DECLARE
v_teachid       NUMBER(10);
ex_classid      EXCEPTION;

v_tfname    teacher.tfname%TYPE;
v_tlname    teacher.tlname%TYPE;
v_cname     class.cname%TYPE;
v_tname     VARCHAR2(50);

BEGIN

v_tname := get_teacher(&cid);

IF SQL%NOTFOUND THEN
        RAISE ex_classid;
    END IF;

EXCEPTION
    WHEN ex_classid THEN
	DBMS_OUTPUT.PUT_LINE ('Invalid class ID');

END;
/