-- get a list of students, their classes, and grades in a specific subject

SELECT
    s.sfname || ' ' || s.slname AS "Student Name",
    c.cname AS "Class Name",
    g.grade AS "Grade"
FROM
    student s
JOIN
    class c ON s.ClassID = c.ClassID
JOIN
    grade g ON s.StudID = g.StudID
WHERE
    g.subid = 2301;
