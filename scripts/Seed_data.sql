-- 1. Populate Employees (10 Total)
INSERT INTO Employees (Emp_ID, Name) VALUES 
(101, 'Arav'), (102, 'Sara'), (103, 'John'), (104, 'Meera'), (105, 'Ryan'),
(106, 'Li'), (107, 'Arjun'), (108, 'Elena'), (109, 'Kofi'), (110, 'Priya');

-- 2. Populate Employee Skills (Varied Scales 1-5)
INSERT INTO Employee_Skills (Emp_ID, Skill_ID, Level) VALUES
(101, 1, 5), (101, 2, 2), (101, 3, 1), -- Arav: SQL Expert, Python Novice
(102, 1, 4), (102, 2, 4), (102, 3, 4), (102, 4, 4), -- Sara: Senior All-rounder
(103, 1, 3), (103, 2, 3), (103, 3, 2), -- John: Mid-level
(104, 2, 5), (104, 4, 5), (104, 1, 2), -- Meera: Data Scientist (Python/ML)
(105, 1, 5), (105, 2, 5), (105, 3, 2), -- Ryan: Backend Specialist
(106, 3, 5), (106, 4, 2), (106, 1, 1), -- Li: Visualization Pro
(107, 1, 4), (107, 3, 5), -- Arjun: BI Analyst
(108, 1, 2), (108, 2, 2), (108, 3, 2), -- Elena: Junior Trainee
(109, 2, 4), (109, 4, 5), -- Kofi: ML Researcher
(110, 1, 5), (110, 2, 4), (110, 3, 3); -- Priya: SQL/Python Power User

-- 3. Populate 7 Project Requirements
INSERT INTO Project_Requirements (Project_ID, Project_Name, Skill_ID, Required_Level) VALUES
('P01', 'Data Migration', 1, 5), ('P01', 'Data Migration', 2, 3), -- SQL Heavy
('P02', 'ML Pipeline', 2, 5), ('P02', 'ML Pipeline', 4, 5), -- High Coding/Math
('P03', 'Executive Dash', 3, 5), ('P03', 'Executive Dash', 1, 3), -- Viz Focus
('P04', 'Full Stack DS', 1, 4), ('P04', 'Full Stack DS', 2, 4), ('P04', 'Full Stack DS', 3, 4), ('P04', 'Full Stack DS', 4, 4), -- All-rounder
('P05', 'Quick Cleanup', 1, 2), ('P05', 'Quick Cleanup', 2, 2), -- Entry-level
('P06', 'Predictive Tool', 1, 3), ('P06', 'Predictive Tool', 2, 4), ('P06', 'Predictive Tool', 4, 4), -- Balanced
('P07', 'Database Audit', 1, 5); -- Pure SQL
