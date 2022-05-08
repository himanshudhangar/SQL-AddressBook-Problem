CREATE TABLE addressbooks (id int not null auto_increment primary key,firstname varchar(20) NOT NULL, lastname varchar(20) NOT NULL,city varchar(20) NOT NULL,state varchar(20) NOT NULL,zip integer(6),phone varchar(10) NOT NULL,email varchar(20) NOT NULL UNIQUE);
desc addressbooks;

create table addressbooks_name(id int not null auto_increment primary key,name varchar (20) not null,ab_id int ,foreign key (ab_id)references addressbooks(id)  );
desc addressbooks_name;

create table addressbooks_type(id int not null primary key,type varchar (20));
desc addressbooks_type;

create table addressbooks_abtype(a_id int not null,t_id int not null,foreign key(a_id) references addressbooks(id),foreign key(t_id) references addressbooks_type(id),primary key(a_id,t_id));

INSERT INTO addressbooks VALUES
(1,'Himanshu', 'Dhangar', 'Dhule', 'Maharastra',425408, 9168112901, 'dhangarhim@gmail.com'),
(2,'Jay', 'Patil', 'Pune', 'Maharashtra', 411402, 8138975257, 'jaypatil@gmail.com'),
(3,'Aditya', 'Nath', 'Gorakhpur', 'UP', 7125487, 8149454587, 'adityanath@gmail.com'),
(4,'rupesh', 'patil', 'NDB', 'Maharastra', 414501, 9604315270, 'rupeshpati@gmail.com');
 
insert into addressbooks_name values (1,'AdddressBook1', 2); 

insert into addressbooks_type values(1,'family');
insert into addressbooks_type values(2,'friends');
insert into addressbooks_type values(3,'profession');

insert into addressbooks_abtype(a_id,t_id)values(1,1);

select * from addressbooks;
select * from addressbooks_name;
select * from addressbooks_type;
select * from addressbooks_abtype;