-- 1. Create and use the database
CREATE DATABASE IF NOT EXISTS SmartResourceEngine;
USE SmartResourceEngine;

-- 2. Build the Schema
CREATE TABLE Employees (Emp_ID INT PRIMARY KEY, Name VARCHAR(50));
CREATE TABLE Skills (Skill_ID INT PRIMARY KEY, Skill_Name VARCHAR(50));
CREATE TABLE Employee_Skills (Emp_ID INT, Skill_ID INT, Level INT, PRIMARY KEY (Emp_ID, Skill_ID));
CREATE TABLE Project_Requirements (Project_ID VARCHAR(10), Project_Name VARCHAR(50), Skill_ID INT, Required_Level INT);
