-- anonymous block for procedure enroll_student

SET VERIFY OFF
SET SERVEROUTPUT ON

ACCEPT sid PROMPT 'Enter new student ID: '
ACCEPT cid PROMPT 'Enter new student class ID: '
ACCEPT sfn PROMPT 'Enter new student first name: '
ACCEPT sln PROMPT 'Enter new student last name: '
ACCEPT sdob PROMPT 'Enter new student date of birth (DD-MM-YYYY): '
ACCEPT sg PROMPT 'Enter new student gender: '

BEGIN

enroll_student(&sid, &cid, '&sfn', '&sln', '&sdob', '&sg');

END;
/
