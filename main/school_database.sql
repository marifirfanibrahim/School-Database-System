-- create and fill table teacher, subject, class, grade, grade, enrollment, and student

DROP TABLE teacher CASCADE CONSTRAINTS;
DROP TABLE subject CASCADE CONSTRAINTS;
DROP TABLE class CASCADE CONSTRAINTS;
DROP TABLE grade CASCADE CONSTRAINTS;
DROP TABLE enrollment CASCADE CONSTRAINTS;
DROP TABLE student CASCADE CONSTRAINTS;

CREATE TABLE subject (
    subid NUMBER(10), -- PK
    sname VARCHAR(20),
    CONSTRAINT subject_subid_PK PRIMARY KEY (subid)
);

CREATE TABLE teacher (
    teachid NUMBER(10), -- PK
    subid NUMBER(10), -- FK
    tfname VARCHAR(20),
    tlname VARCHAR(20),
    CONSTRAINT teacher_teachid_PK PRIMARY KEY (teachid),
    CONSTRAINT teacher_subid_FK FOREIGN KEY (subid) REFERENCES subject
);

CREATE TABLE class (
    ClassID NUMBER(10), -- PK
    teachid NUMBER(10), -- FK
    cname VARCHAR(20),
    CONSTRAINT class_classID_PK PRIMARY KEY (classid),
    CONSTRAINT class_teachid_FK FOREIGN KEY (teachid) REFERENCES teacher
);

CREATE TABLE student (
    StudID NUMBER(10), -- PK
    ClassID NUMBER(10), -- FK
    sfname VARCHAR(20),
    slname VARCHAR(20),
    dob date,
    gender char(1),
    CONSTRAINT student_studentID_PK PRIMARY KEY (StudID),
    CONSTRAINT student_classid_FK FOREIGN KEY (ClassID) REFERENCES Class
);

CREATE TABLE grade (
    GRADEID NUMBER(10), -- PK
    StudID NUMBER(10), -- FK
    ClassID NUMBER(10), -- FK
    subid NUMBER(10), -- FK
    grade char(2),
    CONSTRAINT grade_gradeID_PK PRIMARY KEY (GRADEID),
    CONSTRAINT grade_studid_FK FOREIGN KEY (StudID) REFERENCES student,
    CONSTRAINT grade_classid_FK FOREIGN KEY (ClassID) REFERENCES Class,
    CONSTRAINT grade_subid_FK FOREIGN KEY (subid) REFERENCES subject
);

CREATE TABLE enrollment (
    enrollmentid NUMBER(10), -- PK
    StudID NUMBER(10), -- FK
    ClassID NUMBER(10), -- FK
    enrolldate  date,
    CONSTRAINT enrollment_enrollmentID_PK PRIMARY KEY (enrollmentid),
    CONSTRAINT enrollment_studid_FK FOREIGN KEY (StudID) REFERENCES student,
    CONSTRAINT enrollment_classid_FK FOREIGN KEY (ClassID) REFERENCES Class
);

-- insert into subject
INSERT INTO subject (subid, sname) VALUES (2301, 'Mathematics');
INSERT INTO subject (subid, sname) VALUES (2302, 'English');
INSERT INTO subject (subid, sname) VALUES (2303, 'Science');
INSERT INTO subject (subid, sname) VALUES (2304, 'History');
INSERT INTO subject (subid, sname) VALUES (2305, 'Computer Science');
INSERT INTO subject (subid, sname) VALUES (2306, 'Art');
INSERT INTO subject (subid, sname) VALUES (2307, 'Physical Education');
INSERT INTO subject (subid, sname) VALUES (2308, 'Music');
INSERT INTO subject (subid, sname) VALUES (2309, 'Spanish');
INSERT INTO subject (subid, sname) VALUES (2310, 'Physics');


