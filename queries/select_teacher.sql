-- select all teachers that teaches music

SELECT tfname ||' '||tlname "Teacher's name", sname "Subject name"
FROM teacher JOIN subject USING (subid)
WHERE LOWER(sname) = 'music';