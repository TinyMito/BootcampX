SELECT students.name AS student, AVG(asgsub.duration) AS average_assignment_duration, AVG(asg.duration) AS average_estimated_duration
FROM students
JOIN assignment_submissions asgsub ON asgsub.student_id = students.id
JOIN assignments asg ON asg.id = asgsub.assignment_id
GROUP BY students.name, students.end_date
HAVING students.end_date IS NULL AND AVG(asgsub.duration) <= AVG(asg.duration)
ORDER BY 2 asc;