select * from payment
where amount > 500 or amount = 500;

select * from student
where year(current_date()) - year(student.birthday) > 20;

select * from Student
where group = 10 and year(current_date()) - year(student.birthday) < 20;

select * from Student
where name = 'Mike' or group  between 4 and 6;

select * from Payment
where month(current_date()) - month(payment.payment_date) > 8;

select * from Student
where student.name like 'A%';

select * from Student
where (student.name = 'Roxi' and student.group = 4) or (student.name = 'Tallie' and group_ = 9);


