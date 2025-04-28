-- insert a new female student named Aliyah Hassan, who was born in 01/11/2000

INSERT INTO student (ClassID, sfname, slname, dob, gender)
VALUES (3003, 'Aliyah', 'Hassan', TO_DATE('2000-11-01', 'YYYY-MM-DD'), 'F');