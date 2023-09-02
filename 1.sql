CREATE DATABASE MKK;
CREATE TABLE students (
    id INT NOT NULL PRIMARY KEY auto_increment,
    name VARCHAR(50),
    age INT,
    grade VARCHAR(2)
);
INSERT INTO students (id, name, age, grade)
VALUES (1, 'John Doe', 18, 'A');
INSERT INTO students (id, name, age, grade)
VALUES (2, 'Jane Smith', 20, 'B');
INSERT INTO students (ID,NAME,AGE,GRADE)
VALUES(3,'MUHSIN',22,'A'),
	  (4,'KISHORE',23,'C'),
	  (5,'JINAS',20,'A');
SELECT COUNT(*) AS total_students FROM students;
SELECT AVG(age) AS average_age FROM students;
SELECT MAX(age) AS max_age FROM students;

DROP DATABASE MM;
SELECT * FROM students;

CREATE table JOBS(
JOB_ID int PRIMARY KEY NOT NULL auto_increment,
DESIGINATION VARCHAR(50),
LOCATION VARCHAR(50),
SALARY INT
);
insert INTO JOBS (JOB_ID,DESIGINATION,LOCATION,SALARY)
VALUES (10,'ACCOUNTANT','DELHI',30000),
       (11,'MANAGER','PUNE',40000),
       (12,'MANAGER','DELHI',45000),
       (15,'CLERK','PONDI',10000);