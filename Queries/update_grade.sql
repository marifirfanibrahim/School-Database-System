-- update the Mathematics grade of Ahmad Razak to an A 

UPDATE GRADE
SET
    GRADE = 'A'
WHERE
    SFNAME = 'Ahmad'
    AND SLNAME = 'Razak'
    AND CLASSID = (
        SELECT
            CLASSID
        FROM
            CLASS
        WHERE
            CLASSNAME = 'Mathematics'
    );