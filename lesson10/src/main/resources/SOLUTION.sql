SELECT * FROM subject INNER JOIN (SELECT mark.subject_id, AVG(mark.mark) AS subavg FROM mark GROUP BY mark.subject_id) AS avgtemptable ON subject.id = avgtemptable.subject_id WHERE avgtemptable.subavg > (SELECT AVG(mark.mark) FROM mark);

SELECT * FROM student INNER JOIN payment ON student.id = payment.student_id WHERE payment.amount < (SELECT AVG(payment.amount) FROM payment);
