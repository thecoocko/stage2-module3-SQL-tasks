select * from subject
                  inner join (select mark.subject_id, avg(mark.mark) as subavg from mark
                              group by mark.subject_id) as avgtemptable on subject.id = avgtemptable.subject_id
where avgtemptable.subavg > (select avg(mark.mark) from mark);

select * from student inner join payment on student.id = payment.student_id
where payment.amount < (select avg(payment.amount) from payment)

