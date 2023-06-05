SELECT name, email, phone
FROM students
WHERE github IS NULL
ORDER BY cohort_id;