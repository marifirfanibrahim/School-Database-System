-- anonymous block for procedure student_grade 
-- function std_name will be called by procedure student_grade

SET SERVEROUTPUT ON
SET VERIFY OFF

ACCEPT sid PROMPT 'Enter the student ID: '

DECLARE
 student_id student.StudID%TYPE;
BEGIN

student_id := &sid;
student_grade(student_id);

END;
/