delete from mark
where student_id in (
    select student_id
    from student
    where group > 4
    );
delete from payment
where student_id in (
    select student_id
    from student
    where group > 4
    );

delete from student
where group > 4;

delete from payment
where payment.id = (select paymenttype.id from paymenttype where paymenttype.name = 'DAILY');

delete from paymenttype
where paymenttype.name = 'DAILY';

delete from mark where mark.mark < 7;