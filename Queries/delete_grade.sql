-- Farid Hamid has been caught cheating during his exam and thus his grade is invalid, remove his grade (Hanif)

DELETE FROM grade
WHERE StudID = (SELECT StudID
FROM student
WHERE LOWER(sfname) = 'farid' AND LOWER(slname) = 'hamid');