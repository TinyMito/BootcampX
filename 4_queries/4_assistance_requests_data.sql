SELECT teachers.name AS teacher, students.name AS student, assignments.name AS assignment, asr.completed_at - asr.started_at AS duration
FROM assistance_requests asr
JOIN teachers ON teachers.id = asr.teacher_id
JOIN students ON students.id = asr.student_id
JOIN assignments ON assignments.id = asr.assignment_id
ORDER BY duration ASC;