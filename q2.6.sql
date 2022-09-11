SELECT COUNT(*)
FROM departments, majorsln, students, enrolled, courses 
WHERE courses.name = "CSC275" 
AND departments.name = "CS"
AND departments.id = majorsln.dept_id
AND majorsln.student_id=students.id 
AND students.id = enrolled.student_id 
AND enrolled.course_crn = courses.crn;
