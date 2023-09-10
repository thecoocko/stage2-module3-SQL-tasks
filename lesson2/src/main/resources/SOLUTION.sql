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

insert into Payment(type_id,student_id) values
                                            (2,12234),
                                            (3,12237),
                                            (2,12245),
                                            (1,12238);

insert into Mark(student_id,subject_id,mark) values
                                                    (12235,1,8),
                                                    (12237,4,5),
                                                    (12238,3,9),
                                                    (12246,6,4),
                                                    (12247,5,9),
                                                    (12346,10,2),
                                                    (12248,9,4),
                                                    (12345,2,9);