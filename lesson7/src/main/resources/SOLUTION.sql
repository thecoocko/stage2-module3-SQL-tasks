select * from mark where mark.mark > 2 order by mark.id desc;

select * from payment where payment.amount < 300 order by payment.id asc;

select * from paymenttype order by paymenttype.name;

select * from student order by student.name desc;

select * from (student left join payment on student.id = payment.student_id) where payment.amount > 1000 order by student.birthday asc;