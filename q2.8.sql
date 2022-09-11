SELECT students.name, COUNT(departments.name)
FROM departments, majorsln, students
WHERE majorsln.dept_id IN (SELECT departments.id FROM departments)
AND departments.id = majorsln.dept_id
AND majorsln.student_id=students.id;
