SHOW DATABASES;
CREATE DATABASE lecture;
DROP DATABASE lecture;
USE lecture;

CREATE TABLE instructor (
		ID char(5),
        name varchar(20) not null,
        dept_name varchar(20),
        salary numeric(8,2),
        primary key(ID),
        foreign key(dept_name) references department
);

CREATE TABLE student (
		ID varchar(5),
        name varchar(20) not null, 
        dept_name varchar(20),
        tot_cred numeric(3,0),
        primary key(ID),
        foreign key(dept_name) references department
);

CREATE TABLE takes (
		ID varchar(5),
        course_id varchar(8),
        sec_id varchar(8),
        semester varchar(6),
        year numeric(4,0),
        grade varchar(2),
        primary key(ID, course_id, sec_id, semester, year),
        foreign key(ID) references student,
        foreign key(course_id, sec_id, semester, year) references section
);

CREATE TABLE course (
		course_id varchar(8),
        title varchar(50),
        dept_name varchar(20),
        credits numeric(2,0),
        primary key(course_id),
        foreign key(dept_name) references department
);

DROP TABLE instructor;
SELECT * FROM instructor;
INSERT INTO instructor(ID, name, dept_name, salary) VALUES ();
