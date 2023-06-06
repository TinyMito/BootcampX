SELECT cohorts.name AS name, AVG(asr.completed_at - asr.started_at) AS average_assistance_time
FROM assistance_requests asr
JOIN students ON students.id = asr.student_id
JOIN cohorts ON cohorts.id = students.cohort_id
GROUP BY cohorts.name
ORDER BY average_assistance_time;