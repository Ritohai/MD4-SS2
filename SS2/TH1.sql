CREATE DATABASE TH1;
use TH1;

CREATE TABLE DONVIDH(
MaDV int primary key,
TenDV varchar(255),
DiaChi varchar(255),
Dienthoai varchar(255)
);

CREATE TABLE DONVIKH(
MaDV int primary key,
TenDV varchar(255),
DiaChi varchar(255)
);

CREATE TABLE Hang(
MaHang int primary key,
TenHang varchar(255),
DvTinh int,
MoTaHang varchar(255) 
);

CREATE TABLE NGUOIDAT(
MaSoND int primary key,
HoTenND varchar(255)
);

CREATE TABLE NOIGIAO(
MaSoDDG int primary key,
TenDonGiao varchar(255)
);

CREATE TABLE NGUOINHAN(
MaSoNN int primary key,
HoTenNN varchar(255)
);

CREATE TABLE NGUOIGIAO(
MaSoNG int primary key,
HoTenNG varchar(255)
);
