select * from payment
where payment.type_id = 3;

select * from mark
where mark.subject_id = 1;

select * from (student right join payment on student.id = payment.student_id)
where payment.type_id = 2;

select * from (student right join mark on student.id = mark.student_id)
where mark.subject_id = 6;
