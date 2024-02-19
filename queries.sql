--Part 1
SHOW FIELDS FROM job;
-- Field: id, type: int
-- Field: employer, type: varchar(255)
-- Field: name, type: varchar(255)
-- Field: skills, type: varchar(255)

--Part 2
SELECT name FROM employer WHERE location = "St. Louis City";

--Part 3
DROP TABLE job;

--Part 4
--SELECT DISTINCT skill.name FROM skill
--INNER JOIN job_skills ON (skill.id = job_skills.skills_id)
--WHERE job_skills.jobs_id IS NOT NULL
--ORDER BY name ASC;

SELECT * FROM skill
INNER JOIN job_skills ON skill.id = job_skills.skills_id
WHERE job_skills.jobs_id IS NOT NULL
ORDER BY name ASC;