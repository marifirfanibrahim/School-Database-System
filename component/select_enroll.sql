-- select students that enrolled in january

SELECT
    STUDID,
    SFNAME,
    SLANAME,
    ENROLLDATE
FROM
    STUDENTS
    JOIN ENROLLMENT
    USING(STUDID)
WHERE
    TO_CHAR(ENROLLDATE, 'MM') = '01';