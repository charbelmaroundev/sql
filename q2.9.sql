SELECT departments.name, COUNT(*)
FROM departments, students
WHERE departments.id =  students.id
GROUP by departments.id;
