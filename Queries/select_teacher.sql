-- Select all teachers that teaches music (Hanif)

SELECT tfname ||' '||tlname "Teacher's name", sname "Subject name"
FROM teacher JOIN subject USING (subid)
WHERE LOWER(sname) = 'music';