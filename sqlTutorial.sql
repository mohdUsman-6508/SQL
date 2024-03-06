USE college;

CREATE TABLE highSchool(
student_id INT PRIMARY KEY,
student_name VARCHAR(20),
major VARCHAR(20)
);

DESCRIBE highschool;
DROP TABLE highschool;

ALTER TABLE highschool ADD gpa DECIMAL(3,2);
ALTER TABLE highschool DROP gpa;

INSERT INTO highschool(student_id,student_name,major) VALUES(1,'Issac','Alchemy');
INSERT INTO highschool(student_id,student_name) VALUES(2,'Edison');
INSERT INTO highschool VALUES(3,'Einstein','Physics');
SELECT * FROM highschool;

-- Creating table with constraint(NOT NULL, UNIQUE, AUTO_INCREMENT, DEFAULT) etc.

CREATE TABLE highschool(
student_id INT AUTO_INCREMENT,
student_name VARCHAR(20) NOT NULL,
major VARCHAR(20) DEFAULT 'Chemistry',
PRIMARY KEY(student_id)
);

INSERT INTO highschool VALUES(3,'Issac','Bio');
INSERT INTO highschool(student_name) VALUES('Edison');

SELECT * FROM highschool;
SET SQL_SAFE_UPDATES=0;

UPDATE highschool 
SET student_name='Albert Einstein'
WHERE student_name='Albert';

DELETE FROM highschool
WHERE student_id=2;

SELECT student_name 
FROM highschool
ORDER BY student_name DESC;

SELECT * FROM highschool
ORDER BY major;
 
SELECT * FROM highschool
WHERE major IN('Physics','Bio');









