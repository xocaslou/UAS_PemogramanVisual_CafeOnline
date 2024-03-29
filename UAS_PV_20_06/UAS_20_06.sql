USE [master]
GO
/****** Object:  Database [Cafe]    Script Date: 12/31/2021 12:24:57 PM ******/
CREATE DATABASE [Cafe]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Cafe', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Cafe.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Cafe_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Cafe_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Cafe] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Cafe].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Cafe] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Cafe] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Cafe] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Cafe] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Cafe] SET ARITHABORT OFF 
GO
ALTER DATABASE [Cafe] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Cafe] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Cafe] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Cafe] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Cafe] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Cafe] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Cafe] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Cafe] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Cafe] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Cafe] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Cafe] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Cafe] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Cafe] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Cafe] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Cafe] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Cafe] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Cafe] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Cafe] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Cafe] SET  MULTI_USER 
GO
ALTER DATABASE [Cafe] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Cafe] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Cafe] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Cafe] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Cafe] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Cafe] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Cafe] SET QUERY_STORE = OFF
GO
USE [Cafe]
GO
/****** Object:  Table [dbo].[cust]    Script Date: 12/31/2021 12:24:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cust](
	[custid] [int] IDENTITY(1,1) NOT NULL,
	[namacust] [varchar](30) NULL,
	[alamat] [varchar](30) NULL,
	[notelp] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[custid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[menu]    Script Date: 12/31/2021 12:24:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[menu](
	[menu_id] [int] IDENTITY(1,1) NOT NULL,
	[namamenu] [varchar](30) NULL,
	[price] [decimal](10, 0) NULL,
	[stock] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[menu_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[order_detail]    Script Date: 12/31/2021 12:24:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[order_detail](
	[trans_id] [int] NULL,
	[menu_id] [int] NULL,
	[jmlbeli] [int] NULL,
	[totalharga] [decimal](10, 0) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[trans]    Script Date: 12/31/2021 12:24:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[trans](
	[trans_id] [int] IDENTITY(1,1) NOT NULL,
	[custid] [int] NULL,
	[tgltrans] [smalldatetime] NULL,
	[total] [decimal](10, 0) NULL,
	[paymentmethod] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[trans_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[cust] ON 

INSERT [dbo].[cust] ([custid], [namacust], [alamat], [notelp]) VALUES (1, N'Stella', N'Jl. Kenanga no 31', N'089471729945')
INSERT [dbo].[cust] ([custid], [namacust], [alamat], [notelp]) VALUES (2, N'Andrew', N'Jl. Karyawan II no. 36', N'0895443615')
INSERT [dbo].[cust] ([custid], [namacust], [alamat], [notelp]) VALUES (3, N'Anton', N'Jl. Daan Mogot no 12', N'087471256613')
INSERT [dbo].[cust] ([custid], [namacust], [alamat], [notelp]) VALUES (4, N'Ria', N'Jl. Patal Senayan no 1', N'084571632544')
INSERT [dbo].[cust] ([custid], [namacust], [alamat], [notelp]) VALUES (5, N'Senna', N'Jl. Setiabudi no.39', N'0897365214')
SET IDENTITY_INSERT [dbo].[cust] OFF
GO
SET IDENTITY_INSERT [dbo].[menu] ON 

INSERT [dbo].[menu] ([menu_id], [namamenu], [price], [stock]) VALUES (1, N'Earl Grey Roll Cake', CAST(25000 AS Decimal(10, 0)), 11)
INSERT [dbo].[menu] ([menu_id], [namamenu], [price], [stock]) VALUES (2, N'Fudge Brownie', CAST(20000 AS Decimal(10, 0)), 9)
INSERT [dbo].[menu] ([menu_id], [namamenu], [price], [stock]) VALUES (3, N'Blueberry Pancake', CAST(17000 AS Decimal(10, 0)), 3)
INSERT [dbo].[menu] ([menu_id], [namamenu], [price], [stock]) VALUES (4, N'Mini Cheesecake', CAST(17000 AS Decimal(10, 0)), 9)
INSERT [dbo].[menu] ([menu_id], [namamenu], [price], [stock]) VALUES (5, N'Caramel Cookies', CAST(21000 AS Decimal(10, 0)), 5)
INSERT [dbo].[menu] ([menu_id], [namamenu], [price], [stock]) VALUES (6, N'Cranberries Pie', CAST(23000 AS Decimal(10, 0)), 9)
INSERT [dbo].[menu] ([menu_id], [namamenu], [price], [stock]) VALUES (7, N'Mini Strawberry Shortcake', CAST(20000 AS Decimal(10, 0)), 9)
INSERT [dbo].[menu] ([menu_id], [namamenu], [price], [stock]) VALUES (8, N'Sparkle Unicorn Milkshake', CAST(30000 AS Decimal(10, 0)), 4)
INSERT [dbo].[menu] ([menu_id], [namamenu], [price], [stock]) VALUES (9, N'Cookie&Cream Blencchino', CAST(27000 AS Decimal(10, 0)), 8)
INSERT [dbo].[menu] ([menu_id], [namamenu], [price], [stock]) VALUES (10, N'Brown Cheese Caramel Milktea', CAST(30000 AS Decimal(10, 0)), 6)
INSERT [dbo].[menu] ([menu_id], [namamenu], [price], [stock]) VALUES (11, N'Americano', CAST(15000 AS Decimal(10, 0)), 3)
INSERT [dbo].[menu] ([menu_id], [namamenu], [price], [stock]) VALUES (12, N'Machiatto', CAST(17000 AS Decimal(10, 0)), 3)
INSERT [dbo].[menu] ([menu_id], [namamenu], [price], [stock]) VALUES (13, N'Affogato Espresso', CAST(25000 AS Decimal(10, 0)), 11)
INSERT [dbo].[menu] ([menu_id], [namamenu], [price], [stock]) VALUES (14, N'Strawberry Milkshake Bubble', CAST(28000 AS Decimal(10, 0)), 4)
SET IDENTITY_INSERT [dbo].[menu] OFF
GO
INSERT [dbo].[order_detail] ([trans_id], [menu_id], [jmlbeli], [totalharga]) VALUES (NULL, 1, 1, CAST(25000 AS Decimal(10, 0)))
INSERT [dbo].[order_detail] ([trans_id], [menu_id], [jmlbeli], [totalharga]) VALUES (NULL, 12, 1, CAST(17000 AS Decimal(10, 0)))
INSERT [dbo].[order_detail] ([trans_id], [menu_id], [jmlbeli], [totalharga]) VALUES (NULL, 11, 2, CAST(30000 AS Decimal(10, 0)))
INSERT [dbo].[order_detail] ([trans_id], [menu_id], [jmlbeli], [totalharga]) VALUES (NULL, 2, 1, CAST(20000 AS Decimal(10, 0)))
INSERT [dbo].[order_detail] ([trans_id], [menu_id], [jmlbeli], [totalharga]) VALUES (NULL, 11, 1, CAST(15000 AS Decimal(10, 0)))
INSERT [dbo].[order_detail] ([trans_id], [menu_id], [jmlbeli], [totalharga]) VALUES (NULL, 14, 1, CAST(15000 AS Decimal(10, 0)))
INSERT [dbo].[order_detail] ([trans_id], [menu_id], [jmlbeli], [totalharga]) VALUES (NULL, 6, 1, CAST(23000 AS Decimal(10, 0)))
INSERT [dbo].[order_detail] ([trans_id], [menu_id], [jmlbeli], [totalharga]) VALUES (NULL, 10, 1, CAST(30000 AS Decimal(10, 0)))
INSERT [dbo].[order_detail] ([trans_id], [menu_id], [jmlbeli], [totalharga]) VALUES (NULL, 3, 1, CAST(17000 AS Decimal(10, 0)))
GO
SET IDENTITY_INSERT [dbo].[trans] ON 

INSERT [dbo].[trans] ([trans_id], [custid], [tgltrans], [total], [paymentmethod]) VALUES (1, NULL, CAST(N'2021-12-31T12:09:00' AS SmallDateTime), CAST(42000 AS Decimal(10, 0)), N'Virtual Payment')
INSERT [dbo].[trans] ([trans_id], [custid], [tgltrans], [total], [paymentmethod]) VALUES (2, NULL, CAST(N'2021-12-31T12:10:00' AS SmallDateTime), CAST(30000 AS Decimal(10, 0)), N'Counter Payment ')
INSERT [dbo].[trans] ([trans_id], [custid], [tgltrans], [total], [paymentmethod]) VALUES (3, NULL, CAST(N'2021-12-31T12:13:00' AS SmallDateTime), CAST(50000 AS Decimal(10, 0)), N'Virtual Payment')
INSERT [dbo].[trans] ([trans_id], [custid], [tgltrans], [total], [paymentmethod]) VALUES (4, NULL, CAST(N'2021-12-31T12:16:00' AS SmallDateTime), CAST(70000 AS Decimal(10, 0)), N'Bank Payment')
INSERT [dbo].[trans] ([trans_id], [custid], [tgltrans], [total], [paymentmethod]) VALUES (5, NULL, CAST(N'2021-12-31T12:17:00' AS SmallDateTime), CAST(15000 AS Decimal(10, 0)), N'Virtual Payment')
SET IDENTITY_INSERT [dbo].[trans] OFF
GO
ALTER TABLE [dbo].[trans] ADD  DEFAULT (getdate()) FOR [tgltrans]
GO
ALTER TABLE [dbo].[order_detail]  WITH CHECK ADD FOREIGN KEY([menu_id])
REFERENCES [dbo].[menu] ([menu_id])
GO
ALTER TABLE [dbo].[order_detail]  WITH CHECK ADD FOREIGN KEY([trans_id])
REFERENCES [dbo].[trans] ([trans_id])
GO
ALTER TABLE [dbo].[trans]  WITH CHECK ADD FOREIGN KEY([custid])
REFERENCES [dbo].[cust] ([custid])
GO
USE [master]
GO
ALTER DATABASE [Cafe] SET  READ_WRITE 
GO
