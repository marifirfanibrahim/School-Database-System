-- select the students enrolled in Mathematics class

SELECT
    STUDID,
    SFNAME,
    SLNAME
FROM
    STUDENT
    JOIN CLASS
    USING (CLASSID)
WHERE
    CNAME = 'Mathematics';