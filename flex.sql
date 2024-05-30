DROP DATABASE IF EXISTS flex;
CREATE DATABASE flex
use flex
-----------
Drop table if exists Alogin;
Drop table if exists Alogin;
create table Alogin(
username varchar(25),
password1 varchar(15),
rolef varchar(25)


);
Select * from Alogin;
-------------End------
Drop Table If Exists student
create table student
(
stdid varchar (8) not null,
stdfnam varchar(15) not null,
stdlnam varchar (15) not null ,
stdphonum varchar (11) not null,
stdgender varchar (6) not null,
stddob date,
stddegreedepart varchar (30) not null,
stusection varchar (1) not null,
constraint pkstudent primary key (stdid)
)
----------insertion for Course----------//total 25 students
INSERT INTO student (stdid, stdfnam, stdlnam, stdphonum, stdgender, stddob, stddegreedepart, stusection)
VALUES
('S001', 'John', 'Doe', '1234567890', 'Male', '2000-01-01', 'Computer Science', 'A'),
('S002', 'Jane', 'Doe', '2345678901', 'Female', '2001-02-02', 'Electrical Engineering', 'B'),
('S003', 'Bob', 'Smith', '3456789012', 'Male', '2002-03-03', 'Mechanical Engineering', 'A'),
('S004', 'Alice', 'Smith', '4567890123', 'Female', '2003-04-04', 'Business Administration', 'B'),
('S005', 'Mike', 'Johnson', '5678901234', 'Male', '2004-05-05', 'Psychology', 'A'),
('S006', 'Sarah', 'Johnson', '6789012345', 'Female', '2005-06-06', 'Nursing', 'B'),
('S007', 'David', 'Lee', '7890123456', 'Male', '2006-07-07', 'Computer Science','C'),
('S008', 'Jessica', 'Lee', '8901234567', 'Female', '2007-08-08', 'Biology', 'B'),
('S009', 'Daniel', 'Wilson', '9012345678', 'Male', '2008-09-09', 'Mechanical Engineering', 'A'),
('S010', 'Emily', 'Wilson', '0123456789', 'Female', '2009-10-10', 'Chemistry', 'C'),
('S011', 'James', 'Taylor', '1234567890', 'Male', '2010-11-11', 'Business Administration', 'A'),
('S012', 'Olivia', 'Taylor', '2345678901', 'Female', '2011-12-12', 'Computer Science', 'B'),
('S013', 'Matthew', 'Anderson', '3456789012', 'Male', '2012-01-13', 'Electrical Engineering', 'A'),
('S014', 'Sophia', 'Anderson', '4567890123', 'Female', '2013-02-14', 'Psychology', 'C'),
('S015', 'Ethan', 'Jackson', '5678901234', 'Male', '2014-03-15', 'Nursing', 'A'),
('S016', 'Isabella', 'Jackson', '6789012345', 'Female', '2015-04-16', 'Computer Science', 'B'),
('S017', 'Michael', 'Brown', '7890123456', 'Male', '2016-05-17', 'Mechanical Engineering', 'A'),
('S018', 'Ava', 'Brown', '8901234567', 'Female', '2017-06-18', 'Biology', 'B')

 SELECT stusection as SectionName, COUNT(*) as StudentCount FROM student GROUP BY stusection;
select * from student
--------------END---------------------
drop table if exists course
create table course
(
courseid varchar (15) not null,
coursename varchar (40) not null,
credithour integer not null, 
constraint pkcourse primary key (courseid)

)

----------insertion for Course----------//total 25 courses
INSERT INTO course (courseid, coursename, credithour)
VALUES
('CS10101', 'Introduction to Computer Science', 3),
('MATH101', 'Calculus I', 4),
('PHY10101', 'Physics I', 4),
('ENG10101', 'Composition and Rhetoric', 3),
('HIS10101', 'World History I', 3),
('CS10201', 'Data Structures and Algorithms', 4),
('MATH10201', 'Calculus II', 4),
('PHY10201', 'Physics II', 4),
('ENG10201', 'Literature and Culture', 3),
('HIS10201', 'World History II', 3),
('CS20101', 'Database Management Systems', 4),
('MATH20101', 'Calculus III', 4),
('PHY20101', 'Electricity and Magnetism', 4),
('ENG20101', 'American Literature', 3),
('HIS20101', 'History of Science and Technology', 3),
('CS20201', 'Operating Systems', 4),
('MATH20201', 'Discrete Mathematics', 4),
('PHY20201', 'Thermodynamics', 4),
('ENG20201', 'Shakespearean Drama', 3),
('HIS20201', 'History of Medicine', 3),
('CS30101', 'Artificial Intelligence', 4),
('MATH30101', 'Linear Algebra', 4),
('PHY30101', 'Optics', 4),
('ENG30101', 'Creative Writing', 3),
('HIS30101', 'History of Food and Drink', 3)

