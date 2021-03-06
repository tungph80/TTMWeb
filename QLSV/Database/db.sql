USE [ToeicTestManager]
GO
/****** Object:  Table [dbo].[TAIKHOAN]    Script Date: 02/08/2015 00:17:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TAIKHOAN](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TaiKhoan] [nvarchar](100) NOT NULL,
	[MatKhau] [nvarchar](255) NULL,
	[HoTen] [nvarchar](255) NULL,
	[Quyen] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_TaiKhoan] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UQ_TaiKhoan] UNIQUE NONCLUSTERED 
(
	[TaiKhoan] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[TAIKHOAN] ON
INSERT [dbo].[TAIKHOAN] ([ID], [TaiKhoan], [MatKhau], [HoTen], [Quyen]) VALUES (1, N'admin', N'21232f297a57a5a743894a0e4a801fc3', N'admin', N'quantri')
INSERT [dbo].[TAIKHOAN] ([ID], [TaiKhoan], [MatKhau], [HoTen], [Quyen]) VALUES (2, N'nd1', N'e10adc3949ba59abbe56e057f20f883e', N'Nguyễn quang Khánh', N'nguoidung')
SET IDENTITY_INSERT [dbo].[TAIKHOAN] OFF
/****** Object:  Table [dbo].[PHONGTHI]    Script Date: 02/08/2015 00:17:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHONGTHI](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TenPhong] [nvarchar](255) NOT NULL,
	[SucChua] [int] NOT NULL,
	[GhiChu] [nvarchar](255) NULL,
 CONSTRAINT [PK_PhongThi] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[PHONGTHI] ON
INSERT [dbo].[PHONGTHI] ([ID], [TenPhong], [SucChua], [GhiChu]) VALUES (1, N'101.H1', 40, N'')
INSERT [dbo].[PHONGTHI] ([ID], [TenPhong], [SucChua], [GhiChu]) VALUES (2, N'102.H1', 40, N'')
INSERT [dbo].[PHONGTHI] ([ID], [TenPhong], [SucChua], [GhiChu]) VALUES (3, N'103.H1', 40, N'')
INSERT [dbo].[PHONGTHI] ([ID], [TenPhong], [SucChua], [GhiChu]) VALUES (4, N'104.H1', 40, N'')
INSERT [dbo].[PHONGTHI] ([ID], [TenPhong], [SucChua], [GhiChu]) VALUES (5, N'105.H1', 40, N'')
INSERT [dbo].[PHONGTHI] ([ID], [TenPhong], [SucChua], [GhiChu]) VALUES (6, N'106.H1', 40, N'')
INSERT [dbo].[PHONGTHI] ([ID], [TenPhong], [SucChua], [GhiChu]) VALUES (7, N'201.H1', 40, N'')
INSERT [dbo].[PHONGTHI] ([ID], [TenPhong], [SucChua], [GhiChu]) VALUES (8, N'202.H1', 40, N'')
INSERT [dbo].[PHONGTHI] ([ID], [TenPhong], [SucChua], [GhiChu]) VALUES (9, N'203.H1', 40, N'')
INSERT [dbo].[PHONGTHI] ([ID], [TenPhong], [SucChua], [GhiChu]) VALUES (10, N'204.H1', 40, N'')
INSERT [dbo].[PHONGTHI] ([ID], [TenPhong], [SucChua], [GhiChu]) VALUES (11, N'205.H1', 40, N'')
INSERT [dbo].[PHONGTHI] ([ID], [TenPhong], [SucChua], [GhiChu]) VALUES (12, N'206.H1', 40, N'')
INSERT [dbo].[PHONGTHI] ([ID], [TenPhong], [SucChua], [GhiChu]) VALUES (13, N'301H1', 40, N'')
INSERT [dbo].[PHONGTHI] ([ID], [TenPhong], [SucChua], [GhiChu]) VALUES (14, N'302.H1', 40, N'')
INSERT [dbo].[PHONGTHI] ([ID], [TenPhong], [SucChua], [GhiChu]) VALUES (15, N'303.H1', 40, N'')
INSERT [dbo].[PHONGTHI] ([ID], [TenPhong], [SucChua], [GhiChu]) VALUES (16, N'304.H1', 40, N'')
INSERT [dbo].[PHONGTHI] ([ID], [TenPhong], [SucChua], [GhiChu]) VALUES (17, N'305.H1', 40, N'')
INSERT [dbo].[PHONGTHI] ([ID], [TenPhong], [SucChua], [GhiChu]) VALUES (18, N'306.H1', 40, N'')
INSERT [dbo].[PHONGTHI] ([ID], [TenPhong], [SucChua], [GhiChu]) VALUES (19, N'401H1.', 40, N'')
INSERT [dbo].[PHONGTHI] ([ID], [TenPhong], [SucChua], [GhiChu]) VALUES (20, N'402.H1', 40, N'')
INSERT [dbo].[PHONGTHI] ([ID], [TenPhong], [SucChua], [GhiChu]) VALUES (21, N'403.H1', 40, N'')
INSERT [dbo].[PHONGTHI] ([ID], [TenPhong], [SucChua], [GhiChu]) VALUES (22, N'404.H1', 40, N'')
INSERT [dbo].[PHONGTHI] ([ID], [TenPhong], [SucChua], [GhiChu]) VALUES (23, N'405.H1', 40, N'')
INSERT [dbo].[PHONGTHI] ([ID], [TenPhong], [SucChua], [GhiChu]) VALUES (24, N'406.H1', 40, N'')
INSERT [dbo].[PHONGTHI] ([ID], [TenPhong], [SucChua], [GhiChu]) VALUES (25, N'501.H1', 40, N'')
INSERT [dbo].[PHONGTHI] ([ID], [TenPhong], [SucChua], [GhiChu]) VALUES (26, N'502.H1', 40, N'')
INSERT [dbo].[PHONGTHI] ([ID], [TenPhong], [SucChua], [GhiChu]) VALUES (27, N'503.H1', 40, N'')
INSERT [dbo].[PHONGTHI] ([ID], [TenPhong], [SucChua], [GhiChu]) VALUES (28, N'504.H1', 40, N'')
INSERT [dbo].[PHONGTHI] ([ID], [TenPhong], [SucChua], [GhiChu]) VALUES (29, N'505.H1', 40, N'')
INSERT [dbo].[PHONGTHI] ([ID], [TenPhong], [SucChua], [GhiChu]) VALUES (30, N'506.H1', 40, N'')
INSERT [dbo].[PHONGTHI] ([ID], [TenPhong], [SucChua], [GhiChu]) VALUES (31, N'601.H1', 40, N'')
INSERT [dbo].[PHONGTHI] ([ID], [TenPhong], [SucChua], [GhiChu]) VALUES (32, N'602.H1', 40, N'')
INSERT [dbo].[PHONGTHI] ([ID], [TenPhong], [SucChua], [GhiChu]) VALUES (33, N'603.H1', 40, N'')
INSERT [dbo].[PHONGTHI] ([ID], [TenPhong], [SucChua], [GhiChu]) VALUES (34, N'604.H1', 40, N'')
INSERT [dbo].[PHONGTHI] ([ID], [TenPhong], [SucChua], [GhiChu]) VALUES (35, N'605.H1', 40, N'')
INSERT [dbo].[PHONGTHI] ([ID], [TenPhong], [SucChua], [GhiChu]) VALUES (36, N'606.H1', 40, N'')
INSERT [dbo].[PHONGTHI] ([ID], [TenPhong], [SucChua], [GhiChu]) VALUES (37, N'21.H2', 40, N'')
INSERT [dbo].[PHONGTHI] ([ID], [TenPhong], [SucChua], [GhiChu]) VALUES (38, N'22.H2', 40, N'')
INSERT [dbo].[PHONGTHI] ([ID], [TenPhong], [SucChua], [GhiChu]) VALUES (39, N'23.H2', 40, N'')
INSERT [dbo].[PHONGTHI] ([ID], [TenPhong], [SucChua], [GhiChu]) VALUES (40, N'24.H2', 40, N'')
INSERT [dbo].[PHONGTHI] ([ID], [TenPhong], [SucChua], [GhiChu]) VALUES (41, N'25.H2', 40, N'')
INSERT [dbo].[PHONGTHI] ([ID], [TenPhong], [SucChua], [GhiChu]) VALUES (42, N'26.H2', 40, N'')
SET IDENTITY_INSERT [dbo].[PHONGTHI] OFF
/****** Object:  Table [dbo].[NAMHOC]    Script Date: 02/08/2015 00:17:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NAMHOC](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NamHoc] [varchar](50) NOT NULL,
 CONSTRAINT [PK_NAMHOC] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[NAMHOC] ON
INSERT [dbo].[NAMHOC] ([ID], [NamHoc]) VALUES (1, N'2014 - 2015')
INSERT [dbo].[NAMHOC] ([ID], [NamHoc]) VALUES (2, N'2015 - 2016')
INSERT [dbo].[NAMHOC] ([ID], [NamHoc]) VALUES (3, N'2016 - 2017')
INSERT [dbo].[NAMHOC] ([ID], [NamHoc]) VALUES (4, N'2017 - 2018')
INSERT [dbo].[NAMHOC] ([ID], [NamHoc]) VALUES (5, N'2019 - 2020')
SET IDENTITY_INSERT [dbo].[NAMHOC] OFF
/****** Object:  Table [dbo].[KHOA]    Script Date: 02/08/2015 00:17:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHOA](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TenKhoa] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_Khoa] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[KHOA] ON
INSERT [dbo].[KHOA] ([ID], [TenKhoa]) VALUES (1, N'Cầu đường')
INSERT [dbo].[KHOA] ([ID], [TenKhoa]) VALUES (2, N'Cơ khí xây dựng')
INSERT [dbo].[KHOA] ([ID], [TenKhoa]) VALUES (3, N'Công nghệ thông tin')
INSERT [dbo].[KHOA] ([ID], [TenKhoa]) VALUES (4, N'Công trình thủy')
INSERT [dbo].[KHOA] ([ID], [TenKhoa]) VALUES (5, N'Kiến trúc và quy hoạch')
INSERT [dbo].[KHOA] ([ID], [TenKhoa]) VALUES (6, N'Kinh tế và quản lý xây dựng')
INSERT [dbo].[KHOA] ([ID], [TenKhoa]) VALUES (7, N'Vật liệu xây dựng')
INSERT [dbo].[KHOA] ([ID], [TenKhoa]) VALUES (8, N'Xây dựng dân dụng và công nghiệp')
INSERT [dbo].[KHOA] ([ID], [TenKhoa]) VALUES (9, N'Viện xây dựng công trình biển')
INSERT [dbo].[KHOA] ([ID], [TenKhoa]) VALUES (10, N'Viện khoa học và kỹ thuật môi trường')
SET IDENTITY_INSERT [dbo].[KHOA] OFF
/****** Object:  Table [dbo].[KYTHI]    Script Date: 02/08/2015 00:17:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KYTHI](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MaKT] [nvarchar](255) NOT NULL,
	[TenKT] [nvarchar](255) NULL,
	[NgayThi] [varchar](50) NOT NULL,
	[TGLamBai] [nvarchar](50) NOT NULL,
	[TGBatDau] [nvarchar](255) NOT NULL,
	[TGKetThuc] [nvarchar](255) NULL,
	[GhiChu] [nvarchar](255) NULL,
	[TrangThai] [bit] NULL,
 CONSTRAINT [PK_KyThi] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[KYTHI] ON
INSERT [dbo].[KYTHI] ([ID], [MaKT], [TenKT], [NgayThi], [TGLamBai], [TGBatDau], [TGKetThuc], [GhiChu], [TrangThai]) VALUES (3, N'Ca1_TOEICHK12014-2015', N'Kiểm tra kĩ năng viết k59', N'27/01/2015', N'60', N'2h', N'3h', N'Ca 1', 0)
INSERT [dbo].[KYTHI] ([ID], [MaKT], [TenKT], [NgayThi], [TGLamBai], [TGBatDau], [TGKetThuc], [GhiChu], [TrangThai]) VALUES (4, N'Ca2_TOEICHK12014-2015', N'Kiểm tra kĩ năng đọc k59', N'27/01/2015', N'60', N'3h30', N'4h30', N'Ca 2', 0)
SET IDENTITY_INSERT [dbo].[KYTHI] OFF
/****** Object:  Table [dbo].[KT_PHONG]    Script Date: 02/08/2015 00:17:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KT_PHONG](
	[IdPhong] [int] NOT NULL,
	[IdKyThi] [int] NOT NULL,
	[SiSo] [int] NULL,
 CONSTRAINT [PK_KT_PHONG] PRIMARY KEY CLUSTERED 
(
	[IdPhong] ASC,
	[IdKyThi] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DAPAN]    Script Date: 02/08/2015 00:17:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DAPAN](
	[IdKyThi] [int] NOT NULL,
	[MaMon] [varchar](50) NOT NULL,
	[MaDe] [varchar](50) NOT NULL,
	[CauHoi] [int] NOT NULL,
	[DapAn] [varchar](5) NOT NULL,
	[ThangDiem] [float] NULL,
 CONSTRAINT [PK_DAPAN] PRIMARY KEY CLUSTERED 
(
	[IdKyThi] ASC,
	[MaMon] ASC,
	[MaDe] ASC,
	[CauHoi] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BAILAM]    Script Date: 02/08/2015 00:17:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BAILAM](
	[IdKyThi] [int] NOT NULL,
	[MaSV] [int] NOT NULL,
	[MaDe] [nvarchar](255) NOT NULL,
	[KetQua] [varchar](255) NOT NULL,
	[DiemThi] [float] NULL,
	[MaHoiDong] [varchar](50) NULL,
	[MaLoCham] [varchar](50) NULL,
	[TenFile] [varchar](50) NULL,
 CONSTRAINT [PK_BaiLam] PRIMARY KEY CLUSTERED 
(
	[IdKyThi] ASC,
	[MaSV] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LOP]    Script Date: 02/08/2015 00:17:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOP](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MaLop] [nvarchar](255) NOT NULL,
	[IdKhoa] [int] NOT NULL,
 CONSTRAINT [PK_Lop] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UQ_MaLop] UNIQUE NONCLUSTERED 
(
	[MaLop] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[LOP] ON
INSERT [dbo].[LOP] ([ID], [MaLop], [IdKhoa]) VALUES (93, N'58BDS', 6)
INSERT [dbo].[LOP] ([ID], [MaLop], [IdKhoa]) VALUES (95, N'58CB1', 9)
INSERT [dbo].[LOP] ([ID], [MaLop], [IdKhoa]) VALUES (96, N'58CB2', 9)
INSERT [dbo].[LOP] ([ID], [MaLop], [IdKhoa]) VALUES (100, N'58CD1', 1)
INSERT [dbo].[LOP] ([ID], [MaLop], [IdKhoa]) VALUES (101, N'58CD2', 1)
INSERT [dbo].[LOP] ([ID], [MaLop], [IdKhoa]) VALUES (102, N'58CD3', 1)
INSERT [dbo].[LOP] ([ID], [MaLop], [IdKhoa]) VALUES (103, N'58CD4', 1)
INSERT [dbo].[LOP] ([ID], [MaLop], [IdKhoa]) VALUES (104, N'58CD5', 1)
INSERT [dbo].[LOP] ([ID], [MaLop], [IdKhoa]) VALUES (113, N'58CG1', 4)
INSERT [dbo].[LOP] ([ID], [MaLop], [IdKhoa]) VALUES (114, N'58CG2', 4)
INSERT [dbo].[LOP] ([ID], [MaLop], [IdKhoa]) VALUES (125, N'58DT', 10)
INSERT [dbo].[LOP] ([ID], [MaLop], [IdKhoa]) VALUES (137, N'58HK', 10)
INSERT [dbo].[LOP] ([ID], [MaLop], [IdKhoa]) VALUES (150, N'58KD1', 5)
INSERT [dbo].[LOP] ([ID], [MaLop], [IdKhoa]) VALUES (151, N'58KD2', 5)
INSERT [dbo].[LOP] ([ID], [MaLop], [IdKhoa]) VALUES (152, N'58KD3', 5)
INSERT [dbo].[LOP] ([ID], [MaLop], [IdKhoa]) VALUES (153, N'58KD4', 5)
INSERT [dbo].[LOP] ([ID], [MaLop], [IdKhoa]) VALUES (154, N'58KD5', 5)
INSERT [dbo].[LOP] ([ID], [MaLop], [IdKhoa]) VALUES (155, N'58KD6', 5)
INSERT [dbo].[LOP] ([ID], [MaLop], [IdKhoa]) VALUES (156, N'58KD7', 5)
INSERT [dbo].[LOP] ([ID], [MaLop], [IdKhoa]) VALUES (157, N'58KD8', 5)
INSERT [dbo].[LOP] ([ID], [MaLop], [IdKhoa]) VALUES (178, N'58KG1', 2)
INSERT [dbo].[LOP] ([ID], [MaLop], [IdKhoa]) VALUES (200, N'58KM1', 2)
INSERT [dbo].[LOP] ([ID], [MaLop], [IdKhoa]) VALUES (223, N'58KT1', 6)
INSERT [dbo].[LOP] ([ID], [MaLop], [IdKhoa]) VALUES (224, N'58KT2', 6)
INSERT [dbo].[LOP] ([ID], [MaLop], [IdKhoa]) VALUES (225, N'58KT3', 6)
INSERT [dbo].[LOP] ([ID], [MaLop], [IdKhoa]) VALUES (226, N'58KT4', 6)
INSERT [dbo].[LOP] ([ID], [MaLop], [IdKhoa]) VALUES (227, N'58KT5', 6)
INSERT [dbo].[LOP] ([ID], [MaLop], [IdKhoa]) VALUES (255, N'58MN1', 10)
INSERT [dbo].[LOP] ([ID], [MaLop], [IdKhoa]) VALUES (256, N'58MN2', 10)
INSERT [dbo].[LOP] ([ID], [MaLop], [IdKhoa]) VALUES (286, N'58PM1', 3)
INSERT [dbo].[LOP] ([ID], [MaLop], [IdKhoa]) VALUES (287, N'58PM2', 3)
INSERT [dbo].[LOP] ([ID], [MaLop], [IdKhoa]) VALUES (288, N'58PM3', 3)
INSERT [dbo].[LOP] ([ID], [MaLop], [IdKhoa]) VALUES (321, N'58QD1', 6)
INSERT [dbo].[LOP] ([ID], [MaLop], [IdKhoa]) VALUES (322, N'58QD2', 6)
INSERT [dbo].[LOP] ([ID], [MaLop], [IdKhoa]) VALUES (323, N'58QH1', 5)
INSERT [dbo].[LOP] ([ID], [MaLop], [IdKhoa]) VALUES (324, N'58QH2', 5)
INSERT [dbo].[LOP] ([ID], [MaLop], [IdKhoa]) VALUES (325, N'58TL1', 4)
INSERT [dbo].[LOP] ([ID], [MaLop], [IdKhoa]) VALUES (326, N'58TL2', 4)
INSERT [dbo].[LOP] ([ID], [MaLop], [IdKhoa]) VALUES (329, N'58TH1', 3)
INSERT [dbo].[LOP] ([ID], [MaLop], [IdKhoa]) VALUES (330, N'58TH2', 3)
INSERT [dbo].[LOP] ([ID], [MaLop], [IdKhoa]) VALUES (335, N'58TRD', 1)
INSERT [dbo].[LOP] ([ID], [MaLop], [IdKhoa]) VALUES (341, N'58VL1', 7)
INSERT [dbo].[LOP] ([ID], [MaLop], [IdKhoa]) VALUES (342, N'58VL2', 7)
INSERT [dbo].[LOP] ([ID], [MaLop], [IdKhoa]) VALUES (350, N'58XD1', 8)
INSERT [dbo].[LOP] ([ID], [MaLop], [IdKhoa]) VALUES (351, N'58XD2', 8)
INSERT [dbo].[LOP] ([ID], [MaLop], [IdKhoa]) VALUES (352, N'58XD3', 8)
INSERT [dbo].[LOP] ([ID], [MaLop], [IdKhoa]) VALUES (353, N'58XD4', 8)
INSERT [dbo].[LOP] ([ID], [MaLop], [IdKhoa]) VALUES (354, N'58XD5', 8)
INSERT [dbo].[LOP] ([ID], [MaLop], [IdKhoa]) VALUES (355, N'58XD6', 8)
INSERT [dbo].[LOP] ([ID], [MaLop], [IdKhoa]) VALUES (356, N'58XD7', 8)
INSERT [dbo].[LOP] ([ID], [MaLop], [IdKhoa]) VALUES (357, N'58XD8', 8)
INSERT [dbo].[LOP] ([ID], [MaLop], [IdKhoa]) VALUES (358, N'58XD9', 8)
INSERT [dbo].[LOP] ([ID], [MaLop], [IdKhoa]) VALUES (359, N'59BDS', 6)
INSERT [dbo].[LOP] ([ID], [MaLop], [IdKhoa]) VALUES (360, N'59CG1', 4)
INSERT [dbo].[LOP] ([ID], [MaLop], [IdKhoa]) VALUES (361, N'59CG2', 4)
INSERT [dbo].[LOP] ([ID], [MaLop], [IdKhoa]) VALUES (362, N'59DT1', 10)
INSERT [dbo].[LOP] ([ID], [MaLop], [IdKhoa]) VALUES (363, N'59DT2', 10)
INSERT [dbo].[LOP] ([ID], [MaLop], [IdKhoa]) VALUES (364, N'59KD3', 5)
INSERT [dbo].[LOP] ([ID], [MaLop], [IdKhoa]) VALUES (365, N'59KD4', 5)
INSERT [dbo].[LOP] ([ID], [MaLop], [IdKhoa]) VALUES (366, N'59KD5', 5)
INSERT [dbo].[LOP] ([ID], [MaLop], [IdKhoa]) VALUES (367, N'59KG1', 2)
INSERT [dbo].[LOP] ([ID], [MaLop], [IdKhoa]) VALUES (369, N'59KT1', 6)
INSERT [dbo].[LOP] ([ID], [MaLop], [IdKhoa]) VALUES (370, N'59KT2', 6)
INSERT [dbo].[LOP] ([ID], [MaLop], [IdKhoa]) VALUES (371, N'59KT3', 6)
INSERT [dbo].[LOP] ([ID], [MaLop], [IdKhoa]) VALUES (372, N'59KT4', 6)
INSERT [dbo].[LOP] ([ID], [MaLop], [IdKhoa]) VALUES (373, N'59KT5', 6)
INSERT [dbo].[LOP] ([ID], [MaLop], [IdKhoa]) VALUES (374, N'59KT6', 6)
INSERT [dbo].[LOP] ([ID], [MaLop], [IdKhoa]) VALUES (375, N'59MN1', 10)
INSERT [dbo].[LOP] ([ID], [MaLop], [IdKhoa]) VALUES (376, N'59MN2', 10)
INSERT [dbo].[LOP] ([ID], [MaLop], [IdKhoa]) VALUES (379, N'59PM1', 3)
INSERT [dbo].[LOP] ([ID], [MaLop], [IdKhoa]) VALUES (380, N'59PM2', 3)
INSERT [dbo].[LOP] ([ID], [MaLop], [IdKhoa]) VALUES (381, N'59PM3', 3)
INSERT [dbo].[LOP] ([ID], [MaLop], [IdKhoa]) VALUES (387, N'59QD1', 6)
INSERT [dbo].[LOP] ([ID], [MaLop], [IdKhoa]) VALUES (388, N'59QD2', 6)
INSERT [dbo].[LOP] ([ID], [MaLop], [IdKhoa]) VALUES (396, N'59VL1', 7)
INSERT [dbo].[LOP] ([ID], [MaLop], [IdKhoa]) VALUES (397, N'59VL2', 7)
INSERT [dbo].[LOP] ([ID], [MaLop], [IdKhoa]) VALUES (407, N'59XD5', 8)
INSERT [dbo].[LOP] ([ID], [MaLop], [IdKhoa]) VALUES (408, N'59XD6', 8)
INSERT [dbo].[LOP] ([ID], [MaLop], [IdKhoa]) VALUES (409, N'59XD4', 8)
SET IDENTITY_INSERT [dbo].[LOP] OFF
/****** Object:  Table [dbo].[SINHVIEN]    Script Date: 02/08/2015 00:17:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SINHVIEN](
	[MaSV] [int] NOT NULL,
	[HoSV] [nvarchar](255) NOT NULL,
	[TenSV] [nvarchar](255) NOT NULL,
	[NgaySinh] [varchar](50) NULL,
	[IdLop] [int] NOT NULL,
 CONSTRAINT [PK_SinhVien] PRIMARY KEY CLUSTERED 
(
	[MaSV] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[XEPPHONG]    Script Date: 02/08/2015 00:17:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[XEPPHONG](
	[IdSV] [int] NOT NULL,
	[IdPhong] [int] NULL,
	[IdKyThi] [int] NOT NULL,
 CONSTRAINT [PK_XEPPHONG_1] PRIMARY KEY CLUSTERED 
(
	[IdSV] ASC,
	[IdKyThi] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DIEMTHI]    Script Date: 02/08/2015 00:17:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DIEMTHI](
	[MaSV] [int] NOT NULL,
	[IdNamHoc] [int] NOT NULL,
	[HocKy] [varchar](50) NOT NULL,
	[Diem] [float] NULL,
 CONSTRAINT [PK_DIEMTHI] PRIMARY KEY CLUSTERED 
(
	[MaSV] ASC,
	[IdNamHoc] ASC,
	[HocKy] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  ForeignKey [FK_BaiLam_KyThi]    Script Date: 02/08/2015 00:17:53 ******/
