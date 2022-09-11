SELECT *
FROM students
WHERE students.id IN (SELECT enrolled.student_id FROM enrolled);
