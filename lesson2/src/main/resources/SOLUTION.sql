insert into Student(name,group_) values("John",1),("Chris", 1),("Carl", 1),("Oliver", 2),("James", 2),("Lucas", 2),("Henry", 2),("Jacob",3),("Logan", 3),("Newton", 4),("Alex", 4),("Martin", 5),("Gregory", 5);

insert into Subject(name, grade) values("Art",1),("Music",1),("Geography",2),("History",2),("PE",3),("Math",3),("Science",4),("IT",4),("Biology",5),("Chemie",5);

insert into paymenttype(name) values("DAILY"), ("WEEKLY"), ("MONTHLY");

insert into Payment(type_id,student_id) values("WEEKLY","John"),("MONTHLY","Oliver"),("WEEKLY","Henry"),("DAILY","James");

insert into Mark(student_id,subject_id,mark) values ("Art","Chris",8),("History","Oliver",5),("Geography","James",9),("Logan","PE",9),("Jacob","Math",4),("Alex","IT",9);