CREATE TABLE employee (ID integer,NAME varchar(20),AGE integer,SALARY integer);
INSERT INTO employee VALUES (1, 'A', 20,45000);
INSERT INTO employee VALUES (2, 'B', 21,50000);
INSERT INTO employee VALUES (3, 'C', 22,60000);
INSERT INTO employee VALUES (4, 'D', 23,70000);
INSERT INTO employee VALUES (5, 'E', 24,45000);
INSERT INTO employee VALUES (6, 'F', 25,50000);
INSERT INTO employee VALUES (7, 'G', 26,60000);
INSERT INTO employee VALUES (8, 'H', 27,70000);
INSERT INTO employee VALUES (9, 'I', 28,60000);
INSERT INTO employee VALUES (10,'J', 29,70000);
SELECT * FROM employee;
ALTER TABLE employee ADD POSITION varchar(50);
INSERT INTO employee VALUES (1, 'A', 20,45000,'Employee');
INSERT INTO employee VALUES (2, 'B', 21,50000,'Team Lead');
INSERT INTO employee VALUES (3, 'C', 22,60000,'Personal Assistant');
INSERT INTO employee VALUES (4, 'D', 23,70000,'HR');
INSERT INTO employee VALUES (5, 'E', 24,45000,'Employee');
INSERT INTO employee VALUES (6, 'F', 25,50000,'Team Lead');
INSERT INTO employee VALUES (7, 'G', 26,60000,'Personal Assistant');
INSERT INTO employee VALUES (8, 'H', 27,70000,'HR');
INSERT INTO employee VALUES (9, 'I', 28,60000,'Personal Assistant');
INSERT INTO employee VALUES (10,'J', 29,70000,'HR');
SELECT * FROM employee;
DELETE FROM employee where id=10;
SELECT * FROM employee;
SELECT * FROM employee where id between 2 and 5;
SELECT * FROM employee;
UPDATE employee SET ID=11 where Name='I';
SELECT * FROM employee;
SELECT * FROM employee where Name in('A','B','C');
SELECT * from employee order by AGE desc;
SELECT * from employee order by AGE ;
SELECT COUNT(*)FROM employee where POSITION='HR';
SELECT avg(AGE) from employee;
SELECT sum(AGE) from employee;
CREATE TABLE students(StuRN integer,StuNAME varchar(20),StuAGE integer);
INSERT INTO students VALUES (1, 'Arun', 17);
INSERT INTO students VALUES (2, 'Bala', 21);
INSERT INTO students VALUES (3, 'Caesar', 19);
INSERT INTO students VALUES (4, 'Dinesh', 20);
SELECT * FROM students;
CREATE TABLE studentcourse(courseid integer,StuRN integer);
INSERT INTO studentcourse VALUES (1,1);
INSERT INTO studentcourse VALUES (2,2);
INSERT INTO studentcourse VALUES (3,3);
INSERT INTO studentcourse VALUES (4,4);
SELECT * FROM studentcourse;
SELECT studentcourse.courseid, students.StuNAME, students.StuAGE FROM students
INNER JOIN studentcourse
ON students.StuRN = studentcourse.StuRN;

SELECT students.StuNAME,studentcourse.courseid 
FROM students
LEFT JOIN studentcourse 
ON studentcourse.StuRN = students.StuRN;

SELECT students.StuNAME,studentcourse.courseid 
FROM students
RIGHT JOIN studentcourse 
ON studentcourse.StuRN = students.StuRN;

SELECT students.StuNAME,studentcourse.courseid 
FROM students
FULL JOIN studentcourse 
ON studentcourse.StuRN = students.StuRN;
