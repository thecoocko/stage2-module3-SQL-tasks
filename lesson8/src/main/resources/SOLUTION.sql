select * from student where birthday = (select max(birthday) from student);

select * from payment where payment.payment_date = (select max(payment.payment_date) from payment);

select avg(mark) from mark as m join subject as s on s.id = m.subject_id where s.name = 'Math';

select min(payment.amount) from (payment left join paymenttype on payment.type_id = paymenttype.id) where paymenttype.name = 'WEEKLY';
