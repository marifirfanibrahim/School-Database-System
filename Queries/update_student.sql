--Query 2: Update a student's grade in a specific subject and class. (Muiz)

SELECT * FROM grade WHERE StudID = 2001 AND subid = 2301 AND ClassID = 3001;

UPDATE grade
SET
    grade = 'B'
WHERE
    StudID = 2001
    AND subid = 2301
    AND ClassID = 3001;

SELECT * FROM grade WHERE StudID = 2001 AND subid = 2301 AND ClassID = 3001;