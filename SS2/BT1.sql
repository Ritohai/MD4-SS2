CREATE DATABASE ERD;
use ERD;

CREATE TABLE CTPX(
DGXuat int,
SLXuat int,
SoPX int,
MaVTU int
);

CREATE TABLE PHIEUXUAT(
SoPX int primary key auto_increment,
NgayXuat date
);

CREATE TABLE CTPN(
DGNhap int ,
SLNhap int,
MaVTU int,
SoPN int
);

CREATE TABLE CTDDH(
MaVTU int,
SoDH int
);

CREATE TABLE VATTU(
MaVTU int primary key auto_increment,
TenVTU varchar(255)
);

CREATE TABLE PHIEUNHAP(
SoPN int primary key,
NgayNhap date
);

CREATE TABLE DONH(
SoDH int primary key auto_increment,
NgayDH Date,
MaNCC int
);

CREATE TABLE CC (
MaNCC int,
SoDH int
);

CREATE TABLE NHACC(
MaNCC int primary key auto_increment,
TenNC varchar(200),
DiaChi varchar(200),
SDT varchar(12)	
);

ALTER TABLE CTPX
ADD CONSTRAINT FK_CTPX_PhieuXuat FOREIGN KEY (SoPX) REFERENCES PHIEUXUAT(SoPX);

ALTER TABLE CTPX
ADD CONSTRAINT FK_CTPX_VatTu FOREIGN KEY (MaVTU) REFERENCES VATTU(MaVTU);

ALTER TABLE CTPN
ADD CONSTRAINT FK_CTPN_VatTu FOREIGN KEY (MaVTU) REFERENCES VATTU(MaVTU);

ALTER TABLE CTPN
ADD CONSTRAINT FK_CTPN_PhieuNhap FOREIGN KEY (SoPN) REFERENCES PHIEUNHAP(SoPN);

ALTER TABLE CTDDH
ADD CONSTRAINT FK_CTDDH_VatTu FOREIGN KEY (MaVTU) REFERENCES VATTU(MaVTU);

ALTER TABLE CTDDH
ADD CONSTRAINT FK_CTDDH_DonHang FOREIGN KEY (SoDH) REFERENCES DONH(SoDH);

ALTER TABLE CC
ADD CONSTRAINT FK_CC_NhaCungCap FOREIGN KEY (MaNCC) REFERENCES NHACC(MaNCC);

ALTER TABLE CC
ADD CONSTRAINT FK_CC_DonHang FOREIGN KEY (SoDH) REFERENCES DONH(SoDH);



