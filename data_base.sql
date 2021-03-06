USE [master]
GO
/****** Object:  Database [RestaurantDB]    Script Date: 4/16/2019 10:22:10 PM ******/
CREATE DATABASE [RestaurantDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'RestaurantDB', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.MSSQSERVER2012\MSSQL\DATA\RestaurantDB.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'RestaurantDB_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.MSSQSERVER2012\MSSQL\DATA\RestaurantDB_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [RestaurantDB] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [RestaurantDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [RestaurantDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [RestaurantDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [RestaurantDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [RestaurantDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [RestaurantDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [RestaurantDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [RestaurantDB] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [RestaurantDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [RestaurantDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [RestaurantDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [RestaurantDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [RestaurantDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [RestaurantDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [RestaurantDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [RestaurantDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [RestaurantDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [RestaurantDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [RestaurantDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [RestaurantDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [RestaurantDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [RestaurantDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [RestaurantDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [RestaurantDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [RestaurantDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [RestaurantDB] SET  MULTI_USER 
GO
ALTER DATABASE [RestaurantDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [RestaurantDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [RestaurantDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [RestaurantDB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [RestaurantDB]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 4/16/2019 10:22:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[CustomerID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Item]    Script Date: 4/16/2019 10:22:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Item](
	[ItemID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[Price] [decimal](18, 0) NULL,
 CONSTRAINT [PK_Item] PRIMARY KEY CLUSTERED 
(
	[ItemID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Order]    Script Date: 4/16/2019 10:22:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Order](
	[OrderID] [bigint] IDENTITY(1,1) NOT NULL,
	[OrderNo] [varchar](50) NULL,
	[CustomerID] [int] NULL,
	[PMethod] [nvarchar](250) NULL,
	[GTotal] [decimal](18, 0) NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OrderItem]    Script Date: 4/16/2019 10:22:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderItem](
	[OrderItemID] [bigint] IDENTITY(1,1) NOT NULL,
	[OrderID] [bigint] NULL,
	[ItemID] [int] NULL,
	[Quantity] [int] NULL,
 CONSTRAINT [PK_OrderItem] PRIMARY KEY CLUSTERED 
(
	[OrderItemID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Customer] ON 

INSERT [dbo].[Customer] ([CustomerID], [Name]) VALUES (1, N'Bàn 1')
INSERT [dbo].[Customer] ([CustomerID], [Name]) VALUES (2, N'Bàn 2')
INSERT [dbo].[Customer] ([CustomerID], [Name]) VALUES (3, N'Bàn 3')
INSERT [dbo].[Customer] ([CustomerID], [Name]) VALUES (4, N'Bàn 4')
INSERT [dbo].[Customer] ([CustomerID], [Name]) VALUES (5, N'Bàn 5')
INSERT [dbo].[Customer] ([CustomerID], [Name]) VALUES (6, N'Bàn 6')
INSERT [dbo].[Customer] ([CustomerID], [Name]) VALUES (7, N'Bàn 7')
INSERT [dbo].[Customer] ([CustomerID], [Name]) VALUES (8, N'Bàn 8')
INSERT [dbo].[Customer] ([CustomerID], [Name]) VALUES (9, N'Bàn 9')
INSERT [dbo].[Customer] ([CustomerID], [Name]) VALUES (10, N'Bàn 10')
SET IDENTITY_INSERT [dbo].[Customer] OFF
SET IDENTITY_INSERT [dbo].[Item] ON 

INSERT [dbo].[Item] ([ItemID], [Name], [Price]) VALUES (4, N'Bún mẹt lớn', CAST(50000 AS Decimal(18, 0)))
INSERT [dbo].[Item] ([ItemID], [Name], [Price]) VALUES (5, N'Bún mẹt nhỏ', CAST(30000 AS Decimal(18, 0)))
INSERT [dbo].[Item] ([ItemID], [Name], [Price]) VALUES (6, N'Ram', CAST(20000 AS Decimal(18, 0)))
INSERT [dbo].[Item] ([ItemID], [Name], [Price]) VALUES (7, N'Chả cốm', CAST(20000 AS Decimal(18, 0)))
INSERT [dbo].[Item] ([ItemID], [Name], [Price]) VALUES (8, N'Tô giò heo giả cầy', CAST(25000 AS Decimal(18, 0)))
INSERT [dbo].[Item] ([ItemID], [Name], [Price]) VALUES (9, N'Bún giò heo giả cầy', CAST(25000 AS Decimal(18, 0)))
INSERT [dbo].[Item] ([ItemID], [Name], [Price]) VALUES (10, N'Bún thêm', CAST(5000 AS Decimal(18, 0)))
INSERT [dbo].[Item] ([ItemID], [Name], [Price]) VALUES (11, N'Đậu khuôn thêm', CAST(10000 AS Decimal(18, 0)))
INSERT [dbo].[Item] ([ItemID], [Name], [Price]) VALUES (12, N'Thịt luộc thêm', CAST(20000 AS Decimal(18, 0)))
INSERT [dbo].[Item] ([ItemID], [Name], [Price]) VALUES (13, N'Lòng dồi rán', CAST(25000 AS Decimal(18, 0)))
INSERT [dbo].[Item] ([ItemID], [Name], [Price]) VALUES (14, N'Nước mơ', CAST(15000 AS Decimal(18, 0)))
INSERT [dbo].[Item] ([ItemID], [Name], [Price]) VALUES (15, N'Nước dâu tằm', CAST(15000 AS Decimal(18, 0)))
INSERT [dbo].[Item] ([ItemID], [Name], [Price]) VALUES (16, N'Nước mía', CAST(7000 AS Decimal(18, 0)))
INSERT [dbo].[Item] ([ItemID], [Name], [Price]) VALUES (17, N'Nước cam vắt', CAST(15000 AS Decimal(18, 0)))
INSERT [dbo].[Item] ([ItemID], [Name], [Price]) VALUES (18, N'Nước chanh dây', CAST(15000 AS Decimal(18, 0)))
SET IDENTITY_INSERT [dbo].[Item] OFF
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([OrderID], [OrderNo], [CustomerID], [PMethod], [GTotal]) VALUES (7, N'641763', 5, N'Tiền Mặt', CAST(165000 AS Decimal(18, 0)))
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderItem] ON 

INSERT [dbo].[OrderItem] ([OrderItemID], [OrderID], [ItemID], [Quantity]) VALUES (11, 7, 4, 2)
INSERT [dbo].[OrderItem] ([OrderItemID], [OrderID], [ItemID], [Quantity]) VALUES (12, 7, 7, 1)
INSERT [dbo].[OrderItem] ([OrderItemID], [OrderID], [ItemID], [Quantity]) VALUES (13, 7, 17, 3)
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Customer] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customer] ([CustomerID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Customer]
GO
ALTER TABLE [dbo].[OrderItem]  WITH CHECK ADD  CONSTRAINT [FK_OrderItem_Item] FOREIGN KEY([ItemID])
REFERENCES [dbo].[Item] ([ItemID])
GO
ALTER TABLE [dbo].[OrderItem] CHECK CONSTRAINT [FK_OrderItem_Item]
GO
ALTER TABLE [dbo].[OrderItem]  WITH CHECK ADD  CONSTRAINT [FK_OrderItem_OrderItem] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Order] ([OrderID])
GO
ALTER TABLE [dbo].[OrderItem] CHECK CONSTRAINT [FK_OrderItem_OrderItem]
GO
USE [master]
GO
ALTER DATABASE [RestaurantDB] SET  READ_WRITE 
GO
