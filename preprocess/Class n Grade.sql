DROP TABLE Grade CASCADE CONSTRAINTS;
DROP TABLE Class CASCADE CONSTRAINTS;

CREATE TABLE Class (
    ClassID INT PRIMARY KEY,
    ClassName VARCHAR(50) NOT NULL
);

CREATE TABLE Grade (
    StudentID INT PRIMARY KEY,
    ClassID INT,
    StudentName VARCHAR(50) NOT NULL,
    Score INT,
    FOREIGN KEY (ClassID) REFERENCES Class(ClassID)
);

INSERT INTO Class (ClassID, ClassName) VALUES (1, 'Math');
INSERT INTO Class (ClassID, ClassName) VALUES (2, 'History');
INSERT INTO Class (ClassID, ClassName) VALUES (3, 'Science');
INSERT INTO Class (ClassID, ClassName) VALUES (4, 'English');
INSERT INTO Class (ClassID, ClassName) VALUES (5, 'Physics');
INSERT INTO Class (ClassID, ClassName) VALUES (6, 'Chemistry');
INSERT INTO Class (ClassID, ClassName) VALUES (7, 'Biology');
INSERT INTO Class (ClassID, ClassName) VALUES (8, 'Computer Science');
INSERT INTO Class (ClassID, ClassName) VALUES (9, 'Physical Education');
INSERT INTO Class (ClassID, ClassName) VALUES (10, 'Art');

INSERT INTO Grade (StudentID, ClassID, StudentName, Score) VALUES (1, 1, 'Adam Shahree', 85);
INSERT INTO Grade (StudentID, ClassID, StudentName, Score) VALUES (2, 1, 'Zahra Othman', 92);
INSERT INTO Grade (StudentID, ClassID, StudentName, Score) VALUES (3, 2, 'Jannah Amri', 78);
INSERT INTO Grade (StudentID, ClassID, StudentName, Score) VALUES (4, 2, 'Haziq Iskandar', 88);
INSERT INTO Grade (StudentID, ClassID, StudentName, Score) VALUES (5, 3, 'Thaqif Naufal', 95);
INSERT INTO Grade (StudentID, ClassID, StudentName, Score) VALUES (6, 3, 'Diana Rahim', 80);
INSERT INTO Grade (StudentID, ClassID, StudentName, Score) VALUES (7, 4, 'Arief Rahman', 75);
INSERT INTO Grade (StudentID, ClassID, StudentName, Score) VALUES (8, 4, 'Hanif Mokhtar', 90);
INSERT INTO Grade (StudentID, ClassID, StudentName, Score) VALUES (9, 5, 'Harris Malik', 87);
INSERT INTO Grade (StudentID, ClassID, StudentName, Score) VALUES (10, 5, 'Hannah Amri', 93);
