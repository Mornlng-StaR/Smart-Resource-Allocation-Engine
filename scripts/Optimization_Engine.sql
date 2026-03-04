WITH SkillDecomposition AS (
    -- Step 1: Map every employee to every project requirement
    SELECT 
        pr.Project_ID,
        pr.Project_Name,
        e.Name AS Employee_Name,
        s.Skill_Name,
        pr.Required_Level,
        COALESCE(es.Level, 0) AS Actual_Level,
        -- Logic: Match % capped at 120
        LEAST(((COALESCE(es.Level, 0) * 1.0 / pr.Required_Level) * 100), 120) AS Match_Score,
        -- Logic: Penalty (Gap * 15)
        CASE 
            WHEN COALESCE(es.Level, 0) < pr.Required_Level 
            THEN (pr.Required_Level - COALESCE(es.Level, 0)) * 15 
            ELSE 0 
        END AS Gap_Penalty
    FROM Project_Requirements pr
    CROSS JOIN Employees e
    JOIN Skills s ON pr.Skill_ID = s.Skill_ID
    LEFT JOIN Employee_Skills es ON e.Emp_ID = es.Emp_ID AND pr.Skill_ID = es.Skill_ID
),
ScoredProfiles AS (
    -- Step 2: Aggregate scores and create the detail string
    SELECT 
        Project_ID,
        Project_Name,
        Employee_Name,
        GROUP_CONCAT(CONCAT(Skill_Name, ': ', Actual_Level, '/', Required_Level) SEPARATOR ' | ') AS Detailed_Breakdown,
        ROUND(AVG(Match_Score), 2) AS Avg_Match_Pct,
        SUM(Gap_Penalty) AS Total_Penalty,
        ROUND((AVG(Match_Score) - SUM(Gap_Penalty) + 5), 2) AS Final_Score
    FROM SkillDecomposition
    GROUP BY Project_ID, Project_Name, Employee_Name
),
RankedSelection AS (
    -- Step 3: Rank employees within each project
    SELECT *,
        RANK() OVER (PARTITION BY Project_ID ORDER BY Final_Score DESC, Avg_Match_Pct DESC) as Selection_Rank
    FROM ScoredProfiles
)
-- Step 4: Output only the #1 choice for each project
SELECT 
    Project_Name,
    Employee_Name AS Best_Fit_Resource,
    Detailed_Breakdown,
    Avg_Match_Pct,
    Total_Penalty,
    Final_Score
FROM RankedSelection
WHERE Selection_Rank = 1
ORDER BY Project_ID;
