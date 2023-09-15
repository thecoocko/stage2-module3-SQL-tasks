select * from payment where amount > 500 or amount = 500;

select * from student WHERE DATEDIFF('YEAR', birthday, CURRENT_DATE) > 20;

select * from Student WHERE DATEDIFF('YEAR', birthday, CURRENT_DATE) < 20   AND groupnumber = 10;

select * from Student where name = 'Mike' or groupnumber  between 4 and 6;

select * from Payment where payment_date >= DATEADD(MONTH, -8, CURRENT_DATE);

select * from Student where student.name like 'A%';

select * from Student where (student.name = 'Roxi' and student.groupnumber = 4) or (student.name = 'Tallie' and groupnumber = 9);


SELECT * FROM Payment WHERE amount >= 500;
