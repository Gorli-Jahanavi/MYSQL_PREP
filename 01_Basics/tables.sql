-- ============================
-- Topic: Creating Tables
-- ============================

USE college;

-- Create students table
CREATE TABLE students (
    student_id INT,
    name VARCHAR(50),
    age INT,
    city VARCHAR(50)
);

-- Check table structure
DESC students;
