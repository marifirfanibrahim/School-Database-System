-- select students that enrolled in january

SELECT
    STUDID,
    SFNAME,
    SLNAME,
    ENROLLDATE
FROM
    STUDENT
    JOIN ENROLLMENT
    USING(STUDID)
WHERE
    TO_CHAR(ENROLLDATE, 'MM') = '01';