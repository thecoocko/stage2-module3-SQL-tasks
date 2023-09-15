select * from (payment join paymenttype on payment.type_id = paymenttype.id) where paymenttype.name = 'MONTHLY';

select * from (subject inner join mark on subject.id = mark.id) where subject.name = 'Art';

select st.* from student as st join payment as p on st.id = p.student_id join paymenttype as pt on p.type_id = pt.id where pt.name = 'WEEKLY';

select * from (student right join mark on student.id = mark.student_id) join subject on subject.id = mark.subject_id where subject.name = 'Math';
