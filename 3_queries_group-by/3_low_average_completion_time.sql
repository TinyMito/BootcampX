SELECT students.name AS student, AVG(asg.duration) AS average_assignment_duration
FROM students
JOIN assignment_submissions asg ON asg.student_id = students.id
GROUP BY students.name, students.end_date
HAVING students.end_date IS NULL
ORDER BY 2 desc;