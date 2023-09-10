use university;
create table Student(
                        id bigint Primary key,
                        name_ varchar(25),
                        birthday date,
                        group_ int);

create table Subject(
                        id bigint Primary key,
                        name_ varchar(25),
                        description varchar(150),
                        grade int
);

create table PaymentType(
                            id bigint primary key,
                            name_ varchar(25)
);

create table Payment(
                        id bigint primary key,
                        type_id bigint,
                        foreign key (type_id) references PaymentType(id),
                        amount decimal,
                        student_id bigint,
                        payment_date datetime,
                        foreign key (student_id) references Student(id)
);

create table Mark(
                     id bigint primary key,
                     student_id bigint,
                     subject_id bigint,
                     mark int,
                     foreign key (student_id) references Student(id),
                     foreign key (subject_id) references Subject(id)
);


insert into Student(id,name_,group_) values
                                         (12234,"John",1),
                                         (12235,"Chris", 1),
                                         (12236,"Carl", 1),
                                         (12237,"Oliver", 2),
                                         (12238,"James", 2),
                                         (12239,"Lucas", 2),
                                         (12245,"Henry", 2),
                                         (12246,"Jacob",3),
                                         (12247,"Logan", 3),
                                         (12248,"Newton", 4),
                                         (12249,"Alex", 4),
                                         (12345,"Martin", 5),
                                         (12346,"Gregory", 5);

insert into Subject(id,name_, grade) values
                                         (1,"Art",1),
                                         (2,"Music",1),
                                         (3,"Geography",2),
                                         (4,"History",2),
                                         (5,"PE",3),
                                         (6,"Math",3),
                                         (7,"Science",4),
                                         (8,"IT",4),
                                         (9,"Biology",5),
                                         (10,"Chemie",5);

insert into paymenttype(id,name_) values
                                      (1,"DAILY"), (2,"WEEKLY"), (3,"MONTHLY");

insert into Payment(id,type_id,student_id) values
                                               (1,2,12234),
                                               (2,3,12237),
                                               (3,2,12245),
                                               (4,1,12238);

insert into Mark(id,student_id,subject_id,mark) values
                                                    (1,12235,1,8),
                                                    (2,12237,4,5),
                                                    (3,12238,3,9),
                                                    (4,12246,6,4),
                                                    (5,12247,5,9),
                                                    (6,12346,10,2),
                                                    (7,12248,9,4),
                                                    (8,12345,2,9);

alter table Student modify birthday	date not null;
alter table Mark modify student_id bigint not null;
alter table Mark modify subject_id bigint not null;
alter table Mark add CONSTRAINT mark check (mark between 1 and 10);
alter table Subject add constraint grade check (grade between 1 and 5);
alter table PaymentType modify name_ varchar(25) unique;
alter table Payment modify type_id int  NOT NULL;
alter table Payment modify amount decimal NOT NULL;
alter table Payment modify payment_date datetime NOT NULL;

select * from student;
select * from student limit 50;
select student.name_ from student;
select distinct(payment.amount) from payment;

select * from payment
where amount > 500 or amount = 500;

select * from student
where year(current_date()) - year(student.birthday) > 20;

select * from Student
where group_ = 10 and year(current_date()) - year(student.birthday) < 20;

select * from Student
where name_ = 'Mike' or group_  between 4 and 6;

select * from Payment
where month(current_date()) - month(payment.payment_date) > 8;

select * from Student
where student.name_ like 'A%';

select * from Student
where (student.name_ = 'Roxi' and student.group_ = 4) or (student.name_ = 'Tallie' and group_ = 9);


select * from payment
where payment.type_id = 3;

select * from mark
where mark.subject_id = 1;

select * from (student right join payment on student.id = payment.student_id)
where payment.type_id = 2;

select * from (student right join mark on student.id = mark.student_id)
where mark.subject_id = 6;
