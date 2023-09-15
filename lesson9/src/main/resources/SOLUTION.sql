select * from (student left join mark on student.id = mark.student_id) where mark.mark > (select avg(mark.mark) from mark)+1;

SELECT student.id, student.name FROM student INNER JOIN (SELECT student_id, MIN(mark) AS min_mark FROM mark GROUP BY student_id) as mark ON student.id = mark.student_id WHERE mark.min_mark > 7;

SELECT student.id, student.name FROM (studentbRIGHT JOIN payment ON student.id = payment.student_id) WHERE payment.payment_date BETWEEN DATE '2019-01-01' AND DATE '2019-12-31' GROUP BY student.id, student.name HAVING COUNT(*) > 1 ORDER BY student.id, student.name;