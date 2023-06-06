SELECT cohorts.name AS cohort, SUM(asr.completed_at - asr.started_at) AS total_duration
FROM assistance_requests asr
JOIN students ON students.id = asr.student_id
JOIN cohorts ON cohorts.id = students.cohort_id
GROUP BY cohorts.name
ORDER BY total_duration;