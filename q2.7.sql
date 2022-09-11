SELECT COUNT(*)
FROM departments, majorsln, students, enrolled, courses 
WHERE departments.name = "CS" 
AND enrolled.course_crn IN (SELECT courses.crn FROM courses)
AND departments.id = majorsln.dept_id
AND majorsln.student_id=students.id 
AND students.id = enrolled.student_id;
