create database QuanLyBanHang;
use QuanLyBanHang;

create table Customer(
cId int primary key auto_increment,
cName varchar(20),
cAge int
);

create table Orders(
oId int primary key auto_increment,
cId int,
oDate date,
oTotalPrice float
);

create table Product(
pId int primary key auto_increment,
pName varchar(20),
pPrice float
);

create table OrderDetail(
oId int not null,
pId int not null,
odQty int,
foreign key (oId) references Orders(oId),
foreign key (pId) references Product(pId)
);
  