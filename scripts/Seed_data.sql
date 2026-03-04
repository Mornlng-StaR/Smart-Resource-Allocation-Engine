-- 1. Add Master Skills
INSERT INTO Skills VALUES (1, 'SQL'), (2, 'Python'), (3, 'PowerBI'), (4, 'ML');

-- 2. Add 10 Employees with varying scales
INSERT INTO Employees VALUES 
(101, 'Arav'), (102, 'Sara'), (103, 'John'), (104, 'Meera'), (105, 'Ryan'),
(106, 'Li'), (107, 'Arjun'), (108, 'Elena'), (109, 'Kofi'), (110, 'Priya');

-- 3. Assign Skills (Testing different scales)
INSERT INTO Employee_Skills VALUES
(101, 1, 5), (101, 2, 2), -- Arav (SQL Expert, Py Novice)
(102, 1, 4), (102, 2, 4), (102, 3, 4), (102, 4, 4), -- Sara (All-rounder)
(104, 2, 5), (104, 4, 5), -- Meera (Data Scientist)
(106, 3, 5), (106, 4, 2), -- Li (Viz Specialist)
(110, 1, 5), (110, 2, 4), (110, 3, 3); -- Priya (Strong Backend)

-- 4. Add 7 Projects
INSERT INTO Project_Requirements VALUES
('P01', 'Data Migration', 1, 5), ('P01', 'Data Migration', 2, 3),
('P02', 'ML Pipeline', 2, 5), ('P02', 'ML Pipeline', 4, 5),
('P03', 'Executive Dash', 3, 5),
('P04', 'Full Stack DS', 1, 4), ('P04', 'Full Stack DS', 2, 4), ('P04', 'Full Stack DS', 3, 4), ('P04', 'Full Stack DS', 4, 4),
('P05', 'Quick Cleanup', 1, 2), ('P05', 'Quick Cleanup', 2, 2),
('P06', 'Predictive Tool', 1, 3), ('P06', 'Predictive Tool', 2, 4), ('P06', 'Predictive Tool', 4, 4),
('P07', 'Database Audit', 1, 5);
