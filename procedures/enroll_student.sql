-- procedure to enroll a student in a class

CREATE OR REPLACE PROCEDURE enroll_student
(
    sid         student.studid%TYPE,
    cid         student.classid%TYPE,
    sfname      student.sfname%TYPE,
    slname      student.slname%TYPE,
    sdob        student.dob%TYPE,
    sgender     student.gender%TYPE
)

IS 
BEGIN

INSERT INTO student  (studid,    classid, sfname,   slname, dob, gender)
VALUES              (sid,       cid,      sfname, slname, sdob, sgender);

DBMS_OUTPUT.PUT_LINE ('The data has been entered.');

END;
/