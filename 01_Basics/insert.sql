-- ============================
-- Topic: Insert Data into Table
-- ============================

USE college;

-- Insert single row
INSERT INTO students (student_id, name, age, city)
VALUES (1, 'Amit', 20, 'Delhi');

-- Insert multiple rows
INSERT INTO students (student_id, name, age, city) --INSERT INTO → Tells MySQL where to put data
VALUES --Numbers → no quotes   Text → single quotes
(2, 'Riya', 21, 'Mumbai'),
(3, 'Rahul', 22, 'Bangalore'),
(4, 'Sneha', 20, 'Chennai');
