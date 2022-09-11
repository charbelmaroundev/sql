SELECT * 
FROM courses
WHERE courses.start_time =  (SELECT MIN(courses.start_time) FROM courses);
