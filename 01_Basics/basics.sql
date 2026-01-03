-- ============================
-- Topic: MySQL Basics
-- ============================

-- Create a database
CREATE DATABASE college;

-- Show all databases
SHOW DATABASES;

-- Select the database to work with
USE college;

-- Show current database
SELECT DATABASE();

-- --------------------------------
-- Drop database (DANGER)
-- --------------------------------
-- DROP DATABASE college;
-- This command permanently deletes:
-- 1. The database
-- 2. All tables inside it
-- 3. All stored data
-- There is NO undo operation
-- Use only when you are 100% sure
