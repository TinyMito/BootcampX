SELECT COUNT(*) AS total_assistances, teachers.name
FROM teachers
JOIN assistance_requests asr ON asr.teacher_id = teachers.id
WHERE teachers.name = 'Waylon Boehm'
GROUP BY teachers.name; 