USE [master]
GO
/****** Object:  Database [QuanLyBanHang]    Script Date: 08/08/2023 2:43:11 PM ******/
CREATE DATABASE [QuanLyBanHang]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QuanLyBanHang', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\QuanLyBanHang.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QuanLyBanHang_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\QuanLyBanHang_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [QuanLyBanHang] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QuanLyBanHang].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QuanLyBanHang] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QuanLyBanHang] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QuanLyBanHang] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QuanLyBanHang] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QuanLyBanHang] SET ARITHABORT OFF 
GO
ALTER DATABASE [QuanLyBanHang] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QuanLyBanHang] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QuanLyBanHang] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QuanLyBanHang] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QuanLyBanHang] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QuanLyBanHang] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QuanLyBanHang] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QuanLyBanHang] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QuanLyBanHang] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QuanLyBanHang] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QuanLyBanHang] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QuanLyBanHang] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QuanLyBanHang] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QuanLyBanHang] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QuanLyBanHang] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QuanLyBanHang] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QuanLyBanHang] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QuanLyBanHang] SET RECOVERY FULL 
GO
ALTER DATABASE [QuanLyBanHang] SET  MULTI_USER 
GO
ALTER DATABASE [QuanLyBanHang] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QuanLyBanHang] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QuanLyBanHang] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QuanLyBanHang] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QuanLyBanHang] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QuanLyBanHang] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'QuanLyBanHang', N'ON'
GO
ALTER DATABASE [QuanLyBanHang] SET QUERY_STORE = OFF
GO
USE [QuanLyBanHang]
GO
/****** Object:  User [pc07859]    Script Date: 08/08/2023 2:43:12 PM ******/
CREATE USER [pc07859] FOR LOGIN [pc07859] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[CHUYENNGANH]    Script Date: 08/08/2023 2:43:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHUYENNGANH](
	[MaChuyenNganh] [varchar](10) NOT NULL,
	[TenChuyenNganh] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_CHUYENNGANH] PRIMARY KEY CLUSTERED 
(
	[MaChuyenNganh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DANHSACHCACPHIEUMUONQUAHAN]    Script Date: 08/08/2023 2:43:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DANHSACHCACPHIEUMUONQUAHAN](
	[MaPhieuMuon] [int] NULL,
	[TenSinhVien] [nvarchar](20) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[MaSach] [varchar](10) NOT NULL,
	[TieuDe] [nvarchar](50) NOT NULL,
	[TenSach] [nvarchar](50) NOT NULL,
	[SoTrang] [int] NOT NULL,
	[SLBS] [int] NOT NULL,
	[GiaTien] [money] NOT NULL,
	[NgayNhapKho] [date] NOT NULL,
	[MaViTri] [varchar](10) NULL,
	[MaLoai] [varchar](10) NULL,
	[MaNhaXuatBan] [varchar](10) NULL,
	[NGAYMUON] [date] NOT NULL,
	[TrangThai] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 08/08/2023 2:43:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[MaHoaDon] [int] NULL,
	[NgayMuaHang] [date] NULL,
	[MaKhachHang] [nchar](5) NULL,
	[TrangThai] [nchar](30) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDonChiTiet]    Script Date: 08/08/2023 2:43:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDonChiTiet](
	[maHoaDon] [int] NULL,
	[maSanPham] [int] NULL,
	[soLuong] [int] NULL,
	[maHoaDonChiTiet] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 08/08/2023 2:43:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[maKhachHang] [nchar](5) NULL,
	[hoVaTenLot] [nchar](50) NULL,
	[Ten] [nchar](50) NULL,
	[diaChi] [nchar](255) NULL,
	[Email] [nchar](50) NULL,
	[dienThoai] [nchar](13) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang_daNang]    Script Date: 08/08/2023 2:43:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang_daNang](
	[maKhachHang] [nchar](5) NULL,
	[hoVaTenLot] [nchar](50) NULL,
	[Ten] [nchar](50) NULL,
	[diaChi] [nchar](255) NULL,
	[Email] [nchar](50) NULL,
	[dienThoai] [nchar](13) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOAISACH]    Script Date: 08/08/2023 2:43:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOAISACH](
	[MaLoai] [varchar](10) NOT NULL,
	[TenLoai] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_LOAISACH] PRIMARY KEY CLUSTERED 
(
	[MaLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHAXUATBAN]    Script Date: 08/08/2023 2:43:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHAXUATBAN](
	[MaNhaXuatBan] [varchar](10) NOT NULL,
	[TenNhaXuatBan] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_NHAXUATBAN] PRIMARY KEY CLUSTERED 
