
INT                           -- Whole Numbers
DECIMAL(M,N)                  -- Decimal Numbers - Exact Value(ex DECIMAL(10,4) : store a dec numb with 10 digits 4 are coming after dec place  )
VARCHAR(l)                    -- String of text of length l
BLOB                          -- Binary Large Object, Stores large data
DATE                          -- 'YYYY-MM-DD'
TIMESTAMP                     -- 'YYYY-MM-DD HH:MM:SS' - used for recording events


------- Creating tables
CREATE TABLE student (
  student_id INT PRIMARY KEY,
  name VARCHAR(40),
  major VARCHAR(40)
  -- PRIMARY KEY(student_id)
);

DESCRIBE student; -- show what we created 
DROP TABLE student; --  drop = remove  table
ALTER TABLE student ADD gpa DECIMAL; -- adding en extra column 
ALTER TABLE student DROP COLUMN gpa; -- remove column 

------- Inserting Data

INSERT INTO student(student_id,name) VALUES(1,'jack')

INSERT INTO student VALUES(1, 'Jack', 'Biology');
INSERT INTO student VALUES(2, 'Kate', 'Sociology');
INSERT INTO student(student_id, name) VALUES(3, 'Claire');
INSERT INTO student VALUES(4, 'Jack', 'Biology');
INSERT INTO student VALUES(5, 'Mike', 'Computer Science');


------- Constraints
CREATE TABLE student (
  student_id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(40) NOT NULL,
  -- name VARCHAR(40) UNIQUE,
  major VARCHAR(40) DEFAULT 'undecided',
);


------- Update & Delete
DELETE FROM student;

DELETE FROM student
WHERE student_id = 4;

DELETE FROM student
WHERE major = 'Sociology' AND name = 'Kate';

UPDATE student
SET major = 'Undecided';

UPDATE student
SET name = 'Johnny'
WHERE student_id = 4;

UPDATE student
SET major = 'Biological Sciences'
WHERE major = 'Biology';

UPDATE student
SET major = 'Biosociology'
WHERE major = 'Biology' OR major = 'sociology'

UPDATE student
SET major = 'Undecided', name = 'Tom'
WHERE student_id = 4;

------- Basic Queries


SELECT *
FROM student;

SELECT student.name, student.major
FROM student;
ORDER BY name DESC -- order in descending order 
LIMIT 2 -- get only 2 / set a limit 

SELECT *
FROM student
WHERE name = 'Jack';
-- comparaison <,>, <=, >=, =, <> , AND , OR 
SELECT *
FROM student
WHERE student_id > 2;

SELECT *
FROM student
WHERE major = 'Biology' AND student_id > 1;

WHERE major IN ('Biology', 'Chemistry ')