select * from course
-----------------END-----------------

Drop table if exists OFFercourse       ----- this is table which is offered and matchcourse table k kitny student ny register kr liya 50 wali khanii :)
create table offercourse
(
courseid varchar (15) not null,
coursename varchar (40) not null,
credithour integer not null, 
constraint pkofcourse primary key (courseid)
);

select * from offercourse


---------------------End----------------
--this table is for student course 
drop table if exists studentcourse  -----helper for composite
create table studentcourse
(
fkstdid varchar (8) not null ,
fkcourseid varchar (15) not null,
constraint pkstcourse primary key (fkstdid, fkcourseid),--composite key
constraint fk_studentid foreign key (fkstdid) references student(stdid),
constraint fk_courseid foreign key (fkcourseid) references OFFercourse(courseid)
on delete cascade on update cascade,-- we use this for foreign key changing
)

----insertion for studnetcourse
INSERT INTO studentcourse (fkstdid, fkcourseid) VALUES ('S001', 'CS10101');
INSERT INTO studentcourse (fkstdid, fkcourseid) VALUES ('S002', 'CS10101');
INSERT INTO studentcourse (fkstdid, fkcourseid) VALUES ('S003', 'MATH101');--
INSERT INTO studentcourse (fkstdid, fkcourseid) VALUES ('S004', 'PHY10101');-------
INSERT INTO studentcourse (fkstdid, fkcourseid) VALUES ('S005', 'PHY10101');-------
INSERT INTO studentcourse (fkstdid, fkcourseid) VALUES ('S006', 'MATH101');--
INSERT INTO studentcourse (fkstdid, fkcourseid) VALUES ('S007', 'ENG10101');
INSERT INTO studentcourse (fkstdid, fkcourseid) VALUES ('S008','MATH101');--
INSERT INTO studentcourse (fkstdid, fkcourseid) VALUES ('S009','MATH101');--
INSERT INTO studentcourse (fkstdid, fkcourseid) VALUES ('S010', 'PHY10101');-----
INSERT INTO studentcourse (fkstdid, fkcourseid) VALUES ('S011','MATH101');--
INSERT INTO studentcourse (fkstdid, fkcourseid) VALUES ('S012','MATH101');--
INSERT INTO studentcourse (fkstdid, fkcourseid) VALUES ('S013','MATH101');---
INSERT INTO studentcourse (fkstdid, fkcourseid) VALUES ('S014', 'PHY10101');-------
INSERT INTO studentcourse (fkstdid, fkcourseid) VALUES ('S015', 'PHY10101');--------
INSERT INTO studentcourse (fkstdid, fkcourseid) VALUES ('S016', 'CS10101');
INSERT INTO studentcourse (fkstdid, fkcourseid) VALUES ('S017', 'CS10101');
select * from studentcourse
---------------------End----------------

Drop table if exists matchcourse        ---- matchcourse in this store id of courses in which more 10 lie
create table matchcourse
(
matchcourseid varchar (15) not null,
constraint pkmatchcourseid primary key (matchcourseid)
)
 select * from matchcourse

-----------------END-----------------

drop table if exists unifaculty -------- this table is for inserting  facyulty data and used in bhot muskil sy :)
create table unifaculty 
(
facid varchar (8) not null,
facname varchar (15) not null,
experienceyears int,
constraint  pkunifaculty primary key (facid),
)

