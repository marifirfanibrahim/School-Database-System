-- procedure to display student grade
-- function std_name will be called

CREATE OR REPLACE PROCEDURE student_grade(stid IN grade.StudID%TYPE)
AS
  grade_rec grade%ROWTYPE;
  student_name VARCHAR(20);
BEGIN
    
    student_name := std_name(stid);
    DBMS_OUTPUT.PUT_LINE('Student name: '||student_name);

  -- Fetch grades for the given student ID
  FOR grade_rec IN (SELECT * FROM grade WHERE StudID = stid)
  LOOP
  
    -- Print student's grade details
    DBMS_OUTPUT.PUT_LINE('Grade ID: ' || grade_rec.GRADEID || ', Subject ID: ' || grade_rec.subid || ', Class ID: ' || grade_rec.ClassID || ', Grade: ' || grade_rec.grade);
  END LOOP;
END;
/