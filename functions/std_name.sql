-- function to fetch and combine the student first name and last name

CREATE OR REPLACE FUNCTION std_name
(stid student.StudID%TYPE)

RETURN VARCHAR

AS

sname student.sfname%TYPE;

BEGIN

SELECT sfname ||' '||slname
INTO sname
FROM student
WHERE StudID = stid;

RETURN(sname);

END;
/