-- insert into teacher
INSERT INTO teacher (teachid, subid, tfname, tlname) VALUES (5001, 2301, 'Nurul', 'Aisyah');
INSERT INTO teacher (teachid, subid, tfname, tlname) VALUES (5002, 2302, 'Muhammad', 'Syafiq');
INSERT INTO teacher (teachid, subid, tfname, tlname) VALUES (5003, 2303, 'Tan', 'Siew');
INSERT INTO teacher (teachid, subid, tfname, tlname) VALUES (5004, 2304, 'Siti', 'Nurhaliza');
INSERT INTO teacher (teachid, subid, tfname, tlname) VALUES (5005, 2305, 'Ahmad', 'Fauzi');
INSERT INTO teacher (teachid, subid, tfname, tlname) VALUES (5006, 2306, 'Raja', 'Azlan');
INSERT INTO teacher (teachid, subid, tfname, tlname) VALUES (5007, 2307, 'Fatimah', 'Rahman');
INSERT INTO teacher (teachid, subid, tfname, tlname) VALUES (5008, 2308, 'Nur', 'Hidayah');
INSERT INTO teacher (teachid, subid, tfname, tlname) VALUES (5009, 2309, 'Rani', 'Devi');
INSERT INTO teacher (teachid, subid, tfname, tlname) VALUES (5010, 2310, 'Dzulkifli', 'Razak');


-- insert into class
INSERT INTO class (ClassID, teachid, cname) VALUES (3001, 5001, 'MATH101');
INSERT INTO class (ClassID, teachid, cname) VALUES (3002, 5002, 'ENG202');
INSERT INTO class (ClassID, teachid, cname) VALUES (3003, 5003, 'SCI300');
INSERT INTO class (ClassID, teachid, cname) VALUES (3004, 5004, 'UNGS100');
INSERT INTO class (ClassID, teachid, cname) VALUES (3005, 5005, 'CSCI200');
INSERT INTO class (ClassID, teachid, cname) VALUES (3006, 5006, 'AED400');
INSERT INTO class (ClassID, teachid, cname) VALUES (3007, 5007, 'EDU500');
INSERT INTO class (ClassID, teachid, cname) VALUES (3008, 5008, 'AED300');
INSERT INTO class (ClassID, teachid, cname) VALUES (3009, 5009, 'SPSH100');
INSERT INTO class (ClassID, teachid, cname) VALUES (3010, 5010, 'SCI100');


-- insert into student
INSERT INTO student (StudID, ClassID, sfname, slname, dob, gender) VALUES (2001, 3001, 'Muhammad', 'Ismail', TO_DATE('2000-01-01', 'YYYY-MM-DD'), 'M');
INSERT INTO student (StudID, ClassID, sfname, slname, dob, gender) VALUES (2002, 3002, 'Siti', 'Rahmah', TO_DATE('2000-02-01', 'YYYY-MM-DD'), 'F');
INSERT INTO student (StudID, ClassID, sfname, slname, dob, gender) VALUES (2003, 3003, 'Ahmad', 'Razak', TO_DATE('2000-03-01', 'YYYY-MM-DD'), 'M');
INSERT INTO student (StudID, ClassID, sfname, slname, dob, gender) VALUES (2004, 3004, 'Nor', 'Aziz', TO_DATE('2000-04-01', 'YYYY-MM-DD'), 'F');
INSERT INTO student (StudID, ClassID, sfname, slname, dob, gender) VALUES (2005, 3005, 'Farid', 'Hamid', TO_DATE('2000-05-01', 'YYYY-MM-DD'), 'M');
INSERT INTO student (StudID, ClassID, sfname, slname, dob, gender) VALUES (2006, 3006, 'Zainab', 'Ibrahim', TO_DATE('2000-06-01', 'YYYY-MM-DD'), 'F');
INSERT INTO student (StudID, ClassID, sfname, slname, dob, gender) VALUES (2007, 3007, 'Hakim', 'Abdullah', TO_DATE('2000-07-01', 'YYYY-MM-DD'), 'M');
INSERT INTO student (StudID, ClassID, sfname, slname, dob, gender) VALUES (2008, 3008, 'Nur', 'Salleh', TO_DATE('2000-08-01', 'YYYY-MM-DD'), 'F');
INSERT INTO student (StudID, ClassID, sfname, slname, dob, gender) VALUES (2009, 3009, 'Amin', 'Hassan', TO_DATE('2000-09-01', 'YYYY-MM-DD'), 'M');
INSERT INTO student (StudID, ClassID, sfname, slname, dob, gender) VALUES (2010, 3010, 'Aisyah', 'Ali', TO_DATE('2000-10-01', 'YYYY-MM-DD'), 'F');

