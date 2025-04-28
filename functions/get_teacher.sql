-- function to get teachers' names from a class id

CREATE OR REPLACE FUNCTION get_teacher
(
    cid         NUMBER
)
RETURN  VARCHAR2

IS
    v_teachid   NUMBER(10);
    v_tfname    teacher.tfname%TYPE;
    v_tlname    teacher.tlname%TYPE;
    v_cname     class.cname%TYPE;
    v_tname     VARCHAR2(50);

    CURSOR teacher_cursor IS
    SELECT teachid, tfname, tlname, cname
    FROM teacher JOIN class USING (teachid)
    WHERE classid = cid;
    
BEGIN
    OPEN teacher_cursor;
        LOOP
            FETCH teacher_cursor 
            INTO v_teachid, v_tfname, v_tlname, v_cname;
            EXIT WHEN teacher_cursor%NOTFOUND;

            v_tname := v_tfname||' '||v_tlname;

            DBMS_OUTPUT.PUT_LINE ('The teacher for class '||v_cname||' is '||v_tname);
        END LOOP;
    CLOSE teacher_cursor;

    RETURN (v_tname);
END;
/