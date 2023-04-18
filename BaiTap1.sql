create database ERD_MoHinhQuanHe;
use ERD_MoHinhQuanHe;
create table PhieuXuat(
SoPX int primary key,
NgayXuat date
);

create table VatTu(
MaVatTu int primary key,
TenVatTu varchar(50)

);

create table PhieuNhap(
SoPN int primary key,
NgayNhap date

);

create table DonDH(
SoDH int primary key,
NgayDH date

);

create table NhaCC(
MaNCC int primary key,
TenNCC varchar(50),
DiaChi varchar(250),
SDT varchar(10)

);

create table ChiTietPhieuXuat(
SoPX int,
MaVatTu int,
SLXuat int,
DonGiaXuat int,
primary key(SoPX, MaVatTu),
foreign key (SoPX) references PhieuXuat(SoPX),
foreign key (MaVatTu) references VatTu(MaVatTu)
);

create table ChiTietPhieuNhap(
SoPN int,
MaVatTu int,
SLNhap int,
DonGiaNhap int,

primary key(SoPN, MaVatTu),
foreign key (SoPN) references PhieuNhap(SoPN),
foreign key (MaVatTu) references VatTu(MaVatTu)
);

create table ChiTietDonDatHang(
MaVatTu int,
SoDH int,
NgayDH date,
primary key (MaVatTu, SoDH),
foreign key (SoDH) references DonDH(SoDH),
foreign key (MaVatTu) references VatTu(MaVatTu)
);

create table CungCap(
SoDH int primary key,
MaNCC int,
TenNCC varchar(50),
DiaChi varchar(50),
SDT varchar(10),
foreign key (SoDH) references DonDH(SoDH),
foreign key (MaNCC) references NhaCC(MaNCC)
);



