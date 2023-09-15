select * from payment where amount > 500 or amount = 500;

select * from student where year(current_date()) - year(student.birthday) > 20;

select * from Student where groupnumber = 10 and year(current_date()) - year(student.birthday) < 20;

select * from Student where name = 'Mike' or groupnumber  between 5 and 7;

select * from Payment where month(current_date()) - month(payment.payment_date) > 8;

select * from Student where student.name like 'A%';

select * from Student where (student.name = 'Roxi' and student.groupnumber = 4) or (student.name = 'Tallie' and groupnumber = 9);


