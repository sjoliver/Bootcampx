SELECT students.name as student_name, students.start_date as student_start_date, cohorts.name as cohort_name, cohorts.start_date as cohort_start_date
FROM students JOIN cohorts ON cohorts.id = cohort_id
WHERE cohorts.start_date != students.start_date
ORDER BY cohorts.start_date;