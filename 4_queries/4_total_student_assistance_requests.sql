SELECT COUNT(*) AS total_assistances, students.name
FROM students
JOIN assistance_requests asr ON asr.student_id = students.id
WHERE students.name = 'Elliot Dickinson'
GROUP BY students.name; 