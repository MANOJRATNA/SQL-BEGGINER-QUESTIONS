--JOINS

create table A(
				user_id int primary key,
				user_type varchar (30) not null,
				user_name varchar(30) not null,
				user_password int not null
				)


create table B(
				id int foreign key references A(user_id),
				full_name varchar (40) not null
				)