---insertion to unifaculty 
INSERT INTO unifaculty (facid, facname, experienceyears) VALUES ('F001', 'John Smith', 5);
INSERT INTO unifaculty (facid, facname, experienceyears) VALUES ('F002', 'Jane Doe', 3);
INSERT INTO unifaculty (facid, facname, experienceyears) VALUES ('F003', 'Bob Johnson', 8);
INSERT INTO unifaculty (facid, facname, experienceyears) VALUES ('F004', 'Sara Lee', 4);
INSERT INTO unifaculty (facid, facname, experienceyears) VALUES ('F005', 'Mike Johnson', 7);
INSERT INTO unifaculty (facid, facname, experienceyears) VALUES ('F006', 'Emily Davis', 2);
INSERT INTO unifaculty (facid, facname, experienceyears) VALUES ('F007', 'David Jones', 9);
INSERT INTO unifaculty (facid, facname, experienceyears) VALUES ('F008', 'Jessica Kim', 6);
INSERT INTO unifaculty (facid, facname, experienceyears) VALUES ('F009', 'Mark Lee', 1);
INSERT INTO unifaculty (facid, facname, experienceyears) VALUES ('F010', 'Karen Brown', 4);
INSERT INTO unifaculty (facid, facname, experienceyears) VALUES ('F011', 'Daniel Johnson', 10);
INSERT INTO unifaculty (facid, facname, experienceyears) VALUES ('F012', 'Amy Chen', 6);
INSERT INTO unifaculty (facid, facname, experienceyears) VALUES ('F013', 'Chris Lee', 2);
INSERT INTO unifaculty (facid, facname, experienceyears) VALUES ('F014', 'Maggie Johnson', 7);
INSERT INTO unifaculty (facid, facname, experienceyears) VALUES ('F015', 'Tom Smith', 3);


select * from unifaculty 
---------------------End---------------- 

drop table if exists section    -------------section 
create table section
(
fkseccourseid varchar (15),
sectionid varchar (1) not null ,
constraint pkseccourse primary key (fkseccourseid,sectionid),--composite key
constraint fk_sec_courseid foreign key (fkseccourseid) references course(courseid)
on delete cascade on update cascade, 
)
SELECT fkseccourseid, COUNT(*) as TotalSections FROM section GROUP BY fkseccourseid
select * from section


---------------------End----------------
drop table if exists fac_sectable ---------section record zaleel panti :0
create table fac_sectable
(

fksectcourseid varchar (15),
secttionid varchar (1) not null ,
factkstdid varchar (8) not null ,
constraint pksectcourse primary key (fksectcourseid,secttionid),--composite key
constraint fk_sect_courseid foreign key (fksectcourseid) references course(courseid),
constraint fk_facat_id foreign key (factkstdid) references unifaculty(facid)
on delete cascade on update cascade,

)
select * from fac_sectable

SELECT distinct  s.stdid, s.stdfnam , s.stdlnam as stdname 
                       FROM studentcourse sc 
                       INNER JOIN student s ON sc.fkstdid = s.stdid
                       iNNER JOIN fac_sectable fs ON sc.fkcourseid = fs.fksectcourseid
                       WHERE fs.fksectcourseid ='cs10101'

---------------------End----------------

drop table if exists marksdistribution
create table marksdistribution
(
markdisid integer not null,
Assignment_weightage int ,
quizes_weightage integer ,
sessional_weightage integer,
project_weightage integer,
final_weightage integer,
marksseccourseid varchar (15),
constraint pk_markdistribution primary key (markdisid),
--constraint  fk_markssectioncourseid foreign key (marksseccourseid)  references course(courseid),
)

select * from marksdistribution

-----------------END-----------------

drop table if exists feedbackandattendancestudentcourse
create table feedbackandattendancestudentcourse
(
fakstdid varchar (8) not null ,
fakcourseid varchar (15) not null,
attendance varchar(1) not null, 
constraint pkofattendancecourse primary key (fakstdid, fakcourseid),--composite key
constraint fk_attendancestudentid foreign key (fakstdid) references student(stdid),
constraint fk_attendancecourseid foreign key (fakcourseid) references OFFercourse(courseid)
on delete cascade on update cascade,
)
  

---------------------End----------------  

drop table if exists faculty
create table faculty
(
facid varchar (8) not null,
fkfaccourseid varchar (15) not null,
facrole varchar (15) not null,
constraint pkcourse primary key (facid),
constraint fk_facultycourse foreign key (fkfaccourseid) references course(courseid),
--on delete cascade on update cascade, we use this for foreign key changing

)





---------------------End----------------
drop table if exists marks
create table marks
(
courseidmarks varchar (15) not null ,
totalmarks integer not null,
obtainmarks integer not null,
constraint pk_marks primary key (courseidmarks ),--composite key
constraint fk_coursemarks foreign key (courseidmarks) references course(courseid),
)



