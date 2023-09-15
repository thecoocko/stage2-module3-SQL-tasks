DELETE FROM mark
WHERE student_id IN (
    SELECT student_id
    FROM student
    WHERE groupnumber > 4
    );

DELETE FROM payment
WHERE student_id IN (
    SELECT student_id
    FROM student
    WHERE groupnumber > 4
    );

DELETE FROM student
WHERE groupnumber > 4;

DELETE FROM student
WHERE id IN (
    SELECT DISTINCT student.id
    FROM student
             JOIN mark ON student.id = mark.student_id
    WHERE mark < 4
    );

DELETE FROM payment
WHERE id IN (
    SELECT id
    FROM paymenttype
    WHERE name = 'DAILY'
    );

DELETE FROM paymenttype
WHERE name = 'DAILY';

DELETE FROM mark
WHERE mark < 7;