ALTER TABLE [dbo].[BAILAM]  WITH CHECK ADD  CONSTRAINT [FK_BaiLam_KyThi] FOREIGN KEY([IdKyThi])
REFERENCES [dbo].[KYTHI] ([ID])
GO
ALTER TABLE [dbo].[BAILAM] CHECK CONSTRAINT [FK_BaiLam_KyThi]
GO
/****** Object:  ForeignKey [FK_DAPAN_KYTHI]    Script Date: 02/08/2015 00:17:53 ******/
ALTER TABLE [dbo].[DAPAN]  WITH CHECK ADD  CONSTRAINT [FK_DAPAN_KYTHI] FOREIGN KEY([IdKyThi])
REFERENCES [dbo].[KYTHI] ([ID])
GO
ALTER TABLE [dbo].[DAPAN] CHECK CONSTRAINT [FK_DAPAN_KYTHI]
GO
/****** Object:  ForeignKey [FK_DIEMTHI_NAMHOC]    Script Date: 02/08/2015 00:17:53 ******/
ALTER TABLE [dbo].[DIEMTHI]  WITH CHECK ADD  CONSTRAINT [FK_DIEMTHI_NAMHOC] FOREIGN KEY([IdNamHoc])
REFERENCES [dbo].[NAMHOC] ([ID])
GO
ALTER TABLE [dbo].[DIEMTHI] CHECK CONSTRAINT [FK_DIEMTHI_NAMHOC]
GO
/****** Object:  ForeignKey [FK_ThongKe_SinhVien]    Script Date: 02/08/2015 00:17:53 ******/
ALTER TABLE [dbo].[DIEMTHI]  WITH CHECK ADD  CONSTRAINT [FK_ThongKe_SinhVien] FOREIGN KEY([MaSV])
REFERENCES [dbo].[SINHVIEN] ([MaSV])
GO
ALTER TABLE [dbo].[DIEMTHI] CHECK CONSTRAINT [FK_ThongKe_SinhVien]
GO
/****** Object:  ForeignKey [FK_KT_PHONG_KyThi]    Script Date: 02/08/2015 00:17:53 ******/
ALTER TABLE [dbo].[KT_PHONG]  WITH CHECK ADD  CONSTRAINT [FK_KT_PHONG_KyThi] FOREIGN KEY([IdKyThi])
REFERENCES [dbo].[KYTHI] ([ID])
GO
ALTER TABLE [dbo].[KT_PHONG] CHECK CONSTRAINT [FK_KT_PHONG_KyThi]
GO
/****** Object:  ForeignKey [FK_KT_PHONG_PhongThi]    Script Date: 02/08/2015 00:17:53 ******/
ALTER TABLE [dbo].[KT_PHONG]  WITH CHECK ADD  CONSTRAINT [FK_KT_PHONG_PhongThi] FOREIGN KEY([IdPhong])
REFERENCES [dbo].[PHONGTHI] ([ID])
GO
ALTER TABLE [dbo].[KT_PHONG] CHECK CONSTRAINT [FK_KT_PHONG_PhongThi]
GO
/****** Object:  ForeignKey [FK_Lop_Khoa]    Script Date: 02/08/2015 00:17:53 ******/
ALTER TABLE [dbo].[LOP]  WITH CHECK ADD  CONSTRAINT [FK_Lop_Khoa] FOREIGN KEY([IdKhoa])
REFERENCES [dbo].[KHOA] ([ID])
GO
ALTER TABLE [dbo].[LOP] CHECK CONSTRAINT [FK_Lop_Khoa]
GO
/****** Object:  ForeignKey [FK_SinhVien_Lop]    Script Date: 02/08/2015 00:17:53 ******/
ALTER TABLE [dbo].[SINHVIEN]  WITH CHECK ADD  CONSTRAINT [FK_SinhVien_Lop] FOREIGN KEY([IdLop])
REFERENCES [dbo].[LOP] ([ID])
GO
ALTER TABLE [dbo].[SINHVIEN] CHECK CONSTRAINT [FK_SinhVien_Lop]
GO
/****** Object:  ForeignKey [FK_XepPhong_KyThi]    Script Date: 02/08/2015 00:17:53 ******/
ALTER TABLE [dbo].[XEPPHONG]  WITH CHECK ADD  CONSTRAINT [FK_XepPhong_KyThi] FOREIGN KEY([IdKyThi])
REFERENCES [dbo].[KYTHI] ([ID])
GO
ALTER TABLE [dbo].[XEPPHONG] CHECK CONSTRAINT [FK_XepPhong_KyThi]
GO
/****** Object:  ForeignKey [FK_XepPhong_SinhVien]    Script Date: 02/08/2015 00:17:53 ******/
ALTER TABLE [dbo].[XEPPHONG]  WITH CHECK ADD  CONSTRAINT [FK_XepPhong_SinhVien] FOREIGN KEY([IdSV])
REFERENCES [dbo].[SINHVIEN] ([MaSV])
GO
ALTER TABLE [dbo].[XEPPHONG] CHECK CONSTRAINT [FK_XepPhong_SinhVien]
GO
