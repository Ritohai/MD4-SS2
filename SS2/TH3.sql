create database QuanLySinhVien;
use QuanLySinhVien;

create table Class(
ClassId int primary key auto_increment,
ClassName varchar(60) not null,
StartDate datetime not null,
Statuss bit
);

create table Student(
StudentID int primary key auto_increment,
StudentName varchar(30) not null,
Address varchar(50),
Phone varchar(20),
Statuss bit,
ClassId int not null,
foreign key (ClassId) references Class(ClassId)
);


create table Subjects(
SubId int primary key auto_increment,
SubName varchar(30) not null,
Credit tinyint not null default(1) check(Credit >=1),
Statuss bit default(1)
);

create table Mark(
MarkId int primary key auto_increment,
SubId int not null unique key,
StudentID int not null unique key,
Mark float default(0) check(Mark between 0 and 100),
ExamTimes tinyint default(1),
foreign key (SubId) references Subjects(SubId),
foreign key (StudentId) references Student(StudentId)
);

