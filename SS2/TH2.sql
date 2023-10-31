CREATE database QuanLiDiemthi;
use QuanLiDiemthi;

create table HocSinh(
MaHS int primary key,
TenHS varchar(20),
NgaySinh date,
Lop varchar(20),
GT varchar(20)
);

create table GiaoVien(
MaGV int primary key,
TenGV varchar(20),
SDT varchar(20)
);

Create table MonHoc(
MaMH int primary key,
TenMH varchar(20),
MaGV int,
foreign key (MaGV) references GiaoVien(MaGV)
);

create table BangDiem(
MaHS int,
MaMH int,
DiemThi int,
NgayKT date,
foreign key (MaHS) REFERENCES HocSinh(MaHS),
FOREIGN KEY (MaMH) REFERENCES MonHoc(MaMH)
);



