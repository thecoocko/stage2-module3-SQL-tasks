insert into Student  values("John", '2018-02-21',1),("Chris", '2018-02-21', 1),("Carl", '2018-02-21', 1),("Oliver", '2018-02-21', 2),("James", '2018-02-21', 2),("Lucas", '2018-02-21', 2),("Henry", '2020-02-21', 2),("Jacob", '2018-02-21',3),("Logan", '2018-02-21', 3),("Newton", '2018-02-21', 4),("Alex", '2021-02-21', 4),("Martin", '2018-02-21', 5),("Gregory", '2022-02-21', 5);

insert into Subject values("Art","",1),("Music","",1),("Geography","",2),("History","",2),("PE","",3),("Math","",3),("Science","",4),("IT","",4),("Biology","",5),("Chemie","",5);

insert into paymenttype values("DAILY"), ("WEEKLY"), ("MONTHLY");

insert into Payment values ((SELECT id FROM PaymentType WHERE name = 'WEEKLY'), 25, (SELECT id FROM Student WHERE name = 'John'), CURDATE()),
                           ((SELECT id FROM PaymentType WHERE name = 'MONTHLY'), 250, (SELECT id FROM Student WHERE name = 'Oliver'), CURDATE()),
                           ((SELECT id FROM PaymentType WHERE name = 'WEEKLY'), 25, (SELECT id FROM Student WHERE name = 'Henry'), CURDATE()),
                           ((SELECT id FROM PaymentType WHERE name = 'DAILY'), 5, (SELECT id FROM Student WHERE name = 'James'), CURDATE()),
                           ((SELECT id FROM PaymentType WHERE name = 'WEEKLY'), 20, (SELECT id FROM Student WHERE name = 'Gregory'), CURDATE()),
                           ((SELECT id FROM PaymentType WHERE name = 'DAILY'), 45, (SELECT id FROM Student WHERE name = 'Martin'), CURDATE()),
                           ((SELECT id FROM PaymentType WHERE name = 'MONTHLY'), 120, (SELECT id FROM Student WHERE name = 'Jacob'), CURDATE()),
                           ((SELECT id FROM PaymentType WHERE name = 'DAILY'), 15, (SELECT id FROM Student WHERE name = 'Logan'), CURDATE());

insert into Mark values ((SELECT id FROM Student WHERE name = 'Chris'), (SELECT id FROM Subject WHERE name = 'Art'), 8),
                        ((SELECT id FROM Student WHERE name = 'Oliver'), (SELECT id FROM Subject WHERE name = 'History'), 5),
                        ((SELECT id FROM Student WHERE name = 'James'), (SELECT id FROM Subject WHERE name = 'Geography'), 9),
                        ((SELECT id FROM Student WHERE name = 'Jacob'), (SELECT id FROM Subject WHERE name = 'Math'), 4),
                        ((SELECT id FROM Student WHERE name = 'Logan'), (SELECT id FROM Subject WHERE name = 'PE'), 9),
                        ((SELECT id FROM Student WHERE name = 'Lucas'), (SELECT id FROM Subject WHERE name = 'Math'), 10),
                        ((SELECT id FROM Student WHERE name = 'Martin'), (SELECT id FROM Subject WHERE name = 'Art'), 7);