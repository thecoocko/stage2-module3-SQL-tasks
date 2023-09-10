select * from student
where birthday = (select max(birthday) from student);

select * from payment
where payment.payment_date = (select max(payment.payment_date) from payment);

select avg(mark) from mark
where mark.subject_id = 6;

select min(payment.amount) from (payment left join paymenttype on payment.type_id = paymenttype.id)
where paymenttype.name = 'WEEKLY';
