SELECT cohorts.name AS cohort, COUNT(asg.*) AS total_submissions
FROM students
JOIN cohorts ON cohorts.id = students.cohort_id
JOIN assignment_submissions asg ON asg.student_id = students.id
GROUP BY cohorts.name
ORDER BY 2 desc;