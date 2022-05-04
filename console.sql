create table student(
    id serial,
    name varchar ,
    surname varchar,
    course_id int references courses(id)
);
insert into student(name,surname,course_id)
values ('Aychurok','Turgunbaeva',1),
       ('Kunzaada','Bekzhanova',2),
       ('Dinara','Rahatbek',3),
       ('Dilbara','Asanalaieva',4),
       ('Chynara','Mamatalieva',5),
       ('Mavluda','Abdirasilova',5);
create table courses(
    id serial unique ,
    name varchar,
    address varchar
);
insert into courses(name,address)
values ('Java','First floor'),
       ('Java','First floor'),
       ('JS','Second  floor'),
       ('QA','Third floor'),
       ('DevOps','Fourth floor');

select * from student join courses c on student.course_id = c.id;


