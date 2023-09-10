select * from (student left join mark on student.id = mark.student_id)
where mark.mark > (select avg(mark.mark) from mark);

SELECT student.id, student.name
FROM student
         INNER JOIN (
    SELECT student_id, MIN(mark) AS min_mark
    FROM mark
    GROUP BY student_id
) mark ON student.id = mark.student_id
WHERE mark.min_mark > 7;

select student.id, student.name from student right join payment on student.id = payment.student_id
where payment.payment_date between date('2019-01-01') and date('2019-12-31')
group by student.id, student.name
having count(*) > 1
order by student.id, student.name;