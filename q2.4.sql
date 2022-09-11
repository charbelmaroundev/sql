SELECT courses.name 
FROM departments, majorsln, students, enrolled, courses 
WHERE departments.name = "BIF" 
AND departments.id = majorsln.dept_id
AND majorsln.student_id=students.id 
AND students.id = enrolled.student_id 
AND enrolled.course_crn = courses.crn;
