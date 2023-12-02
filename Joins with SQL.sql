CREATE TABLE Student_table(
    StudentID INT PRIMARY key not NULL,
    StudentName VARCHAR(50) not NULL,
    Age INT NOT NULL 
);

CREATE TABLE Professor_Table(
	ProfessorID INT PRIMARY KEY NOT NULL,
	Professor_name VARCHAR (15) NOT NULL,
	Professor_qualification VARCHAR (50) NOT NULL
);

 CREATE TABLE course_Table(
    CoursesID INT PRIMARY KEY NOT NULL,
    CourseName VARCHAR(40) NOT NULL,
    DeptID INT NOT NULL 
 );


INSERT INTO course_Table VALUES
(1, 'Psychology', 01),
(2, 'Economics', 02),
(3, 'Demography', 03),
(4, 'Sociology', 04),
(6, 'Computer', 05),
(7, 'Chemistry', 06),
(9, 'Literature', 07);


INSERT INTO Professor_table VALUES
(1, 'Mr Ehiz', 'PHD Data Science'),
(3, 'Mr Samuel', 'PHD Mathimatics'),
(5, 'Mr Tito', 'PHD Business Technology'),
(6, 'Mr Mojeed', 'PHD Statistics'),
(8, 'Mr Tobi', 'PHD Medical Science'),
(10, 'Miss Uju', 'PHD Chemistry');


INSERT into Student_table values
(1, 'Samuel', 19),
(2,'Ehiz', 39),
(3, 'Lekan', 25),
(4, 'Tito', 26),
(7, 'Obianuju', 24),
(8, 'Alex', 29),
(9, 'Mojeed', 23),
(10,'Hameed', 32);


SELECT * FROM Student_table
SELECT * FROM Professor_table
SELECT * FROM course_Table

SELECT * FROM Professor_Table
LEFT JOIN course_Table ON course_Table.CoursesID = Professor_Table.ProfessorID

SELECT * FROM Professor_Table
RIGHT JOIN course_Table ON course_Table.CoursesID = Professor_Table.ProfessorID

SELECT * FROM Professor_Table 
INNER JOIN course_table on course_Table.CoursesID = Professor_table.ProfessorID

SELECT * FROM Professor_Table
FULL OUTER JOIN course_Table ON course_Table.CoursesID = Professor_Table.ProfessorID


------------------------ CLASS WORK ------------
-- Join the Professor and the student table such that no null value is returned
SELECT * FROM Professor_Table
INNER JOIN Student_table ON Professor_Table.ProfessorID = Student_table.StudentID

-- Join the student and course table such that that only the course table carries null values 
SELECT * FROM Student_table
LEFT JOIN course_Table ON Student_table.StudentID = course_Table.CoursesID

-- Join the course and professor such that only professor table carries null value 
SELECT * FROM course_Table
LEFT JOIN Professor_Table on course_Table.CoursesID = Professor_Table.ProfessorID

-- Join the course and student table such that none of the tables have a null value 
SELECT * FROM course_Table
INNER JOIN Student_table on Student_table.StudentID = course_Table.CoursesID

-- Join the professor and course table such that only course table has null values 
SELECT * FROM Professor_Table
LEFT JOIN course_Table on course_Table.CoursesID = Professor_Table.ProfessorID

-- Join all the 3 tables together regardless of null values 
SELECT * FROM Professor_Table
FULL OUTER JOIN Student_table on Student_table.StudentID = Professor_Table.ProfessorID
FULL OUTER JOIN course_Table on course_Table.CoursesID = Professor_Table.ProfessorID

-- Join all Professor and  all course table regardless of the null in them 
select * FROM Professor_Table
FULL OUTER JOIN course_Table on course_Table.CoursesID = Professor_Table.ProfessorID

-- Join the 3 columns such that none of them has a null value
select * FROM Professor_Table
INNER JOIN course_Table on course_Table.CoursesID = Professor_Table.ProfessorID
INNER JOIN Student_table on Student_table.StudentID = Professor_Table.ProfessorID
