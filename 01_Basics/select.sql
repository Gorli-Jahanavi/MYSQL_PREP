-- ============================
-- Topic: SELECT Queries
-- ============================

USE college;

-- Select all columns from the table
SELECT * FROM students; --SELECT * → Fetches all columns

-- Select specific columns
SELECT name, age FROM students;

-- Select students from a specific city
SELECT * FROM students
WHERE city = 'Delhi';  --WHERE → Filters rows (VERY IMPORTANT)

-- Select students with age greater than 20
SELECT * FROM students
WHERE age > 20;

-- Select students with age between 20 and 22
SELECT * FROM students
WHERE age BETWEEN 20 AND 22; --BETWEEN → Range filtering

-- Select students whose name starts with 'A'
SELECT * FROM students
WHERE name LIKE 'A%';  --LIKE 'A%' → Pattern matching  , % → any number of characters


-- Example to run
-- Create a database
CREATE DATABASE college;
USE college;
CREATE TABLE students (
    student_id INT,
    name VARCHAR(50),
    age INT,
    city VARCHAR(50)
);
DESC students;
-- DESC students shows
-- | Field      | Type        | Null | Key |
-- | ---------- | ----------- | ---- | --- |
-- | student_id | int         | YES  |     |
-- | name       | varchar(50) | YES  |     |
-- | age        | int         | YES  |     |
-- | city       | varchar(50) | YES  |     |

INSERT INTO students (student_id, name, age, city)
VALUES
(1, 'Amit', 20, 'Delhi'),
(2, 'Riya', 21, 'Mumbai'),
(3, 'Rahul', 22, 'Bangalore'),
(4, 'Sneha', 20, 'Chennai'),
(5, 'Anjali', 23, 'Delhi');
SELECT * FROM students;
-- the SELECT * FROM students; shows
-- | student_id | name   | age | city      |
-- | ---------- | ------ | --- | --------- |
-- | 1          | Amit   | 20  | Delhi     |
-- | 2          | Riya   | 21  | Mumbai    |
-- | 3          | Rahul  | 22  | Bangalore |
-- | 4          | Sneha  | 20  | Chennai   |
-- | 5          | Anjali | 23  | Delhi     |

SELECT name, age FROM students;
-- it shows only name and age columns
--| name   | age |
--| ------ | --- |
--| Amit   | 20  |
--| Riya   | 21  |
--| Rahul  | 22  |
--| Sneha  | 20  |
--| Anjali | 23  |

SELECT * FROM students
WHERE city = 'Delhi';
--Shows students from Delhi only
--| student_id | name   | age | city  |
--| ---------- | ------ | --- | ----- |
--| 1          | Amit   | 20  | Delhi |
--| 5          | Anjali | 23  | Delhi |

SELECT * FROM students
WHERE age > 20;
--Shows students older than 20
--| student_id | name   | age | city      |
--| ---------- | ------ | --- | --------- |
--| 2          | Riya   | 21  | Mumbai    |
--| 3          | Rahul  | 22  | Bangalore |
--| 5          | Anjali | 23  | Delhi     |

SELECT * FROM students
WHERE age BETWEEN 20 AND 22;
-- BETWEEN is inclusive (20 and 22 included)
--| student_id | name  | age | city      |
--| ---------- | ----- | --- | --------- |
--| 1          | Amit  | 20  | Delhi     |
--| 2          | Riya  | 21  | Mumbai    |
--| 3          | Rahul | 22  | Bangalore |
--| 4          | Sneha | 20  | Chennai   |

SELECT * FROM students
WHERE name LIKE 'A%';
--'A%' means name starts with A
--| student_id | name   | age | city  |
--| ---------- | ------ | --- | ----- |
--| 1          | Amit   | 20  | Delhi |
--| 5          | Anjali | 23  | Delhi |




