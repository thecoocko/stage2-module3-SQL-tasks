insert into Student(id,name,group) values(12234,"John",1),(12235,"Chris", 1),(12236,"Carl", 1),(12237,"Oliver", 2),(12238,"James", 2),(12239,"Lucas", 2),(12245,"Henry", 2),(12246,"Jacob",3),(12247,"Logan", 3),(12248,"Newton", 4),(12249,"Alex", 4),(12345,"Martin", 5),(12346,"Gregory", 5);

insert into Student(id,name,birthday,group) values (222,null,null, 5);

insert into Subject(id,name, grade) values(1,"Art",1),(2,"Music",1),(3,"Geography",2),(4,"History",2),(5,"PE",3),(6,"Math",3),(7,"Science",4),(8,"IT",4),(9,"Biology",5),(10,"Chemie",5);

insert into paymenttype(id,name) values(1,"DAILY"), (2,"WEEKLY"), (3,"MONTHLY");

insert into Payment(id,type_id,student_id) values(1,2,12234),(2,3,12237),(3,2,12245),(4,1,12238);

insert into Mark(id,student_id,subject_id,mark) values (1,12235,1,8),(2,12237,4,5),(3,12238,3,9),(4,12246,6,4),(5,12247,5,9),(6,12346,10,2),(7,12248,9,4),(8,12345,2,9);