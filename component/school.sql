DROP TABLE teacher CASCADE CONSTRAINTS;
DROP TABLE subject CASCADE CONSTRAINTS;
DROP TABLE class CASCADE CONSTRAINTS;
DROP TABLE grade CASCADE CONSTRAINTS;
DROP TABLE enrollment CASCADE CONSTRAINTS;
DROP TABLE student CASCADE CONSTRAINTS;

CREATE TABLE class (
    ClassID NUMBER(10), -- PK
    teachid NUMBER(10), -- FK
    cname VARCHAR(50),
    CONSTRAINT class_classID_PK PRIMARY KEY (classid),
    CONSTRAINT class_teachid_FK FOREIGN KEY (teachid) REFERENCES teacher
);

CREATE TABLE grade (
    GRADEID NUMBER(10), -- PK
    StudID NUMBER(10), -- FK
    ClassID NUMBER(10), -- FK
    subid NUMBER(10), -- FK
    grade char(2),
    CONSTRAINT grade_gradeID_PK PRIMARY KEY (GRADEID),
    CONSTRAINT grade_studid_FK FOREIGN KEY (StudentID) REFERENCES student,
    CONSTRAINT grade_classid_FK FOREIGN KEY (ClassID) REFERENCES Class,
    CONSTRAINT grade_subid_FK FOREIGN KEY (subid) REFERENCES subject
);

CREATE TABLE enrollment (
    enrollmentid NUMBER(10), -- PK
    StudID NUMBER(10), -- FK
    ClassID NUMBER(10), -- FK
    enrolldate  date,
    CONSTRAINT enrollment_enrollmentID_PK PRIMARY KEY (enrollmentid),
    CONSTRAINT enrollment_studid_FK FOREIGN KEY (StudentID) REFERENCES student,
    CONSTRAINT enrollment_classid_FK FOREIGN KEY (ClassID) REFERENCES Class
);

CREATE TABLE student (
    StudID NUMBER(10), -- PK
    ClassID NUMBER(10), -- FK
    sfname VARCHAR(50),
    slname VARCHAR(50),
    dob date,
    gender char(1),
    CONSTRAINT student_studentID_PK PRIMARY KEY (studentid),
    CONSTRAINT grade_classid_FK FOREIGN KEY (ClassID) REFERENCES Class
);

INSERT INTO class (ClassID, teachid, cname) VALUES
    (3001, 5001, 'Mathematics'),
    (3002, 5002, 'English'),
    (3003, 5003, 'Science'),
    (3004, 5004, 'History'),
    (3005, 5005, 'Computer Science'),
    (3006, 5006, 'Art'),
    (3007, 5007, 'Physical Education'),
    (3008, 5008, 'Music'),
    (3009, 5009, 'Spanish'),
    (3010, 5010, 'Physics');

INSERT INTO grade (GRADEID, StudID, ClassID, subid, grade) VALUES
    (4001, 2001, 3001, 2301, 'A'),
    (4002, 2002, 3002, 2302, 'B'),
    (4003, 2003, 3003, 2303, 'C'),
    (4004, 2004, 3004, 2304, 'A'),
    (4005, 2005, 3005, 2305, 'B'),
    (4006, 2006, 3006, 2306, 'C'),
    (4007, 2007, 3007, 2307, 'A'),
    (4008, 2008, 3008, 2308, 'B'),
    (4009, 2009, 3009, 2309, 'C'),
    (4010, 2010, 3010, 2310, 'A');

INSERT INTO enrollment (enrollmentid, StudID, ClassID, enrolldate) VALUES
    (1001, 2001, 3001, TO_DATE('2024-01-01', 'YYYY-MM-DD')),
    (1002, 2002, 3002, TO_DATE('2024-01-02', 'YYYY-MM-DD')),
    (1003, 2003, 3003, TO_DATE('2024-01-03', 'YYYY-MM-DD')),
    (1004, 2004, 3004, TO_DATE('2024-01-04', 'YYYY-MM-DD')),
    (1005, 2005, 3005, TO_DATE('2024-01-05', 'YYYY-MM-DD')),
    (1006, 2006, 3006, TO_DATE('2024-01-06', 'YYYY-MM-DD')),
    (1007, 2007, 3007, TO_DATE('2024-01-07', 'YYYY-MM-DD')),
    (1008, 2008, 3008, TO_DATE('2024-01-08', 'YYYY-MM-DD')),
    (1009, 2009, 3009, TO_DATE('2024-01-09', 'YYYY-MM-DD')),
    (1010, 2010, 3010, TO_DATE('2024-01-10', 'YYYY-MM-DD'));

INSERT INTO student (StudID, ClassID, sfname, slname, dob, gender) VALUES
    (2001, 3001, 'Muhammad', 'Ismail', TO_DATE('2000-01-01', 'YYYY-MM-DD'), 'M'),
    (2002, 3002, 'Siti', 'Rahmah', TO_DATE('2000-02-01', 'YYYY-MM-DD'), 'F'),
    (2003, 3003, 'Ahmad', 'Razak', TO_DATE('2000-03-01', 'YYYY-MM-DD'), 'M'),
    (2004, 3004, 'Nor', 'Aziz', TO_DATE('2000-04-01', 'YYYY-MM-DD'), 'F'),
    (2005, 3005, 'Farid', 'Hamid', TO_DATE('2000-05-01', 'YYYY-MM-DD'), 'M'),
    (2006, 3006, 'Zainab', 'Ibrahim', TO_DATE('2000-06-01', 'YYYY-MM-DD'), 'F'),
    (2007, 3007, 'Hakim', 'Abdullah', TO_DATE('2000-07-01', 'YYYY-MM-DD'), 'M'),
    (2008, 3008, 'Nur', 'Salleh', TO_DATE('2000-08-01', 'YYYY-MM-DD'), 'F'),
    (2009, 3009, 'Amin', 'Hassan', TO_DATE('2000-09-01', 'YYYY-MM-DD'), 'M'),
    (2010, 3010, 'Aisyah', 'Ali', TO_DATE('2000-10-01', 'YYYY-MM-DD'), 'F');