(
	[MaNhaXuatBan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHIEUMUON]    Script Date: 08/08/2023 2:43:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHIEUMUON](
	[MaPhieuMuon] [int] IDENTITY(1,1) NOT NULL,
	[NgayMuon] [date] NOT NULL,
	[NgayTra] [date] NOT NULL,
	[TrangThai] [nvarchar](50) NOT NULL,
	[MaSinhVien] [varchar](10) NULL,
 CONSTRAINT [PK_PHIEUMUON] PRIMARY KEY CLUSTERED 
(
	[MaPhieuMuon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHIEUMUONCHITIET]    Script Date: 08/08/2023 2:43:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHIEUMUONCHITIET](
	[MaPhieuMuonChiTiet] [varchar](10) NOT NULL,
	[SoThuTu] [int] NOT NULL,
	[GhiChu] [nvarchar](50) NULL,
	[MaPhieuMuon] [int] NULL,
	[MaNhaXuatBan] [varchar](10) NULL,
	[MaSach] [varchar](10) NULL,
 CONSTRAINT [PK_PHIEUMUONCHITIET] PRIMARY KEY CLUSTERED 
(
	[MaPhieuMuonChiTiet] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SACH]    Script Date: 08/08/2023 2:43:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SACH](
	[MaSach] [varchar](10) NOT NULL,
	[TieuDe] [nvarchar](50) NOT NULL,
	[TenSach] [nvarchar](50) NOT NULL,
	[SoTrang] [int] NOT NULL,
	[SLBS] [int] NOT NULL,
	[GiaTien] [money] NOT NULL,
	[NgayNhapKho] [date] NOT NULL,
	[MaViTri] [varchar](10) NULL,
	[MaLoai] [varchar](10) NULL,
	[MaNhaXuatBan] [varchar](10) NULL,
 CONSTRAINT [PK_SACH] PRIMARY KEY CLUSTERED 
(
	[MaSach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 08/08/2023 2:43:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSanPham] [int] NULL,
	[MoTa] [nchar](255) NULL,
	[SoLuong] [int] NULL,
	[DonGia] [money] NULL,
	[TenSP] [nchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TACGIA]    Script Date: 08/08/2023 2:43:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TACGIA](
	[MaTacGia] [varchar](10) NOT NULL,
	[TenTacGia] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_TACGIA] PRIMARY KEY CLUSTERED 
(
	[MaTacGia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[THESINHVIEN]    Script Date: 08/08/2023 2:43:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[THESINHVIEN](
	[MaSinhVien] [varchar](10) NOT NULL,
	[TenSinhVien] [nvarchar](20) NOT NULL,
	[NgayHetHan] [date] NOT NULL,
	[MaThongTin] [varchar](10) NULL,
	[MaChuyenNganh] [varchar](10) NULL,
 CONSTRAINT [PK_THESINHVIEN] PRIMARY KEY CLUSTERED 
(
	[MaSinhVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[THONGTINLIENHE]    Script Date: 08/08/2023 2:43:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[THONGTINLIENHE](
	[MaThongTin] [varchar](10) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[SoDienThoai] [int] NOT NULL,
 CONSTRAINT [PK_TTLH] PRIMARY KEY CLUSTERED 
(
	[MaThongTin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VIET]    Script Date: 08/08/2023 2:43:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VIET](
	[MaTacGia] [varchar](10) NOT NULL,
	[MaSach] [varchar](10) NOT NULL,
 CONSTRAINT [PK_VIET] PRIMARY KEY CLUSTERED 
(
	[MaTacGia] ASC,
	[MaSach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VITRIDATSACH]    Script Date: 08/08/2023 2:43:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VITRIDATSACH](
	[MaViTri] [varchar](10) NOT NULL,
	[TenViTri] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_VITRIDATSACH] PRIMARY KEY CLUSTERED 
(
	[MaViTri] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[CHUYENNGANH] ([MaChuyenNganh], [TenChuyenNganh]) VALUES (N'CN001', N'Kinh tế')
INSERT [dbo].[CHUYENNGANH] ([MaChuyenNganh], [TenChuyenNganh]) VALUES (N'CN002', N'Công nghệ thông tin')
INSERT [dbo].[CHUYENNGANH] ([MaChuyenNganh], [TenChuyenNganh]) VALUES (N'CN003', N'Du lịch')
INSERT [dbo].[CHUYENNGANH] ([MaChuyenNganh], [TenChuyenNganh]) VALUES (N'CN004', N'Văn học')
INSERT [dbo].[CHUYENNGANH] ([MaChuyenNganh], [TenChuyenNganh]) VALUES (N'CN005', N'Ngoại ngữ')
INSERT [dbo].[CHUYENNGANH] ([MaChuyenNganh], [TenChuyenNganh]) VALUES (N'CN021', N'Tiếng Anh')
INSERT [dbo].[CHUYENNGANH] ([MaChuyenNganh], [TenChuyenNganh]) VALUES (N'CN022', N'Hóa học ứng dụng')
INSERT [dbo].[CHUYENNGANH] ([MaChuyenNganh], [TenChuyenNganh]) VALUES (N'CN023', N'Kỹ thuật phần mềm')
INSERT [dbo].[CHUYENNGANH] ([MaChuyenNganh], [TenChuyenNganh]) VALUES (N'CN024', N'Sinh học đại cương')
INSERT [dbo].[CHUYENNGANH] ([MaChuyenNganh], [TenChuyenNganh]) VALUES (N'CN025', N'Tiếng Nhật')
INSERT [dbo].[CHUYENNGANH] ([MaChuyenNganh], [TenChuyenNganh]) VALUES (N'CN041', N'Quản trị kinh doanh')
INSERT [dbo].[CHUYENNGANH] ([MaChuyenNganh], [TenChuyenNganh]) VALUES (N'CN042', N'Kỹ thuật điện')
INSERT [dbo].[CHUYENNGANH] ([MaChuyenNganh], [TenChuyenNganh]) VALUES (N'CN043', N'Tâm lý học học tập')
INSERT [dbo].[CHUYENNGANH] ([MaChuyenNganh], [TenChuyenNganh]) VALUES (N'CN044', N'Lịch sử triết học')
INSERT [dbo].[CHUYENNGANH] ([MaChuyenNganh], [TenChuyenNganh]) VALUES (N'CN045', N'Điện tử viễn thông')
GO
INSERT [dbo].[DANHSACHCACPHIEUMUONQUAHAN] ([MaPhieuMuon], [TenSinhVien], [Email], [MaSach], [TieuDe], [TenSach], [SoTrang], [SLBS], [GiaTien], [NgayNhapKho], [MaViTri], [MaLoai], [MaNhaXuatBan], [NGAYMUON], [TrangThai]) VALUES (10, N'Võ Văn Q1', N'dinhngocl@example.com', N'MS025', N'Tiếng Nhật cơ bản', N'Tiếng Nhật cơ bản', 160, 4, 110000.0000, CAST(N'2023-08-13' AS Date), N'VT025', N'L025', N'NXB025', CAST(N'2023-08-13' AS Date), N'Chưa trả sách')
INSERT [dbo].[DANHSACHCACPHIEUMUONQUAHAN] ([MaPhieuMuon], [TenSinhVien], [Email], [MaSach], [TieuDe], [TenSach], [SoTrang], [SLBS], [GiaTien], [NgayNhapKho], [MaViTri], [MaLoai], [MaNhaXuatBan], [NGAYMUON], [TrangThai]) VALUES (15, N'Lý Thị P3', N'dinhngocl@example.com', N'MS045', N'Văn hóa thế giới trong lịch sử', N'Văn hóa thế giới trong lịch sử', 360, 11, 270000.0000, CAST(N'2023-08-31' AS Date), N'VT045', N'L045', N'NXB045', CAST(N'2023-08-31' AS Date), N'Chưa trả sách')
GO
INSERT [dbo].[HoaDon] ([MaHoaDon], [NgayMuaHang], [MaKhachHang], [TrangThai]) VALUES (1, CAST(N'2004-02-11' AS Date), N'KH001', N'Chưa thanh toán               ')
INSERT [dbo].[HoaDon] ([MaHoaDon], [NgayMuaHang], [MaKhachHang], [TrangThai]) VALUES (2, CAST(N'2016-12-12' AS Date), N'KH002', N'Chưa thanh toán               ')
INSERT [dbo].[HoaDon] ([MaHoaDon], [NgayMuaHang], [MaKhachHang], [TrangThai]) VALUES (3, CAST(N'2016-01-04' AS Date), N'KH003', N'Đang giao                     ')
INSERT [dbo].[HoaDon] ([MaHoaDon], [NgayMuaHang], [MaKhachHang], [TrangThai]) VALUES (4, CAST(N'2016-01-12' AS Date), N'KH006', N'Đang giao                     ')
INSERT [dbo].[HoaDon] ([MaHoaDon], [NgayMuaHang], [MaKhachHang], [TrangThai]) VALUES (5, CAST(N'2006-06-06' AS Date), N'KH008', N'Đã thanh toán                 ')
INSERT [dbo].[HoaDon] ([MaHoaDon], [NgayMuaHang], [MaKhachHang], [TrangThai]) VALUES (6, CAST(N'2016-12-01' AS Date), N'KH010', N'CHUA THANH TOÁN               ')
INSERT [dbo].[HoaDon] ([MaHoaDon], [NgayMuaHang], [MaKhachHang], [TrangThai]) VALUES (8, CAST(N'2016-12-11' AS Date), N'kh111', N' chua thanh toan              ')
INSERT [dbo].[HoaDon] ([MaHoaDon], [NgayMuaHang], [MaKhachHang], [TrangThai]) VALUES (9, CAST(N'2016-12-11' AS Date), N'kh111', N' chua thanh toan              ')
INSERT [dbo].[HoaDon] ([MaHoaDon], [NgayMuaHang], [MaKhachHang], [TrangThai]) VALUES (120954, CAST(N'2016-03-23' AS Date), N'KH001', N'Ðã thanh toán                 ')
INSERT [dbo].[HoaDon] ([MaHoaDon], [NgayMuaHang], [MaKhachHang], [TrangThai]) VALUES (120955, CAST(N'2016-04-02' AS Date), N'KH002', N'Ðã thanh toán                 ')
INSERT [dbo].[HoaDon] ([MaHoaDon], [NgayMuaHang], [MaKhachHang], [TrangThai]) VALUES (120956, CAST(N'2016-07-12' AS Date), N'KH001', N'chua thanh toán               ')
INSERT [dbo].[HoaDon] ([MaHoaDon], [NgayMuaHang], [MaKhachHang], [TrangThai]) VALUES (125957, CAST(N'2016-12-04' AS Date), N'KH004', N'chua thanh toán               ')
GO
INSERT [dbo].[HoaDonChiTiet] ([maHoaDon], [maSanPham], [soLuong], [maHoaDonChiTiet]) VALUES (1, 3, 3, 1)
INSERT [dbo].[HoaDonChiTiet] ([maHoaDon], [maSanPham], [soLuong], [maHoaDonChiTiet]) VALUES (3, 2, 4, 2)
INSERT [dbo].[HoaDonChiTiet] ([maHoaDon], [maSanPham], [soLuong], [maHoaDonChiTiet]) VALUES (2, 1, 2, 3)
INSERT [dbo].[HoaDonChiTiet] ([maHoaDon], [maSanPham], [soLuong], [maHoaDonChiTiet]) VALUES (5, 5, 1, 4)
INSERT [dbo].[HoaDonChiTiet] ([maHoaDon], [maSanPham], [soLuong], [maHoaDonChiTiet]) VALUES (4, 4, 3, 5)
INSERT [dbo].[HoaDonChiTiet] ([maHoaDon], [maSanPham], [soLuong], [maHoaDonChiTiet]) VALUES (1, 1, 4, 6)
INSERT [dbo].[HoaDonChiTiet] ([maHoaDon], [maSanPham], [soLuong], [maHoaDonChiTiet]) VALUES (1, 1, 5, 8)
INSERT [dbo].[HoaDonChiTiet] ([maHoaDon], [maSanPham], [soLuong], [maHoaDonChiTiet]) VALUES (1, 1, 4, 9)
INSERT [dbo].[HoaDonChiTiet] ([maHoaDon], [maSanPham], [soLuong], [maHoaDonChiTiet]) VALUES (1, 1, 4, 10)
INSERT [dbo].[HoaDonChiTiet] ([maHoaDon], [maSanPham], [soLuong], [maHoaDonChiTiet]) VALUES (6, 6, 4, 11)
INSERT [dbo].[HoaDonChiTiet] ([maHoaDon], [maSanPham], [soLuong], [maHoaDonChiTiet]) VALUES (120954, 3, 40, 1)
INSERT [dbo].[HoaDonChiTiet] ([maHoaDon], [maSanPham], [soLuong], [maHoaDonChiTiet]) VALUES (120954, 1, 20, 2)
INSERT [dbo].[HoaDonChiTiet] ([maHoaDon], [maSanPham], [soLuong], [maHoaDonChiTiet]) VALUES (120955, 2, 100, 3)
INSERT [dbo].[HoaDonChiTiet] ([maHoaDon], [maSanPham], [soLuong], [maHoaDonChiTiet]) VALUES (120956, 4, 6, 4)
INSERT [dbo].[HoaDonChiTiet] ([maHoaDon], [maSanPham], [soLuong], [maHoaDonChiTiet]) VALUES (120956, 2, 60, 5)
INSERT [dbo].[HoaDonChiTiet] ([maHoaDon], [maSanPham], [soLuong], [maHoaDonChiTiet]) VALUES (120956, 1, 10, 6)
INSERT [dbo].[HoaDonChiTiet] ([maHoaDon], [maSanPham], [soLuong], [maHoaDonChiTiet]) VALUES (125957, 2, 50, 7)
GO
INSERT [dbo].[KhachHang] ([maKhachHang], [hoVaTenLot], [Ten], [diaChi], [Email], [dienThoai]) VALUES (N'KH001', N'Nguyễn Hoàng                                      ', N'Thanh                                             ', N'Tân Châu                                                                                                                                                                                                                                                       ', N'hoangthanh@gmail.com                              ', N'0451236544   ')
INSERT [dbo].[KhachHang] ([maKhachHang], [hoVaTenLot], [Ten], [diaChi], [Email], [dienThoai]) VALUES (N'KH002', N'Phạm Thanh                                        ', N'Hoàng                                             ', N'Đà Nẵng                                                                                                                                                                                                                                                        ', N'thanhtuan@gmail.com                               ', N'16267788989  ')
INSERT [dbo].[KhachHang] ([maKhachHang], [hoVaTenLot], [Ten], [diaChi], [Email], [dienThoai]) VALUES (N'KH003', N'Nguyễn Thanh                                      ', N'Bá                                                ', N'Đà Nẵng                                                                                                                                                                                                                                                        ', N'thanhba@gmail.com                                 ', N'0334455113   ')
INSERT [dbo].[KhachHang] ([maKhachHang], [hoVaTenLot], [Ten], [diaChi], [Email], [dienThoai]) VALUES (N'KH006', N'Nguyện Thanh                                      ', N'Thanh                                             ', N'Châu Đốc                                                                                                                                                                                                                                                       ', N'thanhthanh@gmail.com                              ', N'0123654789   ')
INSERT [dbo].[KhachHang] ([maKhachHang], [hoVaTenLot], [Ten], [diaChi], [Email], [dienThoai]) VALUES (NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[KhachHang] ([maKhachHang], [hoVaTenLot], [Ten], [diaChi], [Email], [dienThoai]) VALUES (N'KH006', N'Nguy?n Th?                                        ', N'Nga                                               ', N'15 Quang Trung TP Ðà N?ng                                                                                                                                                                                                                                      ', N'ngant@gamil.com                                   ', N'0912345670   ')
GO
INSERT [dbo].[LOAISACH] ([MaLoai], [TenLoai]) VALUES (N'L044', N'Chính trị học')
INSERT [dbo].[LOAISACH] ([MaLoai], [TenLoai]) VALUES (N'IT', N'Công nghệ thông tin')
INSERT [dbo].[LOAISACH] ([MaLoai], [TenLoai]) VALUES (N'L005', N'Khoa học tự nhiên')
INSERT [dbo].[LOAISACH] ([MaLoai], [TenLoai]) VALUES (N'L043', N'Khoa học viễn tưởng')
INSERT [dbo].[LOAISACH] ([MaLoai], [TenLoai]) VALUES (N'L001', N'Kinh tế')
INSERT [dbo].[LOAISACH] ([MaLoai], [TenLoai]) VALUES (N'L003', N'Sách ngoại ngữ')
INSERT [dbo].[LOAISACH] ([MaLoai], [TenLoai]) VALUES (N'L004', N'Sách thiếu nhi')
INSERT [dbo].[LOAISACH] ([MaLoai], [TenLoai]) VALUES (N'L021', N'Thể dục')
INSERT [dbo].[LOAISACH] ([MaLoai], [TenLoai]) VALUES (N'L022', N'Thể thao')
INSERT [dbo].[LOAISACH] ([MaLoai], [TenLoai]) VALUES (N'L042', N'Thiếu nhi')
INSERT [dbo].[LOAISACH] ([MaLoai], [TenLoai]) VALUES (N'L024', N'Tiểu thuyết cổ điển')
INSERT [dbo].[LOAISACH] ([MaLoai], [TenLoai]) VALUES (N'L025', N'Văn hóa lịch sử Việt Nam')
INSERT [dbo].[LOAISACH] ([MaLoai], [TenLoai]) VALUES (N'L045', N'Văn hóa thế giới')
INSERT [dbo].[LOAISACH] ([MaLoai], [TenLoai]) VALUES (N'L041', N'Văn học nước ngoài')
INSERT [dbo].[LOAISACH] ([MaLoai], [TenLoai]) VALUES (N'L023', N'Văn học Việt Nam')
GO
INSERT [dbo].[NHAXUATBAN] ([MaNhaXuatBan], [TenNhaXuatBan]) VALUES (N'NXB001', N'Nhà Xuất Bản Trẻ')
INSERT [dbo].[NHAXUATBAN] ([MaNhaXuatBan], [TenNhaXuatBan]) VALUES (N'NXB002', N'Nhà Xuất Bản Kim Đồng')
INSERT [dbo].[NHAXUATBAN] ([MaNhaXuatBan], [TenNhaXuatBan]) VALUES (N'NXB003', N'Nhà Xuất Bản Bloomsbury')
INSERT [dbo].[NHAXUATBAN] ([MaNhaXuatBan], [TenNhaXuatBan]) VALUES (N'NXB004', N'Nhà Xuất Bản Nhi Đồng')
INSERT [dbo].[NHAXUATBAN] ([MaNhaXuatBan], [TenNhaXuatBan]) VALUES (N'NXB005', N'Nhà Xuất Bản Văn Học')
INSERT [dbo].[NHAXUATBAN] ([MaNhaXuatBan], [TenNhaXuatBan]) VALUES (N'NXB006', N'Nhà Xuất Bản SQL')
INSERT [dbo].[NHAXUATBAN] ([MaNhaXuatBan], [TenNhaXuatBan]) VALUES (N'NXB021', N'Nhà Xuất Bản Trẻ')
INSERT [dbo].[NHAXUATBAN] ([MaNhaXuatBan], [TenNhaXuatBan]) VALUES (N'NXB022', N'Nhà Xuất Bản Giáo Dục')
INSERT [dbo].[NHAXUATBAN] ([MaNhaXuatBan], [TenNhaXuatBan]) VALUES (N'NXB023', N'Nhà Xuất Bản Thế Giới')
INSERT [dbo].[NHAXUATBAN] ([MaNhaXuatBan], [TenNhaXuatBan]) VALUES (N'NXB024', N'Nhà Xuất Bản Hội Nhà Văn')
INSERT [dbo].[NHAXUATBAN] ([MaNhaXuatBan], [TenNhaXuatBan]) VALUES (N'NXB025', N'Nhà Xuất Bản Kim Đồng')
INSERT [dbo].[NHAXUATBAN] ([MaNhaXuatBan], [TenNhaXuatBan]) VALUES (N'NXB041', N'Nhà Xuất Bản Hà Nội')
INSERT [dbo].[NHAXUATBAN] ([MaNhaXuatBan], [TenNhaXuatBan]) VALUES (N'NXB042', N'Nhà Xuất Bản Văn Học')
INSERT [dbo].[NHAXUATBAN] ([MaNhaXuatBan], [TenNhaXuatBan]) VALUES (N'NXB043', N'Nhà Xuất Bản Chính Trị')
INSERT [dbo].[NHAXUATBAN] ([MaNhaXuatBan], [TenNhaXuatBan]) VALUES (N'NXB044', N'Nhà Xuất Bản Văn Nghệ')
INSERT [dbo].[NHAXUATBAN] ([MaNhaXuatBan], [TenNhaXuatBan]) VALUES (N'NXB045', N'Nhà Xuất Bản Thanh Niên')
GO
SET IDENTITY_INSERT [dbo].[PHIEUMUON] ON 

INSERT [dbo].[PHIEUMUON] ([MaPhieuMuon], [NgayMuon], [NgayTra], [TrangThai], [MaSinhVien]) VALUES (2, CAST(N'2023-08-09' AS Date), CAST(N'2023-09-22' AS Date), N'Đã trả sách', N'SV002')
INSERT [dbo].[PHIEUMUON] ([MaPhieuMuon], [NgayMuon], [NgayTra], [TrangThai], [MaSinhVien]) VALUES (3, CAST(N'2017-01-01' AS Date), CAST(N'2017-01-14' AS Date), N'ĐÃ TRẢ SÁCH', N'PD12301')
INSERT [dbo].[PHIEUMUON] ([MaPhieuMuon], [NgayMuon], [NgayTra], [TrangThai], [MaSinhVien]) VALUES (4, CAST(N'2023-08-09' AS Date), CAST(N'2023-09-22' AS Date), N'Đã trả sách', N'SV004')
INSERT [dbo].[PHIEUMUON] ([MaPhieuMuon], [NgayMuon], [NgayTra], [TrangThai], [MaSinhVien]) VALUES (5, CAST(N'2023-08-10' AS Date), CAST(N'2023-08-16' AS Date), N'Chưa trả sách', N'SV005')
INSERT [dbo].[PHIEUMUON] ([MaPhieuMuon], [NgayMuon], [NgayTra], [TrangThai], [MaSinhVien]) VALUES (6, CAST(N'2023-08-09' AS Date), CAST(N'2023-08-16' AS Date), N'Đã trả', N'SV021')
INSERT [dbo].[PHIEUMUON] ([MaPhieuMuon], [NgayMuon], [NgayTra], [TrangThai], [MaSinhVien]) VALUES (7, CAST(N'2023-08-10' AS Date), CAST(N'2023-08-17' AS Date), N'Đã trả', N'SV022')
INSERT [dbo].[PHIEUMUON] ([MaPhieuMuon], [NgayMuon], [NgayTra], [TrangThai], [MaSinhVien]) VALUES (8, CAST(N'2023-08-11' AS Date), CAST(N'2023-08-18' AS Date), N'Đã trả', N'SV023')
INSERT [dbo].[PHIEUMUON] ([MaPhieuMuon], [NgayMuon], [NgayTra], [TrangThai], [MaSinhVien]) VALUES (9, CAST(N'2023-08-12' AS Date), CAST(N'2023-08-19' AS Date), N'Đã trả', N'SV024')
INSERT [dbo].[PHIEUMUON] ([MaPhieuMuon], [NgayMuon], [NgayTra], [TrangThai], [MaSinhVien]) VALUES (10, CAST(N'2023-08-13' AS Date), CAST(N'2023-08-22' AS Date), N'Chưa trả sách', N'SV025')
INSERT [dbo].[PHIEUMUON] ([MaPhieuMuon], [NgayMuon], [NgayTra], [TrangThai], [MaSinhVien]) VALUES (11, CAST(N'2023-08-27' AS Date), CAST(N'2023-09-03' AS Date), N'Đã trả', N'SV041')
INSERT [dbo].[PHIEUMUON] ([MaPhieuMuon], [NgayMuon], [NgayTra], [TrangThai], [MaSinhVien]) VALUES (12, CAST(N'2023-08-28' AS Date), CAST(N'2023-09-04' AS Date), N'Đã trả', N'SV042')
INSERT [dbo].[PHIEUMUON] ([MaPhieuMuon], [NgayMuon], [NgayTra], [TrangThai], [MaSinhVien]) VALUES (13, CAST(N'2023-08-29' AS Date), CAST(N'2023-09-05' AS Date), N'Đã trả', N'SV043')
INSERT [dbo].[PHIEUMUON] ([MaPhieuMuon], [NgayMuon], [NgayTra], [TrangThai], [MaSinhVien]) VALUES (14, CAST(N'2023-08-30' AS Date), CAST(N'2023-09-06' AS Date), N'Đã trả', N'SV044')
INSERT [dbo].[PHIEUMUON] ([MaPhieuMuon], [NgayMuon], [NgayTra], [TrangThai], [MaSinhVien]) VALUES (15, CAST(N'2023-08-31' AS Date), CAST(N'2023-09-22' AS Date), N'Chưa trả sách', N'SV045')
INSERT [dbo].[PHIEUMUON] ([MaPhieuMuon], [NgayMuon], [NgayTra], [TrangThai], [MaSinhVien]) VALUES (16, CAST(N'2023-09-01' AS Date), CAST(N'2023-09-08' AS Date), N'Đã trả', N'SV006')
INSERT [dbo].[PHIEUMUON] ([MaPhieuMuon], [NgayMuon], [NgayTra], [TrangThai], [MaSinhVien]) VALUES (17, CAST(N'2023-09-02' AS Date), CAST(N'2023-09-09' AS Date), N'Đã trả', N'SV006')
INSERT [dbo].[PHIEUMUON] ([MaPhieuMuon], [NgayMuon], [NgayTra], [TrangThai], [MaSinhVien]) VALUES (18, CAST(N'2023-09-03' AS Date), CAST(N'2023-09-10' AS Date), N'Đã trả', N'SV006')
INSERT [dbo].[PHIEUMUON] ([MaPhieuMuon], [NgayMuon], [NgayTra], [TrangThai], [MaSinhVien]) VALUES (19, CAST(N'2023-09-04' AS Date), CAST(N'2023-09-11' AS Date), N'Đã trả', N'SV006')
INSERT [dbo].[PHIEUMUON] ([MaPhieuMuon], [NgayMuon], [NgayTra], [TrangThai], [MaSinhVien]) VALUES (20, CAST(N'2023-09-05' AS Date), CAST(N'2023-09-12' AS Date), N'Đã trả', N'SV006')
INSERT [dbo].[PHIEUMUON] ([MaPhieuMuon], [NgayMuon], [NgayTra], [TrangThai], [MaSinhVien]) VALUES (21, CAST(N'2023-09-06' AS Date), CAST(N'2023-09-13' AS Date), N'Đã trả', N'SV006')
INSERT [dbo].[PHIEUMUON] ([MaPhieuMuon], [NgayMuon], [NgayTra], [TrangThai], [MaSinhVien]) VALUES (22, CAST(N'2023-09-07' AS Date), CAST(N'2023-09-14' AS Date), N'Đã trả', N'SV006')
INSERT [dbo].[PHIEUMUON] ([MaPhieuMuon], [NgayMuon], [NgayTra], [TrangThai], [MaSinhVien]) VALUES (23, CAST(N'2023-09-08' AS Date), CAST(N'2023-09-15' AS Date), N'Đã trả', N'SV006')
INSERT [dbo].[PHIEUMUON] ([MaPhieuMuon], [NgayMuon], [NgayTra], [TrangThai], [MaSinhVien]) VALUES (24, CAST(N'2023-09-09' AS Date), CAST(N'2023-09-16' AS Date), N'Đã trả', N'SV006')
INSERT [dbo].[PHIEUMUON] ([MaPhieuMuon], [NgayMuon], [NgayTra], [TrangThai], [MaSinhVien]) VALUES (25, CAST(N'2023-09-10' AS Date), CAST(N'2023-09-17' AS Date), N'Chưa trả sách', N'SV006')
INSERT [dbo].[PHIEUMUON] ([MaPhieuMuon], [NgayMuon], [NgayTra], [TrangThai], [MaSinhVien]) VALUES (26, CAST(N'2023-09-11' AS Date), CAST(N'2023-09-18' AS Date), N'Đã trả', N'SV006')
INSERT [dbo].[PHIEUMUON] ([MaPhieuMuon], [NgayMuon], [NgayTra], [TrangThai], [MaSinhVien]) VALUES (27, CAST(N'2023-09-12' AS Date), CAST(N'2023-09-19' AS Date), N'Đã trả', N'SV006')
INSERT [dbo].[PHIEUMUON] ([MaPhieuMuon], [NgayMuon], [NgayTra], [TrangThai], [MaSinhVien]) VALUES (28, CAST(N'2023-09-13' AS Date), CAST(N'2023-09-20' AS Date), N'Đã trả', N'SV006')
INSERT [dbo].[PHIEUMUON] ([MaPhieuMuon], [NgayMuon], [NgayTra], [TrangThai], [MaSinhVien]) VALUES (29, CAST(N'2023-09-14' AS Date), CAST(N'2023-09-21' AS Date), N'Đã trả', N'SV006')
INSERT [dbo].[PHIEUMUON] ([MaPhieuMuon], [NgayMuon], [NgayTra], [TrangThai], [MaSinhVien]) VALUES (30, CAST(N'2023-09-15' AS Date), CAST(N'2023-09-22' AS Date), N'Đã trả', N'SV006')
INSERT [dbo].[PHIEUMUON] ([MaPhieuMuon], [NgayMuon], [NgayTra], [TrangThai], [MaSinhVien]) VALUES (31, CAST(N'2023-09-16' AS Date), CAST(N'2023-09-23' AS Date), N'Đã trả', N'SV006')
INSERT [dbo].[PHIEUMUON] ([MaPhieuMuon], [NgayMuon], [NgayTra], [TrangThai], [MaSinhVien]) VALUES (32, CAST(N'2023-09-17' AS Date), CAST(N'2023-09-24' AS Date), N'Đã trả', N'SV006')
INSERT [dbo].[PHIEUMUON] ([MaPhieuMuon], [NgayMuon], [NgayTra], [TrangThai], [MaSinhVien]) VALUES (33, CAST(N'2023-09-18' AS Date), CAST(N'2023-09-25' AS Date), N'Đã trả', N'SV006')
INSERT [dbo].[PHIEUMUON] ([MaPhieuMuon], [NgayMuon], [NgayTra], [TrangThai], [MaSinhVien]) VALUES (34, CAST(N'2023-09-19' AS Date), CAST(N'2023-09-26' AS Date), N'Đã trả', N'SV006')
INSERT [dbo].[PHIEUMUON] ([MaPhieuMuon], [NgayMuon], [NgayTra], [TrangThai], [MaSinhVien]) VALUES (35, CAST(N'2023-09-20' AS Date), CAST(N'2023-09-27' AS Date), N'Đã trả', N'SV006')
INSERT [dbo].[PHIEUMUON] ([MaPhieuMuon], [NgayMuon], [NgayTra], [TrangThai], [MaSinhVien]) VALUES (36, CAST(N'2009-01-01' AS Date), CAST(N'2009-01-05' AS Date), N'Chưa trả sách', N'SV001')
INSERT [dbo].[PHIEUMUON] ([MaPhieuMuon], [NgayMuon], [NgayTra], [TrangThai], [MaSinhVien]) VALUES (37, CAST(N'2023-08-09' AS Date), CAST(N'2023-09-22' AS Date), N'Đã trả sách', N'SV002')
INSERT [dbo].[PHIEUMUON] ([MaPhieuMuon], [NgayMuon], [NgayTra], [TrangThai], [MaSinhVien]) VALUES (38, CAST(N'2017-01-01' AS Date), CAST(N'2017-01-14' AS Date), N'ĐÃ TRẢ SÁCH', N'PD12301')
INSERT [dbo].[PHIEUMUON] ([MaPhieuMuon], [NgayMuon], [NgayTra], [TrangThai], [MaSinhVien]) VALUES (39, CAST(N'2023-08-09' AS Date), CAST(N'2023-09-22' AS Date), N'Đã trả sách', N'SV004')
INSERT [dbo].[PHIEUMUON] ([MaPhieuMuon], [NgayMuon], [NgayTra], [TrangThai], [MaSinhVien]) VALUES (40, CAST(N'2023-08-10' AS Date), CAST(N'2023-08-16' AS Date), N'Chưa trả sách', N'SV005')
INSERT [dbo].[PHIEUMUON] ([MaPhieuMuon], [NgayMuon], [NgayTra], [TrangThai], [MaSinhVien]) VALUES (41, CAST(N'2023-08-09' AS Date), CAST(N'2023-08-16' AS Date), N'Đã trả', N'SV021')
INSERT [dbo].[PHIEUMUON] ([MaPhieuMuon], [NgayMuon], [NgayTra], [TrangThai], [MaSinhVien]) VALUES (42, CAST(N'2023-08-10' AS Date), CAST(N'2023-08-17' AS Date), N'Đã trả', N'SV022')
INSERT [dbo].[PHIEUMUON] ([MaPhieuMuon], [NgayMuon], [NgayTra], [TrangThai], [MaSinhVien]) VALUES (43, CAST(N'2023-08-11' AS Date), CAST(N'2023-08-18' AS Date), N'Đã trả', N'SV023')
INSERT [dbo].[PHIEUMUON] ([MaPhieuMuon], [NgayMuon], [NgayTra], [TrangThai], [MaSinhVien]) VALUES (44, CAST(N'2023-08-12' AS Date), CAST(N'2023-08-19' AS Date), N'Đã trả', N'SV024')
INSERT [dbo].[PHIEUMUON] ([MaPhieuMuon], [NgayMuon], [NgayTra], [TrangThai], [MaSinhVien]) VALUES (45, CAST(N'2023-08-13' AS Date), CAST(N'2023-08-22' AS Date), N'Chưa trả sách', N'SV025')
INSERT [dbo].[PHIEUMUON] ([MaPhieuMuon], [NgayMuon], [NgayTra], [TrangThai], [MaSinhVien]) VALUES (46, CAST(N'2023-08-27' AS Date), CAST(N'2023-09-03' AS Date), N'Đã trả', N'SV041')
INSERT [dbo].[PHIEUMUON] ([MaPhieuMuon], [NgayMuon], [NgayTra], [TrangThai], [MaSinhVien]) VALUES (47, CAST(N'2023-08-28' AS Date), CAST(N'2023-09-04' AS Date), N'Đã trả', N'SV042')
INSERT [dbo].[PHIEUMUON] ([MaPhieuMuon], [NgayMuon], [NgayTra], [TrangThai], [MaSinhVien]) VALUES (48, CAST(N'2023-08-29' AS Date), CAST(N'2023-09-05' AS Date), N'Đã trả', N'SV043')
INSERT [dbo].[PHIEUMUON] ([MaPhieuMuon], [NgayMuon], [NgayTra], [TrangThai], [MaSinhVien]) VALUES (49, CAST(N'2023-08-30' AS Date), CAST(N'2023-09-06' AS Date), N'Đã trả', N'SV044')
INSERT [dbo].[PHIEUMUON] ([MaPhieuMuon], [NgayMuon], [NgayTra], [TrangThai], [MaSinhVien]) VALUES (50, CAST(N'2023-08-31' AS Date), CAST(N'2023-09-22' AS Date), N'Chưa trả sách', N'SV045')
INSERT [dbo].[PHIEUMUON] ([MaPhieuMuon], [NgayMuon], [NgayTra], [TrangThai], [MaSinhVien]) VALUES (51, CAST(N'2023-09-01' AS Date), CAST(N'2023-09-08' AS Date), N'Đã trả', N'SV006')
INSERT [dbo].[PHIEUMUON] ([MaPhieuMuon], [NgayMuon], [NgayTra], [TrangThai], [MaSinhVien]) VALUES (52, CAST(N'2023-09-02' AS Date), CAST(N'2023-09-09' AS Date), N'Đã trả', N'SV006')
INSERT [dbo].[PHIEUMUON] ([MaPhieuMuon], [NgayMuon], [NgayTra], [TrangThai], [MaSinhVien]) VALUES (53, CAST(N'2023-09-03' AS Date), CAST(N'2023-09-10' AS Date), N'Đã trả', N'SV006')
INSERT [dbo].[PHIEUMUON] ([MaPhieuMuon], [NgayMuon], [NgayTra], [TrangThai], [MaSinhVien]) VALUES (54, CAST(N'2023-09-04' AS Date), CAST(N'2023-09-11' AS Date), N'Đã trả', N'SV006')
INSERT [dbo].[PHIEUMUON] ([MaPhieuMuon], [NgayMuon], [NgayTra], [TrangThai], [MaSinhVien]) VALUES (55, CAST(N'2023-09-05' AS Date), CAST(N'2023-09-12' AS Date), N'Đã trả', N'SV006')
INSERT [dbo].[PHIEUMUON] ([MaPhieuMuon], [NgayMuon], [NgayTra], [TrangThai], [MaSinhVien]) VALUES (56, CAST(N'2023-09-06' AS Date), CAST(N'2023-09-13' AS Date), N'Đã trả', N'SV006')
INSERT [dbo].[PHIEUMUON] ([MaPhieuMuon], [NgayMuon], [NgayTra], [TrangThai], [MaSinhVien]) VALUES (57, CAST(N'2023-09-07' AS Date), CAST(N'2023-09-14' AS Date), N'Đã trả', N'SV006')
INSERT [dbo].[PHIEUMUON] ([MaPhieuMuon], [NgayMuon], [NgayTra], [TrangThai], [MaSinhVien]) VALUES (58, CAST(N'2023-09-08' AS Date), CAST(N'2023-09-15' AS Date), N'Đã trả', N'SV006')
INSERT [dbo].[PHIEUMUON] ([MaPhieuMuon], [NgayMuon], [NgayTra], [TrangThai], [MaSinhVien]) VALUES (59, CAST(N'2023-09-09' AS Date), CAST(N'2023-09-16' AS Date), N'Đã trả', N'SV006')
INSERT [dbo].[PHIEUMUON] ([MaPhieuMuon], [NgayMuon], [NgayTra], [TrangThai], [MaSinhVien]) VALUES (60, CAST(N'2023-09-10' AS Date), CAST(N'2023-09-17' AS Date), N'Chưa trả sách', N'SV006')
INSERT [dbo].[PHIEUMUON] ([MaPhieuMuon], [NgayMuon], [NgayTra], [TrangThai], [MaSinhVien]) VALUES (61, CAST(N'2023-09-11' AS Date), CAST(N'2023-09-18' AS Date), N'Đã trả', N'SV006')
INSERT [dbo].[PHIEUMUON] ([MaPhieuMuon], [NgayMuon], [NgayTra], [TrangThai], [MaSinhVien]) VALUES (62, CAST(N'2023-09-12' AS Date), CAST(N'2023-09-19' AS Date), N'Đã trả', N'SV006')
INSERT [dbo].[PHIEUMUON] ([MaPhieuMuon], [NgayMuon], [NgayTra], [TrangThai], [MaSinhVien]) VALUES (63, CAST(N'2023-09-13' AS Date), CAST(N'2023-09-20' AS Date), N'Đã trả', N'SV006')
INSERT [dbo].[PHIEUMUON] ([MaPhieuMuon], [NgayMuon], [NgayTra], [TrangThai], [MaSinhVien]) VALUES (64, CAST(N'2023-09-14' AS Date), CAST(N'2023-09-21' AS Date), N'Đã trả', N'SV006')
INSERT [dbo].[PHIEUMUON] ([MaPhieuMuon], [NgayMuon], [NgayTra], [TrangThai], [MaSinhVien]) VALUES (65, CAST(N'2023-09-15' AS Date), CAST(N'2023-09-22' AS Date), N'Đã trả', N'SV006')
INSERT [dbo].[PHIEUMUON] ([MaPhieuMuon], [NgayMuon], [NgayTra], [TrangThai], [MaSinhVien]) VALUES (66, CAST(N'2023-09-16' AS Date), CAST(N'2023-09-23' AS Date), N'Đã trả', N'SV006')
INSERT [dbo].[PHIEUMUON] ([MaPhieuMuon], [NgayMuon], [NgayTra], [TrangThai], [MaSinhVien]) VALUES (67, CAST(N'2023-09-17' AS Date), CAST(N'2023-09-24' AS Date), N'Đã trả', N'SV006')
INSERT [dbo].[PHIEUMUON] ([MaPhieuMuon], [NgayMuon], [NgayTra], [TrangThai], [MaSinhVien]) VALUES (68, CAST(N'2023-09-18' AS Date), CAST(N'2023-09-25' AS Date), N'Đã trả', N'SV006')
INSERT [dbo].[PHIEUMUON] ([MaPhieuMuon], [NgayMuon], [NgayTra], [TrangThai], [MaSinhVien]) VALUES (69, CAST(N'2023-09-19' AS Date), CAST(N'2023-09-26' AS Date), N'Đã trả', N'SV006')
INSERT [dbo].[PHIEUMUON] ([MaPhieuMuon], [NgayMuon], [NgayTra], [TrangThai], [MaSinhVien]) VALUES (70, CAST(N'2023-09-20' AS Date), CAST(N'2023-09-27' AS Date), N'Đã trả', N'SV006')
INSERT [dbo].[PHIEUMUON] ([MaPhieuMuon], [NgayMuon], [NgayTra], [TrangThai], [MaSinhVien]) VALUES (71, CAST(N'2009-01-01' AS Date), CAST(N'2009-01-05' AS Date), N'Chưa trả sách', N'SV001')
INSERT [dbo].[PHIEUMUON] ([MaPhieuMuon], [NgayMuon], [NgayTra], [TrangThai], [MaSinhVien]) VALUES (72, CAST(N'2023-08-09' AS Date), CAST(N'2023-09-22' AS Date), N'Đã trả sách', N'SV002')
INSERT [dbo].[PHIEUMUON] ([MaPhieuMuon], [NgayMuon], [NgayTra], [TrangThai], [MaSinhVien]) VALUES (73, CAST(N'2017-01-01' AS Date), CAST(N'2017-01-14' AS Date), N'ĐÃ TRẢ SÁCH', N'PD12301')
INSERT [dbo].[PHIEUMUON] ([MaPhieuMuon], [NgayMuon], [NgayTra], [TrangThai], [MaSinhVien]) VALUES (74, CAST(N'2023-08-09' AS Date), CAST(N'2023-09-22' AS Date), N'Đã trả sách', N'SV004')
INSERT [dbo].[PHIEUMUON] ([MaPhieuMuon], [NgayMuon], [NgayTra], [TrangThai], [MaSinhVien]) VALUES (75, CAST(N'2023-08-10' AS Date), CAST(N'2023-08-16' AS Date), N'Chưa trả sách', N'SV005')
INSERT [dbo].[PHIEUMUON] ([MaPhieuMuon], [NgayMuon], [NgayTra], [TrangThai], [MaSinhVien]) VALUES (76, CAST(N'2023-08-09' AS Date), CAST(N'2023-08-16' AS Date), N'Đã trả', N'SV021')
INSERT [dbo].[PHIEUMUON] ([MaPhieuMuon], [NgayMuon], [NgayTra], [TrangThai], [MaSinhVien]) VALUES (77, CAST(N'2023-08-10' AS Date), CAST(N'2023-08-17' AS Date), N'Đã trả', N'SV022')
INSERT [dbo].[PHIEUMUON] ([MaPhieuMuon], [NgayMuon], [NgayTra], [TrangThai], [MaSinhVien]) VALUES (78, CAST(N'2023-08-11' AS Date), CAST(N'2023-08-18' AS Date), N'Đã trả', N'SV023')
INSERT [dbo].[PHIEUMUON] ([MaPhieuMuon], [NgayMuon], [NgayTra], [TrangThai], [MaSinhVien]) VALUES (79, CAST(N'2023-08-12' AS Date), CAST(N'2023-08-19' AS Date), N'Đã trả', N'SV024')
INSERT [dbo].[PHIEUMUON] ([MaPhieuMuon], [NgayMuon], [NgayTra], [TrangThai], [MaSinhVien]) VALUES (80, CAST(N'2023-08-13' AS Date), CAST(N'2023-08-22' AS Date), N'Chưa trả sách', N'SV025')
INSERT [dbo].[PHIEUMUON] ([MaPhieuMuon], [NgayMuon], [NgayTra], [TrangThai], [MaSinhVien]) VALUES (81, CAST(N'2023-08-27' AS Date), CAST(N'2023-09-03' AS Date), N'Đã trả', N'SV041')
INSERT [dbo].[PHIEUMUON] ([MaPhieuMuon], [NgayMuon], [NgayTra], [TrangThai], [MaSinhVien]) VALUES (82, CAST(N'2023-08-28' AS Date), CAST(N'2023-09-04' AS Date), N'Đã trả', N'SV042')
INSERT [dbo].[PHIEUMUON] ([MaPhieuMuon], [NgayMuon], [NgayTra], [TrangThai], [MaSinhVien]) VALUES (83, CAST(N'2023-08-29' AS Date), CAST(N'2023-09-05' AS Date), N'Đã trả', N'SV043')
INSERT [dbo].[PHIEUMUON] ([MaPhieuMuon], [NgayMuon], [NgayTra], [TrangThai], [MaSinhVien]) VALUES (84, CAST(N'2023-08-30' AS Date), CAST(N'2023-09-06' AS Date), N'Đã trả', N'SV044')
INSERT [dbo].[PHIEUMUON] ([MaPhieuMuon], [NgayMuon], [NgayTra], [TrangThai], [MaSinhVien]) VALUES (85, CAST(N'2023-08-31' AS Date), CAST(N'2023-09-22' AS Date), N'Chưa trả sách', N'SV045')
INSERT [dbo].[PHIEUMUON] ([MaPhieuMuon], [NgayMuon], [NgayTra], [TrangThai], [MaSinhVien]) VALUES (86, CAST(N'2023-09-01' AS Date), CAST(N'2023-09-08' AS Date), N'Đã trả', N'SV006')
INSERT [dbo].[PHIEUMUON] ([MaPhieuMuon], [NgayMuon], [NgayTra], [TrangThai], [MaSinhVien]) VALUES (87, CAST(N'2023-09-02' AS Date), CAST(N'2023-09-09' AS Date), N'Đã trả', N'SV006')
INSERT [dbo].[PHIEUMUON] ([MaPhieuMuon], [NgayMuon], [NgayTra], [TrangThai], [MaSinhVien]) VALUES (88, CAST(N'2023-09-03' AS Date), CAST(N'2023-09-10' AS Date), N'Đã trả', N'SV006')
INSERT [dbo].[PHIEUMUON] ([MaPhieuMuon], [NgayMuon], [NgayTra], [TrangThai], [MaSinhVien]) VALUES (89, CAST(N'2023-09-04' AS Date), CAST(N'2023-09-11' AS Date), N'Đã trả', N'SV006')
INSERT [dbo].[PHIEUMUON] ([MaPhieuMuon], [NgayMuon], [NgayTra], [TrangThai], [MaSinhVien]) VALUES (90, CAST(N'2023-09-05' AS Date), CAST(N'2023-09-12' AS Date), N'Đã trả', N'SV006')
INSERT [dbo].[PHIEUMUON] ([MaPhieuMuon], [NgayMuon], [NgayTra], [TrangThai], [MaSinhVien]) VALUES (91, CAST(N'2023-09-06' AS Date), CAST(N'2023-09-13' AS Date), N'Đã trả', N'SV006')
INSERT [dbo].[PHIEUMUON] ([MaPhieuMuon], [NgayMuon], [NgayTra], [TrangThai], [MaSinhVien]) VALUES (92, CAST(N'2023-09-07' AS Date), CAST(N'2023-09-14' AS Date), N'Đã trả', N'SV006')
INSERT [dbo].[PHIEUMUON] ([MaPhieuMuon], [NgayMuon], [NgayTra], [TrangThai], [MaSinhVien]) VALUES (93, CAST(N'2023-09-08' AS Date), CAST(N'2023-09-15' AS Date), N'Đã trả', N'SV006')
INSERT [dbo].[PHIEUMUON] ([MaPhieuMuon], [NgayMuon], [NgayTra], [TrangThai], [MaSinhVien]) VALUES (94, CAST(N'2023-09-09' AS Date), CAST(N'2023-09-16' AS Date), N'Đã trả', N'SV006')
INSERT [dbo].[PHIEUMUON] ([MaPhieuMuon], [NgayMuon], [NgayTra], [TrangThai], [MaSinhVien]) VALUES (95, CAST(N'2023-09-10' AS Date), CAST(N'2023-09-17' AS Date), N'Chưa trả sách', N'SV006')
INSERT [dbo].[PHIEUMUON] ([MaPhieuMuon], [NgayMuon], [NgayTra], [TrangThai], [MaSinhVien]) VALUES (96, CAST(N'2023-09-11' AS Date), CAST(N'2023-09-18' AS Date), N'Đã trả', N'SV006')
INSERT [dbo].[PHIEUMUON] ([MaPhieuMuon], [NgayMuon], [NgayTra], [TrangThai], [MaSinhVien]) VALUES (97, CAST(N'2023-09-12' AS Date), CAST(N'2023-09-19' AS Date), N'Đã trả', N'SV006')
INSERT [dbo].[PHIEUMUON] ([MaPhieuMuon], [NgayMuon], [NgayTra], [TrangThai], [MaSinhVien]) VALUES (98, CAST(N'2023-09-13' AS Date), CAST(N'2023-09-20' AS Date), N'Đã trả', N'SV006')
INSERT [dbo].[PHIEUMUON] ([MaPhieuMuon], [NgayMuon], [NgayTra], [TrangThai], [MaSinhVien]) VALUES (99, CAST(N'2023-09-14' AS Date), CAST(N'2023-09-21' AS Date), N'Đã trả', N'SV006')
INSERT [dbo].[PHIEUMUON] ([MaPhieuMuon], [NgayMuon], [NgayTra], [TrangThai], [MaSinhVien]) VALUES (100, CAST(N'2023-09-15' AS Date), CAST(N'2023-09-22' AS Date), N'Đã trả', N'SV006')
GO
INSERT [dbo].[PHIEUMUON] ([MaPhieuMuon], [NgayMuon], [NgayTra], [TrangThai], [MaSinhVien]) VALUES (101, CAST(N'2023-09-16' AS Date), CAST(N'2023-09-23' AS Date), N'Đã trả', N'SV006')
INSERT [dbo].[PHIEUMUON] ([MaPhieuMuon], [NgayMuon], [NgayTra], [TrangThai], [MaSinhVien]) VALUES (102, CAST(N'2023-09-17' AS Date), CAST(N'2023-09-24' AS Date), N'Đã trả', N'SV006')
INSERT [dbo].[PHIEUMUON] ([MaPhieuMuon], [NgayMuon], [NgayTra], [TrangThai], [MaSinhVien]) VALUES (103, CAST(N'2023-09-18' AS Date), CAST(N'2023-09-25' AS Date), N'Đã trả', N'SV006')
INSERT [dbo].[PHIEUMUON] ([MaPhieuMuon], [NgayMuon], [NgayTra], [TrangThai], [MaSinhVien]) VALUES (104, CAST(N'2023-09-19' AS Date), CAST(N'2023-09-26' AS Date), N'Đã trả', N'SV006')
INSERT [dbo].[PHIEUMUON] ([MaPhieuMuon], [NgayMuon], [NgayTra], [TrangThai], [MaSinhVien]) VALUES (105, CAST(N'2023-09-20' AS Date), CAST(N'2023-09-27' AS Date), N'Đã trả', N'SV006')
SET IDENTITY_INSERT [dbo].[PHIEUMUON] OFF
GO
INSERT [dbo].[PHIEUMUONCHITIET] ([MaPhieuMuonChiTiet], [SoThuTu], [GhiChu], [MaPhieuMuon], [MaNhaXuatBan], [MaSach]) VALUES (N'PMCT002', 1, N'Phiếu mượn số 2', 2, N'NXB002', N'MS002')
INSERT [dbo].[PHIEUMUONCHITIET] ([MaPhieuMuonChiTiet], [SoThuTu], [GhiChu], [MaPhieuMuon], [MaNhaXuatBan], [MaSach]) VALUES (N'PMCT003', 1, N'Phiếu mượn số 3', 3, N'NXB003', N'MS003')
INSERT [dbo].[PHIEUMUONCHITIET] ([MaPhieuMuonChiTiet], [SoThuTu], [GhiChu], [MaPhieuMuon], [MaNhaXuatBan], [MaSach]) VALUES (N'PMCT004', 1, N'Phiếu mượn số 4', 4, N'NXB004', N'MS004')
INSERT [dbo].[PHIEUMUONCHITIET] ([MaPhieuMuonChiTiet], [SoThuTu], [GhiChu], [MaPhieuMuon], [MaNhaXuatBan], [MaSach]) VALUES (N'PMCT005', 1, N'Phiếu mượn số 5', 5, N'NXB005', N'MS005')
INSERT [dbo].[PHIEUMUONCHITIET] ([MaPhieuMuonChiTiet], [SoThuTu], [GhiChu], [MaPhieuMuon], [MaNhaXuatBan], [MaSach]) VALUES (N'PMCT021', 1, N'Phiếu mượn số 6', 6, N'NXB021', N'MS021')
INSERT [dbo].[PHIEUMUONCHITIET] ([MaPhieuMuonChiTiet], [SoThuTu], [GhiChu], [MaPhieuMuon], [MaNhaXuatBan], [MaSach]) VALUES (N'PMCT022', 1, N'Phiếu mượn số 7', 7, N'NXB022', N'MS022')
INSERT [dbo].[PHIEUMUONCHITIET] ([MaPhieuMuonChiTiet], [SoThuTu], [GhiChu], [MaPhieuMuon], [MaNhaXuatBan], [MaSach]) VALUES (N'PMCT023', 1, N'Phiếu mượn số 8', 8, N'NXB023', N'MS023')
INSERT [dbo].[PHIEUMUONCHITIET] ([MaPhieuMuonChiTiet], [SoThuTu], [GhiChu], [MaPhieuMuon], [MaNhaXuatBan], [MaSach]) VALUES (N'PMCT024', 1, N'Phiếu mượn số 9', 9, N'NXB024', N'MS024')
INSERT [dbo].[PHIEUMUONCHITIET] ([MaPhieuMuonChiTiet], [SoThuTu], [GhiChu], [MaPhieuMuon], [MaNhaXuatBan], [MaSach]) VALUES (N'PMCT025', 1, N'Phiếu mượn số 10', 10, N'NXB025', N'MS025')
INSERT [dbo].[PHIEUMUONCHITIET] ([MaPhieuMuonChiTiet], [SoThuTu], [GhiChu], [MaPhieuMuon], [MaNhaXuatBan], [MaSach]) VALUES (N'PMCT041', 1, N'Phiếu mượn số 11', 11, N'NXB041', N'MS041')
INSERT [dbo].[PHIEUMUONCHITIET] ([MaPhieuMuonChiTiet], [SoThuTu], [GhiChu], [MaPhieuMuon], [MaNhaXuatBan], [MaSach]) VALUES (N'PMCT042', 1, N'Phiếu mượn số 12', 12, N'NXB042', N'MS042')
INSERT [dbo].[PHIEUMUONCHITIET] ([MaPhieuMuonChiTiet], [SoThuTu], [GhiChu], [MaPhieuMuon], [MaNhaXuatBan], [MaSach]) VALUES (N'PMCT043', 1, N'Phiếu mượn số 13', 13, N'NXB043', N'MS043')
INSERT [dbo].[PHIEUMUONCHITIET] ([MaPhieuMuonChiTiet], [SoThuTu], [GhiChu], [MaPhieuMuon], [MaNhaXuatBan], [MaSach]) VALUES (N'PMCT044', 1, N'Phiếu mượn số 14', 14, N'NXB044', N'MS044')
INSERT [dbo].[PHIEUMUONCHITIET] ([MaPhieuMuonChiTiet], [SoThuTu], [GhiChu], [MaPhieuMuon], [MaNhaXuatBan], [MaSach]) VALUES (N'PMCT045', 1, N'Phiếu mượn số 15', 15, N'NXB045', N'MS045')
GO
INSERT [dbo].[SACH] ([MaSach], [TieuDe], [TenSach], [SoTrang], [SLBS], [GiaTien], [NgayNhapKho], [MaViTri], [MaLoai], [MaNhaXuatBan]) VALUES (N'MS001', N'Chuyện Kinh Tế 1', N'Chuyen Kinh Te 1', 200, 3, 13720.0000, CAST(N'2013-08-06' AS Date), N'VT001', N'L001', N'NXB001')
INSERT [dbo].[SACH] ([MaSach], [TieuDe], [TenSach], [SoTrang], [SLBS], [GiaTien], [NgayNhapKho], [MaViTri], [MaLoai], [MaNhaXuatBan]) VALUES (N'MS002', N'Học SQL cơ bản', N'Chuyen SQL', 250, 5, 55000.0000, CAST(N'2023-08-06' AS Date), N'VT002', N'IT', N'NXB002')
INSERT [dbo].[SACH] ([MaSach], [TieuDe], [TenSach], [SoTrang], [SLBS], [GiaTien], [NgayNhapKho], [MaViTri], [MaLoai], [MaNhaXuatBan]) VALUES (N'MS003', N'Tin Học Căn Bản', N'Tin Hoc Can Ban', 180, 4, 50000.0000, CAST(N'2023-08-06' AS Date), N'VT003', N'IT', N'NXB003')
INSERT [dbo].[SACH] ([MaSach], [TieuDe], [TenSach], [SoTrang], [SLBS], [GiaTien], [NgayNhapKho], [MaViTri], [MaLoai], [MaNhaXuatBan]) VALUES (N'MS004', N'Lập Trình Python', N'Lap Trinh Python', 300, 6, 75000.0000, CAST(N'2023-08-06' AS Date), N'VT004', N'IT', N'NXB004')
INSERT [dbo].[SACH] ([MaSach], [TieuDe], [TenSach], [SoTrang], [SLBS], [GiaTien], [NgayNhapKho], [MaViTri], [MaLoai], [MaNhaXuatBan]) VALUES (N'MS005', N'Du Lịch Vui Vẻ', N'Du Lich Vui Ve', 180, 4, 60000.0000, CAST(N'2023-08-06' AS Date), N'VT005', N'L004', N'NXB005')
INSERT [dbo].[SACH] ([MaSach], [TieuDe], [TenSach], [SoTrang], [SLBS], [GiaTien], [NgayNhapKho], [MaViTri], [MaLoai], [MaNhaXuatBan]) VALUES (N'MS006', N'Du Lịch Vui Vẻ', N'Du Lich Vui Ve', 180, 9, 60000.0000, CAST(N'2023-08-06' AS Date), N'VT005', N'L004', N'NXB005')
INSERT [dbo].[SACH] ([MaSach], [TieuDe], [TenSach], [SoTrang], [SLBS], [GiaTien], [NgayNhapKho], [MaViTri], [MaLoai], [MaNhaXuatBan]) VALUES (N'MS021', N'Tiếng Anh cơ bản', N'Tiếng Anh cơ bản', 150, 3, 120000.0000, CAST(N'2023-08-09' AS Date), N'VT021', N'L021', N'NXB021')
INSERT [dbo].[SACH] ([MaSach], [TieuDe], [TenSach], [SoTrang], [SLBS], [GiaTien], [NgayNhapKho], [MaViTri], [MaLoai], [MaNhaXuatBan]) VALUES (N'MS022', N'Kỹ thuật hóa học ứng dụng', N'Kỹ thuật hóa học ứng dụng', 320, 8, 230000.0000, CAST(N'2023-08-10' AS Date), N'VT022', N'L022', N'NXB022')
INSERT [dbo].[SACH] ([MaSach], [TieuDe], [TenSach], [SoTrang], [SLBS], [GiaTien], [NgayNhapKho], [MaViTri], [MaLoai], [MaNhaXuatBan]) VALUES (N'MS023', N'Học kỹ năng SQL', N'Học kỹ năng SQL', 180, 6, 150000.0000, CAST(N'2023-08-11' AS Date), N'VT023', N'L023', N'NXB023')
INSERT [dbo].[SACH] ([MaSach], [TieuDe], [TenSach], [SoTrang], [SLBS], [GiaTien], [NgayNhapKho], [MaViTri], [MaLoai], [MaNhaXuatBan]) VALUES (N'MS024', N'Đại cương về sinh học', N'Đại cương về sinh học', 220, 5, 180000.0000, CAST(N'2023-08-12' AS Date), N'VT024', N'L024', N'NXB024')
INSERT [dbo].[SACH] ([MaSach], [TieuDe], [TenSach], [SoTrang], [SLBS], [GiaTien], [NgayNhapKho], [MaViTri], [MaLoai], [MaNhaXuatBan]) VALUES (N'MS025', N'Tiếng Nhật cơ bản', N'Tiếng Nhật cơ bản', 160, 4, 110000.0000, CAST(N'2023-08-13' AS Date), N'VT025', N'L025', N'NXB025')
INSERT [dbo].[SACH] ([MaSach], [TieuDe], [TenSach], [SoTrang], [SLBS], [GiaTien], [NgayNhapKho], [MaViTri], [MaLoai], [MaNhaXuatBan]) VALUES (N'MS041', N'Những tiểu thuyết nổi tiếng', N'Những tiểu thuyết nổi tiếng', 400, 12, 300000.0000, CAST(N'2023-08-27' AS Date), N'VT041', N'L041', N'NXB041')
INSERT [dbo].[SACH] ([MaSach], [TieuDe], [TenSach], [SoTrang], [SLBS], [GiaTien], [NgayNhapKho], [MaViTri], [MaLoai], [MaNhaXuatBan]) VALUES (N'MS042', N'Sách cho thiếu nhi', N'Sách cho thiếu nhi', 240, 7, 160000.0000, CAST(N'2023-08-28' AS Date), N'VT042', N'L042', N'NXB042')
INSERT [dbo].[SACH] ([MaSach], [TieuDe], [TenSach], [SoTrang], [SLBS], [GiaTien], [NgayNhapKho], [MaViTri], [MaLoai], [MaNhaXuatBan]) VALUES (N'MS043', N'Khoa học viễn tưởng đỉnh cao', N'Khoa học viễn tưởng đỉnh cao', 480, 10, 340000.0000, CAST(N'2023-08-29' AS Date), N'VT043', N'L043', N'NXB043')
INSERT [dbo].[SACH] ([MaSach], [TieuDe], [TenSach], [SoTrang], [SLBS], [GiaTien], [NgayNhapKho], [MaViTri], [MaLoai], [MaNhaXuatBan]) VALUES (N'MS044', N'Chính trị học hiện đại', N'Chính trị học hiện đại', 300, 9, 250000.0000, CAST(N'2023-08-30' AS Date), N'VT044', N'L044', N'NXB044')
INSERT [dbo].[SACH] ([MaSach], [TieuDe], [TenSach], [SoTrang], [SLBS], [GiaTien], [NgayNhapKho], [MaViTri], [MaLoai], [MaNhaXuatBan]) VALUES (N'MS045', N'Văn hóa thế giới trong lịch sử', N'Văn hóa thế giới trong lịch sử', 360, 11, 270000.0000, CAST(N'2023-08-31' AS Date), N'VT045', N'L045', N'NXB045')
GO
INSERT [dbo].[SanPham] ([MaSanPham], [MoTa], [SoLuong], [DonGia], [TenSP]) VALUES (1, N'Trà xanh không độ                                                                                                                                                                                                                                              ', 1000, 20.0000, N'Trà xanh                                          ')
INSERT [dbo].[SanPham] ([MaSanPham], [MoTa], [SoLuong], [DonGia], [TenSP]) VALUES (2, N'Trà xanh ngon                                                                                                                                                                                                                                                  ', 327, 24.3000, N'Trà xanh                                          ')
INSERT [dbo].[SanPham] ([MaSanPham], [MoTa], [SoLuong], [DonGia], [TenSP]) VALUES (3, N'Mì gói ngon                                                                                                                                                                                                                                                    ', 393, 9.0000, N'Mì Kokomi                                         ')
INSERT [dbo].[SanPham] ([MaSanPham], [MoTa], [SoLuong], [DonGia], [TenSP]) VALUES (4, N'Nước khoáng                                                                                                                                                                                                                                                    ', 400, 16.2000, N'Quạt SenKo                                        ')
INSERT [dbo].[SanPham] ([MaSanPham], [MoTa], [SoLuong], [DonGia], [TenSP]) VALUES (5, N'Bình nước nhỏ                                                                                                                                                                                                                                                  ', 1000, 80.0000, N'Bình nước                                         ')
INSERT [dbo].[SanPham] ([MaSanPham], [MoTa], [SoLuong], [DonGia], [TenSP]) VALUES (6, N'TRÀ XANH                                                                                                                                                                                                                                                       ', 1400, 18.0000, N'TRÀ XANH QUỐC TẾ                                  ')
INSERT [dbo].[SanPham] ([MaSanPham], [MoTa], [SoLuong], [DonGia], [TenSP]) VALUES (7, N'hehe                                                                                                                                                                                                                                                           ', 200, 10.0000, N'hehehe                                            ')
INSERT [dbo].[SanPham] ([MaSanPham], [MoTa], [SoLuong], [DonGia], [TenSP]) VALUES (8, N'hoho                                                                                                                                                                                                                                                           ', 300, 10.0000, N'hehehe                                            ')
INSERT [dbo].[SanPham] ([MaSanPham], [MoTa], [SoLuong], [DonGia], [TenSP]) VALUES (1, N'Samsung Galaxy J7 Pro là m?t chi?c smartphone phù h?p v?i nh?ng ngu?i yêu thích m?t s?n ph?m pin t?t, thích h? di?u hành m?i cùng nh?ng tính nang di kèm d?c quy?n                                                                                             ', 800, 6600000.0000, N'Samsung Galaxy J7 Pro                             ')
INSERT [dbo].[SanPham] ([MaSanPham], [MoTa], [SoLuong], [DonGia], [TenSP]) VALUES (2, N'iPhone 6 là m?t trong nh?ng smartphone du?c yêu thích nh?t. L?ng nghe nhu c?u v? thi?t k?, kh? nang luu tr? và giá c?, iPhone 6 32GB du?c chính th?c phân ph?i chính hãng t?i Vi?t Nam h?a h?n s? là m?t s?n ph?m r?t "Hot"                                    ', 459, 8990000.0000, N'iPhone 6 32GB                                     ')
INSERT [dbo].[SanPham] ([MaSanPham], [MoTa], [SoLuong], [DonGia], [TenSP]) VALUES (3, N'Dell Inspiron 3467 i3 7100U/4GB/1TB/Win10/(M20NR21) Laptop Dell Inspiron 3467                                                                                                                                                                                  ', 332, 10161000.0000, N'                                                  ')
INSERT [dbo].[SanPham] ([MaSanPham], [MoTa], [SoLuong], [DonGia], [TenSP]) VALUES (4, N'Pin s?c d? phòng Polymer 5.000 mAh eSaver JP85 Pin s?c d? phòng                                                                                                                                                                                                ', 600, 200000.0000, N'                                                  ')
INSERT [dbo].[SanPham] ([MaSanPham], [MoTa], [SoLuong], [DonGia], [TenSP]) VALUES (5, N'Nokia 3100 phù h?p v?i SINH VIÊN                                                                                                                                                                                                                               ', 100, 700000.0000, N'Nokia 3100                                        ')
INSERT [dbo].[SanPham] ([MaSanPham], [MoTa], [SoLuong], [DonGia], [TenSP]) VALUES (2, N'iPhone 6 là m?t trong nh?ng smartphone du?c yêu thích nh?t. L?ng nghe nhu c?u v? thi?t k?, kh? nang luu tr? và giá c?, iPhone 6 32GB du?c chính th?c phân ph?i chính hãng t?i Vi?t Nam h?a h?n s? là m?t s?n ph?m r?t "Hot"                                    ', 327, 8990000.0000, N'iPhone 6 32GB                                     ')
GO
INSERT [dbo].[TACGIA] ([MaTacGia], [TenTacGia]) VALUES (N'TG001', N'Nguyễn Nhật Ánh')
INSERT [dbo].[TACGIA] ([MaTacGia], [TenTacGia]) VALUES (N'TG002', N'Margaret Mitchell')
INSERT [dbo].[TACGIA] ([MaTacGia], [TenTacGia]) VALUES (N'TG003', N'J.K. Rowling')
INSERT [dbo].[TACGIA] ([MaTacGia], [TenTacGia]) VALUES (N'TG004', N'To Hoài')
INSERT [dbo].[TACGIA] ([MaTacGia], [TenTacGia]) VALUES (N'TG005', N'Nguyễn Nhat Anh')
INSERT [dbo].[TACGIA] ([MaTacGia], [TenTacGia]) VALUES (N'TG021', N'Trần Văn X1')
INSERT [dbo].[TACGIA] ([MaTacGia], [TenTacGia]) VALUES (N'TG022', N'Phan Đình Y1')
INSERT [dbo].[TACGIA] ([MaTacGia], [TenTacGia]) VALUES (N'TG023', N'Nguyễn Minh Z1')
INSERT [dbo].[TACGIA] ([MaTacGia], [TenTacGia]) VALUES (N'TG024', N'Lê Thiên K1')
INSERT [dbo].[TACGIA] ([MaTacGia], [TenTacGia]) VALUES (N'TG025', N'Đinh Ngọc L1')
INSERT [dbo].[TACGIA] ([MaTacGia], [TenTacGia]) VALUES (N'TG041', N'Trần Văn X2')
INSERT [dbo].[TACGIA] ([MaTacGia], [TenTacGia]) VALUES (N'TG042', N'Phan Đình Y2')
INSERT [dbo].[TACGIA] ([MaTacGia], [TenTacGia]) VALUES (N'TG043', N'Nguyễn Minh Z2')
INSERT [dbo].[TACGIA] ([MaTacGia], [TenTacGia]) VALUES (N'TG044', N'Lê Thiên K2')
INSERT [dbo].[TACGIA] ([MaTacGia], [TenTacGia]) VALUES (N'TG045', N'Đinh Ngọc L2')
GO
INSERT [dbo].[THESINHVIEN] ([MaSinhVien], [TenSinhVien], [NgayHetHan], [MaThongTin], [MaChuyenNganh]) VALUES (N'PD12301', N'Lê Văn C', CAST(N'2024-01-15' AS Date), N'TT003', N'CN003')
INSERT [dbo].[THESINHVIEN] ([MaSinhVien], [TenSinhVien], [NgayHetHan], [MaThongTin], [MaChuyenNganh]) VALUES (N'SV001', N'Nguyễn Văn A', CAST(N'2023-12-31' AS Date), N'TT001', N'CN001')
INSERT [dbo].[THESINHVIEN] ([MaSinhVien], [TenSinhVien], [NgayHetHan], [MaThongTin], [MaChuyenNganh]) VALUES (N'SV002', N'Trần Thị B', CAST(N'2023-11-30' AS Date), N'TT002', N'CN002')
INSERT [dbo].[THESINHVIEN] ([MaSinhVien], [TenSinhVien], [NgayHetHan], [MaThongTin], [MaChuyenNganh]) VALUES (N'SV004', N'Phạm Thị D', CAST(N'2023-12-31' AS Date), N'TT004', N'CN004')
INSERT [dbo].[THESINHVIEN] ([MaSinhVien], [TenSinhVien], [NgayHetHan], [MaThongTin], [MaChuyenNganh]) VALUES (N'SV005', N'Ngô Đình E', CAST(N'2023-10-31' AS Date), N'TT005', N'CN005')
INSERT [dbo].[THESINHVIEN] ([MaSinhVien], [TenSinhVien], [NgayHetHan], [MaThongTin], [MaChuyenNganh]) VALUES (N'SV006', N'Ngô Đình Thái', CAST(N'2023-10-31' AS Date), N'TT005', N'CN005')
INSERT [dbo].[THESINHVIEN] ([MaSinhVien], [TenSinhVien], [NgayHetHan], [MaThongTin], [MaChuyenNganh]) VALUES (N'SV021', N'Phạm Văn M1', CAST(N'2024-05-31' AS Date), N'TT021', N'CN021')
INSERT [dbo].[THESINHVIEN] ([MaSinhVien], [TenSinhVien], [NgayHetHan], [MaThongTin], [MaChuyenNganh]) VALUES (N'SV022', N'Ngô Thị N1', CAST(N'2024-04-30' AS Date), N'TT022', N'CN022')
INSERT [dbo].[THESINHVIEN] ([MaSinhVien], [TenSinhVien], [NgayHetHan], [MaThongTin], [MaChuyenNganh]) VALUES (N'SV023', N'Trịnh Văn O1', CAST(N'2024-06-15' AS Date), N'TT023', N'CN023')
INSERT [dbo].[THESINHVIEN] ([MaSinhVien], [TenSinhVien], [NgayHetHan], [MaThongTin], [MaChuyenNganh]) VALUES (N'SV024', N'Lý Thị P1', CAST(N'2024-05-31' AS Date), N'TT024', N'CN024')
INSERT [dbo].[THESINHVIEN] ([MaSinhVien], [TenSinhVien], [NgayHetHan], [MaThongTin], [MaChuyenNganh]) VALUES (N'SV025', N'Võ Văn Q1', CAST(N'2024-03-31' AS Date), N'TT025', N'CN025')
INSERT [dbo].[THESINHVIEN] ([MaSinhVien], [TenSinhVien], [NgayHetHan], [MaThongTin], [MaChuyenNganh]) VALUES (N'SV041', N'Trịnh Văn O2', CAST(N'2024-06-15' AS Date), N'TT021', N'CN041')
INSERT [dbo].[THESINHVIEN] ([MaSinhVien], [TenSinhVien], [NgayHetHan], [MaThongTin], [MaChuyenNganh]) VALUES (N'SV042', N'Lý Thị P2', CAST(N'2024-05-31' AS Date), N'TT022', N'CN042')
INSERT [dbo].[THESINHVIEN] ([MaSinhVien], [TenSinhVien], [NgayHetHan], [MaThongTin], [MaChuyenNganh]) VALUES (N'SV043', N'Võ Văn Q2', CAST(N'2024-03-31' AS Date), N'TT023', N'CN043')
INSERT [dbo].[THESINHVIEN] ([MaSinhVien], [TenSinhVien], [NgayHetHan], [MaThongTin], [MaChuyenNganh]) VALUES (N'SV044', N'Trịnh Văn O3', CAST(N'2024-06-15' AS Date), N'TT024', N'CN044')
INSERT [dbo].[THESINHVIEN] ([MaSinhVien], [TenSinhVien], [NgayHetHan], [MaThongTin], [MaChuyenNganh]) VALUES (N'SV045', N'Lý Thị P3', CAST(N'2024-05-31' AS Date), N'TT025', N'CN045')
GO
INSERT [dbo].[THONGTINLIENHE] ([MaThongTin], [Email], [SoDienThoai]) VALUES (N'TT001', N'nguyenvana@example.com', 123456789)
INSERT [dbo].[THONGTINLIENHE] ([MaThongTin], [Email], [SoDienThoai]) VALUES (N'TT002', N'tranthib@example.com', 987654321)
INSERT [dbo].[THONGTINLIENHE] ([MaThongTin], [Email], [SoDienThoai]) VALUES (N'TT003', N'levanc@example.com', 369852147)
INSERT [dbo].[THONGTINLIENHE] ([MaThongTin], [Email], [SoDienThoai]) VALUES (N'TT004', N'phamthid@example.com', 777123456)
INSERT [dbo].[THONGTINLIENHE] ([MaThongTin], [Email], [SoDienThoai]) VALUES (N'TT005', N'ngoding@example.com', 909123456)
INSERT [dbo].[THONGTINLIENHE] ([MaThongTin], [Email], [SoDienThoai]) VALUES (N'TT021', N'tranvany@example.com', 987000001)
INSERT [dbo].[THONGTINLIENHE] ([MaThongTin], [Email], [SoDienThoai]) VALUES (N'TT022', N'phandinhz@example.com', 123000002)
INSERT [dbo].[THONGTINLIENHE] ([MaThongTin], [Email], [SoDienThoai]) VALUES (N'TT023', N'nguyenminhz@example.com', 369000003)
INSERT [dbo].[THONGTINLIENHE] ([MaThongTin], [Email], [SoDienThoai]) VALUES (N'TT024', N'lethienk@example.com', 777000004)
INSERT [dbo].[THONGTINLIENHE] ([MaThongTin], [Email], [SoDienThoai]) VALUES (N'TT025', N'dinhngocl@example.com', 909000005)
INSERT [dbo].[THONGTINLIENHE] ([MaThongTin], [Email], [SoDienThoai]) VALUES (N'TT041', N'nguyenv@example.com', 123456784)
INSERT [dbo].[THONGTINLIENHE] ([MaThongTin], [Email], [SoDienThoai]) VALUES (N'TT042', N'leth@example.com', 987654322)
INSERT [dbo].[THONGTINLIENHE] ([MaThongTin], [Email], [SoDienThoai]) VALUES (N'TT043', N'phaml@example.com', 932123456)
INSERT [dbo].[THONGTINLIENHE] ([MaThongTin], [Email], [SoDienThoai]) VALUES (N'TT044', N'tranth@example.com', 869876543)
INSERT [dbo].[THONGTINLIENHE] ([MaThongTin], [Email], [SoDienThoai]) VALUES (N'TT045', N'voq@example.com', 909123455)
GO
INSERT [dbo].[VIET] ([MaTacGia], [MaSach]) VALUES (N'TG001', N'MS001')
INSERT [dbo].[VIET] ([MaTacGia], [MaSach]) VALUES (N'TG002', N'MS002')
INSERT [dbo].[VIET] ([MaTacGia], [MaSach]) VALUES (N'TG003', N'MS003')
INSERT [dbo].[VIET] ([MaTacGia], [MaSach]) VALUES (N'TG004', N'MS004')
INSERT [dbo].[VIET] ([MaTacGia], [MaSach]) VALUES (N'TG005', N'MS005')
INSERT [dbo].[VIET] ([MaTacGia], [MaSach]) VALUES (N'TG021', N'MS021')
INSERT [dbo].[VIET] ([MaTacGia], [MaSach]) VALUES (N'TG022', N'MS022')
INSERT [dbo].[VIET] ([MaTacGia], [MaSach]) VALUES (N'TG023', N'MS023')
INSERT [dbo].[VIET] ([MaTacGia], [MaSach]) VALUES (N'TG024', N'MS024')
INSERT [dbo].[VIET] ([MaTacGia], [MaSach]) VALUES (N'TG025', N'MS025')
INSERT [dbo].[VIET] ([MaTacGia], [MaSach]) VALUES (N'TG041', N'MS041')
INSERT [dbo].[VIET] ([MaTacGia], [MaSach]) VALUES (N'TG042', N'MS042')
INSERT [dbo].[VIET] ([MaTacGia], [MaSach]) VALUES (N'TG043', N'MS043')
INSERT [dbo].[VIET] ([MaTacGia], [MaSach]) VALUES (N'TG044', N'MS044')
INSERT [dbo].[VIET] ([MaTacGia], [MaSach]) VALUES (N'TG045', N'MS045')
GO
INSERT [dbo].[VITRIDATSACH] ([MaViTri], [TenViTri]) VALUES (N'VT001', N'Kệ A1')
INSERT [dbo].[VITRIDATSACH] ([MaViTri], [TenViTri]) VALUES (N'VT002', N'Kệ B2')
INSERT [dbo].[VITRIDATSACH] ([MaViTri], [TenViTri]) VALUES (N'VT003', N'Kệ C3')
INSERT [dbo].[VITRIDATSACH] ([MaViTri], [TenViTri]) VALUES (N'VT004', N'Kệ D4')
INSERT [dbo].[VITRIDATSACH] ([MaViTri], [TenViTri]) VALUES (N'VT005', N'Kệ E5')
INSERT [dbo].[VITRIDATSACH] ([MaViTri], [TenViTri]) VALUES (N'VT021', N'Kệ K11')
INSERT [dbo].[VITRIDATSACH] ([MaViTri], [TenViTri]) VALUES (N'VT022', N'Kệ L12')
INSERT [dbo].[VITRIDATSACH] ([MaViTri], [TenViTri]) VALUES (N'VT023', N'Kệ M13')
INSERT [dbo].[VITRIDATSACH] ([MaViTri], [TenViTri]) VALUES (N'VT024', N'Kệ N14')
INSERT [dbo].[VITRIDATSACH] ([MaViTri], [TenViTri]) VALUES (N'VT025', N'Kệ O15')
INSERT [dbo].[VITRIDATSACH] ([MaViTri], [TenViTri]) VALUES (N'VT041', N'Kệ P16')
INSERT [dbo].[VITRIDATSACH] ([MaViTri], [TenViTri]) VALUES (N'VT042', N'Kệ Q17')
INSERT [dbo].[VITRIDATSACH] ([MaViTri], [TenViTri]) VALUES (N'VT043', N'Kệ R18')
INSERT [dbo].[VITRIDATSACH] ([MaViTri], [TenViTri]) VALUES (N'VT044', N'Kệ S19')
INSERT [dbo].[VITRIDATSACH] ([MaViTri], [TenViTri]) VALUES (N'VT045', N'Kệ T20')
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__LOAISACH__E29B104208B37656]    Script Date: 08/08/2023 2:43:12 PM ******/
ALTER TABLE [dbo].[LOAISACH] ADD UNIQUE NONCLUSTERED 
(
	[TenLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [UQ__THONGTIN__0389B7BD4A0F98AF]    Script Date: 08/08/2023 2:43:12 PM ******/
ALTER TABLE [dbo].[THONGTINLIENHE] ADD UNIQUE NONCLUSTERED 
(
	[SoDienThoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__THONGTIN__A9D10534DF9FA2EA]    Script Date: 08/08/2023 2:43:12 PM ******/
ALTER TABLE [dbo].[THONGTINLIENHE] ADD UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PHIEUMUON]  WITH CHECK ADD  CONSTRAINT [FK_PM_SV] FOREIGN KEY([MaSinhVien])
REFERENCES [dbo].[THESINHVIEN] ([MaSinhVien])
GO
ALTER TABLE [dbo].[PHIEUMUON] CHECK CONSTRAINT [FK_PM_SV]
GO
ALTER TABLE [dbo].[PHIEUMUONCHITIET]  WITH CHECK ADD  CONSTRAINT [FK_PMCT_NXB] FOREIGN KEY([MaNhaXuatBan])
REFERENCES [dbo].[NHAXUATBAN] ([MaNhaXuatBan])
GO
ALTER TABLE [dbo].[PHIEUMUONCHITIET] CHECK CONSTRAINT [FK_PMCT_NXB]
GO
ALTER TABLE [dbo].[PHIEUMUONCHITIET]  WITH CHECK ADD  CONSTRAINT [FK_PMCT_PM] FOREIGN KEY([MaPhieuMuon])
REFERENCES [dbo].[PHIEUMUON] ([MaPhieuMuon])
GO
ALTER TABLE [dbo].[PHIEUMUONCHITIET] CHECK CONSTRAINT [FK_PMCT_PM]
GO
ALTER TABLE [dbo].[PHIEUMUONCHITIET]  WITH CHECK ADD  CONSTRAINT [FK_PMCT_Sach] FOREIGN KEY([MaSach])
REFERENCES [dbo].[SACH] ([MaSach])
GO
ALTER TABLE [dbo].[PHIEUMUONCHITIET] CHECK CONSTRAINT [FK_PMCT_Sach]
GO
ALTER TABLE [dbo].[SACH]  WITH CHECK ADD  CONSTRAINT [FK_SACH_LOAI] FOREIGN KEY([MaLoai])
REFERENCES [dbo].[LOAISACH] ([MaLoai])
GO
ALTER TABLE [dbo].[SACH] CHECK CONSTRAINT [FK_SACH_LOAI]
GO
ALTER TABLE [dbo].[SACH]  WITH CHECK ADD  CONSTRAINT [FK_SACH_NHAXUATBAN] FOREIGN KEY([MaNhaXuatBan])
REFERENCES [dbo].[NHAXUATBAN] ([MaNhaXuatBan])
GO
ALTER TABLE [dbo].[SACH] CHECK CONSTRAINT [FK_SACH_NHAXUATBAN]
GO
ALTER TABLE [dbo].[SACH]  WITH CHECK ADD  CONSTRAINT [FK_SACH_VITRI] FOREIGN KEY([MaViTri])
REFERENCES [dbo].[VITRIDATSACH] ([MaViTri])
GO
ALTER TABLE [dbo].[SACH] CHECK CONSTRAINT [FK_SACH_VITRI]
GO
ALTER TABLE [dbo].[THESINHVIEN]  WITH CHECK ADD  CONSTRAINT [FK_TSV_CN] FOREIGN KEY([MaChuyenNganh])
REFERENCES [dbo].[CHUYENNGANH] ([MaChuyenNganh])
GO
ALTER TABLE [dbo].[THESINHVIEN] CHECK CONSTRAINT [FK_TSV_CN]
GO
ALTER TABLE [dbo].[THESINHVIEN]  WITH CHECK ADD  CONSTRAINT [FK_TSV_TT] FOREIGN KEY([MaThongTin])
REFERENCES [dbo].[THONGTINLIENHE] ([MaThongTin])
GO
ALTER TABLE [dbo].[THESINHVIEN] CHECK CONSTRAINT [FK_TSV_TT]
GO
ALTER TABLE [dbo].[VIET]  WITH CHECK ADD  CONSTRAINT [FK_VIET_SACH] FOREIGN KEY([MaSach])
REFERENCES [dbo].[SACH] ([MaSach])
GO
ALTER TABLE [dbo].[VIET] CHECK CONSTRAINT [FK_VIET_SACH]
GO
ALTER TABLE [dbo].[VIET]  WITH CHECK ADD  CONSTRAINT [FK_VIET_TACGIA] FOREIGN KEY([MaTacGia])
REFERENCES [dbo].[TACGIA] ([MaTacGia])
GO
ALTER TABLE [dbo].[VIET] CHECK CONSTRAINT [FK_VIET_TACGIA]
GO
ALTER TABLE [dbo].[PHIEUMUON]  WITH CHECK ADD  CONSTRAINT [CK_PHIEUMUON_NGAYTRA] CHECK  (([NgayTra]>=[NgayMuon]))
GO
ALTER TABLE [dbo].[PHIEUMUON] CHECK CONSTRAINT [CK_PHIEUMUON_NGAYTRA]
GO
ALTER TABLE [dbo].[PHIEUMUONCHITIET]  WITH CHECK ADD  CONSTRAINT [CK_PHIEUMUONCHITIET_MAX_QUYEN] CHECK  (([MaSach] IS NOT NULL AND ([SoThuTu]>=(1) AND [SoThuTu]<=(3)) OR [MaSach] IS NULL AND [SoThuTu]=(0)))
GO
ALTER TABLE [dbo].[PHIEUMUONCHITIET] CHECK CONSTRAINT [CK_PHIEUMUONCHITIET_MAX_QUYEN]
GO
ALTER TABLE [dbo].[SACH]  WITH CHECK ADD  CONSTRAINT [SACH_CONSTRAINT_GIATIEN] CHECK  (([GiaTien]>(0)))
GO
ALTER TABLE [dbo].[SACH] CHECK CONSTRAINT [SACH_CONSTRAINT_GIATIEN]
GO
ALTER TABLE [dbo].[SACH]  WITH CHECK ADD  CONSTRAINT [SACH_CONSTRAINT_SLBS] CHECK  (([SLBS]>(1)))
GO
ALTER TABLE [dbo].[SACH] CHECK CONSTRAINT [SACH_CONSTRAINT_SLBS]
GO
ALTER TABLE [dbo].[SACH]  WITH CHECK ADD  CONSTRAINT [SACH_CONSTRAINT_SOTRANG] CHECK  (([SoTrang]>(5)))
GO
ALTER TABLE [dbo].[SACH] CHECK CONSTRAINT [SACH_CONSTRAINT_SOTRANG]
GO
USE [master]
GO
ALTER DATABASE [QuanLyBanHang] SET  READ_WRITE 
GO