-- insert into grade
INSERT INTO grade (GRADEID, StudID, ClassID, subid, grade) VALUES (4001, 2001, 3001, 2301, 'A');
INSERT INTO grade (GRADEID, StudID, ClassID, subid, grade) VALUES (4002, 2002, 3002, 2302, 'B');
INSERT INTO grade (GRADEID, StudID, ClassID, subid, grade) VALUES (4003, 2003, 3003, 2303, 'C');
INSERT INTO grade (GRADEID, StudID, ClassID, subid, grade) VALUES (4004, 2004, 3004, 2304, 'A');
INSERT INTO grade (GRADEID, StudID, ClassID, subid, grade) VALUES (4005, 2005, 3005, 2305, 'B');
INSERT INTO grade (GRADEID, StudID, ClassID, subid, grade) VALUES (4006, 2006, 3006, 2306, 'C');
INSERT INTO grade (GRADEID, StudID, ClassID, subid, grade) VALUES (4007, 2007, 3007, 2307, 'A');
INSERT INTO grade (GRADEID, StudID, ClassID, subid, grade) VALUES (4008, 2008, 3008, 2308, 'B');
INSERT INTO grade (GRADEID, StudID, ClassID, subid, grade) VALUES (4009, 2009, 3009, 2309, 'C');
INSERT INTO grade (GRADEID, StudID, ClassID, subid, grade) VALUES (4010, 2010, 3010, 2310, 'A');


-- insert into enrollment
INSERT INTO enrollment (enrollmentid, StudID, ClassID, enrolldate) VALUES (1001, 2001, 3001, TO_DATE('2024-01-01', 'YYYY-MM-DD'));
INSERT INTO enrollment (enrollmentid, StudID, ClassID, enrolldate) VALUES (1002, 2002, 3002, TO_DATE('2024-01-02', 'YYYY-MM-DD'));
INSERT INTO enrollment (enrollmentid, StudID, ClassID, enrolldate) VALUES (1003, 2003, 3003, TO_DATE('2024-01-03', 'YYYY-MM-DD'));
INSERT INTO enrollment (enrollmentid, StudID, ClassID, enrolldate) VALUES (1004, 2004, 3004, TO_DATE('2024-01-04', 'YYYY-MM-DD'));
INSERT INTO enrollment (enrollmentid, StudID, ClassID, enrolldate) VALUES (1005, 2005, 3005, TO_DATE('2024-01-05', 'YYYY-MM-DD'));
INSERT INTO enrollment (enrollmentid, StudID, ClassID, enrolldate) VALUES (1006, 2006, 3006, TO_DATE('2024-01-06', 'YYYY-MM-DD'));
INSERT INTO enrollment (enrollmentid, StudID, ClassID, enrolldate) VALUES (1007, 2007, 3007, TO_DATE('2024-01-07', 'YYYY-MM-DD'));
INSERT INTO enrollment (enrollmentid, StudID, ClassID, enrolldate) VALUES (1008, 2008, 3008, TO_DATE('2024-01-08', 'YYYY-MM-DD'));
INSERT INTO enrollment (enrollmentid, StudID, ClassID, enrolldate) VALUES (1009, 2009, 3009, TO_DATE('2024-01-09', 'YYYY-MM-DD'));
INSERT INTO enrollment (enrollmentid, StudID, ClassID, enrolldate) VALUES (1010, 2010, 3010, TO_DATE('2024-01-10', 'YYYY-MM-DD'));