USE [master]
GO
/****** Object:  Database [odev]    Script Date: 21.01.2021 18:19:10 ******/
CREATE DATABASE [odev]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'odev', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\odev.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'odev_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\odev_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [odev] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [odev].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [odev] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [odev] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [odev] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [odev] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [odev] SET ARITHABORT OFF 
GO
ALTER DATABASE [odev] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [odev] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [odev] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [odev] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [odev] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [odev] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [odev] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [odev] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [odev] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [odev] SET  DISABLE_BROKER 
GO
ALTER DATABASE [odev] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [odev] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [odev] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [odev] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [odev] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [odev] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [odev] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [odev] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [odev] SET  MULTI_USER 
GO
ALTER DATABASE [odev] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [odev] SET DB_CHAINING OFF 
GO
ALTER DATABASE [odev] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [odev] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [odev] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [odev] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [odev] SET QUERY_STORE = OFF
GO
USE [odev]
GO
/****** Object:  Table [dbo].[Filmler]    Script Date: 21.01.2021 18:19:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Filmler](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Adi] [nvarchar](50) NOT NULL,
	[YapimYili] [date] NULL,
	[Gisesi] [int] NULL,
	[YonetmenId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FilmlerKarakterler]    Script Date: 21.01.2021 18:19:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FilmlerKarakterler](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FilmId] [int] NULL,
	[KarakterId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FilmlerOyuncular]    Script Date: 21.01.2021 18:19:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FilmlerOyuncular](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FilmId] [int] NULL,
	[OyuncuId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FilmlerOyuncularKarakterler]    Script Date: 21.01.2021 18:19:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FilmlerOyuncularKarakterler](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FilmId] [int] NOT NULL,
	[OyuncuId] [int] NOT NULL,
	[KarakterId] [int] NOT NULL,
 CONSTRAINT [PK_FilmlerOyuncularKarakterler] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FilmlerTurler]    Script Date: 21.01.2021 18:19:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FilmlerTurler](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FilmId] [int] NULL,
	[TurId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FilmlerYonetmenler]    Script Date: 21.01.2021 18:19:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FilmlerYonetmenler](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FilmId] [int] NULL,
	[YonetmenId] [int] NULL,
 CONSTRAINT [PK_FilmlerYonetmenler] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Karakterler]    Script Date: 21.01.2021 18:19:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Karakterler](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AdiSoyadi] [nvarchar](50) NOT NULL,
	[OyuncuId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Oyuncular]    Script Date: 21.01.2021 18:19:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Oyuncular](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Adi] [nvarchar](50) NOT NULL,
	[Soyadi] [nvarchar](50) NULL,
	[DogumTarihi] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tur]    Script Date: 21.01.2021 18:19:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tur](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Adi] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Yonetmenler]    Script Date: 21.01.2021 18:19:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Yonetmenler](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Adi] [nvarchar](50) NOT NULL,
	[Soyadi] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Filmler] ON 

INSERT [dbo].[Filmler] ([Id], [Adi], [YapimYili], [Gisesi], [YonetmenId]) VALUES (1, N'John wick', CAST(N'1980-06-06' AS Date), 123000, 1)
INSERT [dbo].[Filmler] ([Id], [Adi], [YapimYili], [Gisesi], [YonetmenId]) VALUES (3, N'Hitman', CAST(N'2016-04-23' AS Date), 5032500, 2)
INSERT [dbo].[Filmler] ([Id], [Adi], [YapimYili], [Gisesi], [YonetmenId]) VALUES (4, N'Görünmez Adam', CAST(N'2020-02-28' AS Date), 1323250, 6)
INSERT [dbo].[Filmler] ([Id], [Adi], [YapimYili], [Gisesi], [YonetmenId]) VALUES (7, N'
The Midnight Sky', CAST(N'2020-12-04' AS Date), 100000000, 4)
SET IDENTITY_INSERT [dbo].[Filmler] OFF
GO
SET IDENTITY_INSERT [dbo].[FilmlerKarakterler] ON 

INSERT [dbo].[FilmlerKarakterler] ([Id], [FilmId], [KarakterId]) VALUES (1, 1, 1)
INSERT [dbo].[FilmlerKarakterler] ([Id], [FilmId], [KarakterId]) VALUES (4, 3, 5)
INSERT [dbo].[FilmlerKarakterler] ([Id], [FilmId], [KarakterId]) VALUES (5, 7, 6)
INSERT [dbo].[FilmlerKarakterler] ([Id], [FilmId], [KarakterId]) VALUES (6, 4, 2)
SET IDENTITY_INSERT [dbo].[FilmlerKarakterler] OFF
GO
SET IDENTITY_INSERT [dbo].[FilmlerOyuncular] ON 

INSERT [dbo].[FilmlerOyuncular] ([Id], [FilmId], [OyuncuId]) VALUES (1, 1, 1)
INSERT [dbo].[FilmlerOyuncular] ([Id], [FilmId], [OyuncuId]) VALUES (2, 4, 5)
INSERT [dbo].[FilmlerOyuncular] ([Id], [FilmId], [OyuncuId]) VALUES (3, 7, 4)
INSERT [dbo].[FilmlerOyuncular] ([Id], [FilmId], [OyuncuId]) VALUES (4, 3, 2)
SET IDENTITY_INSERT [dbo].[FilmlerOyuncular] OFF
GO
SET IDENTITY_INSERT [dbo].[FilmlerOyuncularKarakterler] ON 

INSERT [dbo].[FilmlerOyuncularKarakterler] ([Id], [FilmId], [OyuncuId], [KarakterId]) VALUES (1, 3, 1, 6)
INSERT [dbo].[FilmlerOyuncularKarakterler] ([Id], [FilmId], [OyuncuId], [KarakterId]) VALUES (6, 1, 4, 3)
INSERT [dbo].[FilmlerOyuncularKarakterler] ([Id], [FilmId], [OyuncuId], [KarakterId]) VALUES (8, 7, 4, 2)
SET IDENTITY_INSERT [dbo].[FilmlerOyuncularKarakterler] OFF
GO
SET IDENTITY_INSERT [dbo].[FilmlerTurler] ON 

INSERT [dbo].[FilmlerTurler] ([Id], [FilmId], [TurId]) VALUES (1, 1, 2)
INSERT [dbo].[FilmlerTurler] ([Id], [FilmId], [TurId]) VALUES (6, 3, 4)
INSERT [dbo].[FilmlerTurler] ([Id], [FilmId], [TurId]) VALUES (7, 3, 2)
INSERT [dbo].[FilmlerTurler] ([Id], [FilmId], [TurId]) VALUES (8, 4, 3)
INSERT [dbo].[FilmlerTurler] ([Id], [FilmId], [TurId]) VALUES (9, 7, 5)
SET IDENTITY_INSERT [dbo].[FilmlerTurler] OFF
GO
SET IDENTITY_INSERT [dbo].[FilmlerYonetmenler] ON 

INSERT [dbo].[FilmlerYonetmenler] ([Id], [FilmId], [YonetmenId]) VALUES (1, 4, 3)
INSERT [dbo].[FilmlerYonetmenler] ([Id], [FilmId], [YonetmenId]) VALUES (2, 7, 5)
INSERT [dbo].[FilmlerYonetmenler] ([Id], [FilmId], [YonetmenId]) VALUES (4, 3, 4)
INSERT [dbo].[FilmlerYonetmenler] ([Id], [FilmId], [YonetmenId]) VALUES (5, 1, 5)
SET IDENTITY_INSERT [dbo].[FilmlerYonetmenler] OFF
GO
SET IDENTITY_INSERT [dbo].[Karakterler] ON 

INSERT [dbo].[Karakterler] ([Id], [AdiSoyadi], [OyuncuId]) VALUES (1, N'Kenan İmirzalıoğlu', 1)
INSERT [dbo].[Karakterler] ([Id], [AdiSoyadi], [OyuncuId]) VALUES (2, N'Cansu Dere', 2)
INSERT [dbo].[Karakterler] ([Id], [AdiSoyadi], [OyuncuId]) VALUES (3, N'Dwayne Jhonson', 3)
INSERT [dbo].[Karakterler] ([Id], [AdiSoyadi], [OyuncuId]) VALUES (5, N'Malin Akerman', 4)
INSERT [dbo].[Karakterler] ([Id], [AdiSoyadi], [OyuncuId]) VALUES (6, N'Murat Yıldırım', 5)
SET IDENTITY_INSERT [dbo].[Karakterler] OFF
GO
SET IDENTITY_INSERT [dbo].[Oyuncular] ON 

INSERT [dbo].[Oyuncular] ([Id], [Adi], [Soyadi], [DogumTarihi]) VALUES (1, N'Kenan', N'İmirzalıoğu', CAST(N'1974-06-18' AS Date))
INSERT [dbo].[Oyuncular] ([Id], [Adi], [Soyadi], [DogumTarihi]) VALUES (2, N'Cansu', N'Dere', CAST(N'1980-10-14' AS Date))
INSERT [dbo].[Oyuncular] ([Id], [Adi], [Soyadi], [DogumTarihi]) VALUES (3, N'Dwayne', N'Jhonson', CAST(N'1972-05-02' AS Date))
INSERT [dbo].[Oyuncular] ([Id], [Adi], [Soyadi], [DogumTarihi]) VALUES (4, N'Malin', N'Akerman', CAST(N'1978-05-23' AS Date))
INSERT [dbo].[Oyuncular] ([Id], [Adi], [Soyadi], [DogumTarihi]) VALUES (5, N'Murat ', N'Yıldırım', CAST(N'1987-08-12' AS Date))
SET IDENTITY_INSERT [dbo].[Oyuncular] OFF
GO
SET IDENTITY_INSERT [dbo].[Tur] ON 

INSERT [dbo].[Tur] ([Id], [Adi]) VALUES (1, N'Korku')
INSERT [dbo].[Tur] ([Id], [Adi]) VALUES (2, N'Gizem')
INSERT [dbo].[Tur] ([Id], [Adi]) VALUES (3, N'Aksiyon')
INSERT [dbo].[Tur] ([Id], [Adi]) VALUES (4, N'Bilim kurgu')
INSERT [dbo].[Tur] ([Id], [Adi]) VALUES (5, N'Komedi')
SET IDENTITY_INSERT [dbo].[Tur] OFF
GO
SET IDENTITY_INSERT [dbo].[Yonetmenler] ON 

INSERT [dbo].[Yonetmenler] ([Id], [Adi], [Soyadi]) VALUES (1, N'Kartal', N'Tibet')
INSERT [dbo].[Yonetmenler] ([Id], [Adi], [Soyadi]) VALUES (2, N'Mustafa ', N'Altıoklar')
INSERT [dbo].[Yonetmenler] ([Id], [Adi], [Soyadi]) VALUES (3, N'Şahan', N'Irmak')
INSERT [dbo].[Yonetmenler] ([Id], [Adi], [Soyadi]) VALUES (4, N'Serdar', N'Akar')
INSERT [dbo].[Yonetmenler] ([Id], [Adi], [Soyadi]) VALUES (5, N'Feo', N'Aladağ')
INSERT [dbo].[Yonetmenler] ([Id], [Adi], [Soyadi]) VALUES (6, N'Woody Allen', N'Allen')
SET IDENTITY_INSERT [dbo].[Yonetmenler] OFF
GO
ALTER TABLE [dbo].[Filmler]  WITH CHECK ADD FOREIGN KEY([YonetmenId])
REFERENCES [dbo].[Yonetmenler] ([Id])
GO
ALTER TABLE [dbo].[FilmlerKarakterler]  WITH CHECK ADD FOREIGN KEY([FilmId])
REFERENCES [dbo].[Filmler] ([Id])
GO
ALTER TABLE [dbo].[FilmlerKarakterler]  WITH CHECK ADD FOREIGN KEY([KarakterId])
REFERENCES [dbo].[Karakterler] ([Id])
GO
ALTER TABLE [dbo].[FilmlerOyuncular]  WITH CHECK ADD FOREIGN KEY([FilmId])
REFERENCES [dbo].[Filmler] ([Id])
GO
ALTER TABLE [dbo].[FilmlerOyuncular]  WITH CHECK ADD FOREIGN KEY([OyuncuId])
REFERENCES [dbo].[Oyuncular] ([Id])
GO
ALTER TABLE [dbo].[FilmlerOyuncularKarakterler]  WITH CHECK ADD  CONSTRAINT [FK_FilmlerOyuncularKarakterler_Filmler] FOREIGN KEY([FilmId])
REFERENCES [dbo].[Filmler] ([Id])
GO
ALTER TABLE [dbo].[FilmlerOyuncularKarakterler] CHECK CONSTRAINT [FK_FilmlerOyuncularKarakterler_Filmler]
GO
ALTER TABLE [dbo].[FilmlerOyuncularKarakterler]  WITH CHECK ADD  CONSTRAINT [FK_FilmlerOyuncularKarakterler_Karakterler] FOREIGN KEY([KarakterId])
REFERENCES [dbo].[Karakterler] ([Id])
GO
ALTER TABLE [dbo].[FilmlerOyuncularKarakterler] CHECK CONSTRAINT [FK_FilmlerOyuncularKarakterler_Karakterler]
GO
ALTER TABLE [dbo].[FilmlerOyuncularKarakterler]  WITH CHECK ADD  CONSTRAINT [FK_FilmlerOyuncularKarakterler_Oyuncular] FOREIGN KEY([OyuncuId])
REFERENCES [dbo].[Oyuncular] ([Id])
GO
ALTER TABLE [dbo].[FilmlerOyuncularKarakterler] CHECK CONSTRAINT [FK_FilmlerOyuncularKarakterler_Oyuncular]
GO
ALTER TABLE [dbo].[FilmlerTurler]  WITH CHECK ADD FOREIGN KEY([FilmId])
REFERENCES [dbo].[Filmler] ([Id])
GO
ALTER TABLE [dbo].[FilmlerTurler]  WITH CHECK ADD FOREIGN KEY([TurId])
REFERENCES [dbo].[Tur] ([Id])
GO
ALTER TABLE [dbo].[FilmlerYonetmenler]  WITH CHECK ADD  CONSTRAINT [FK_FilmlerYonetmenler_Filmler] FOREIGN KEY([FilmId])
REFERENCES [dbo].[Filmler] ([Id])
GO
ALTER TABLE [dbo].[FilmlerYonetmenler] CHECK CONSTRAINT [FK_FilmlerYonetmenler_Filmler]
GO
ALTER TABLE [dbo].[FilmlerYonetmenler]  WITH CHECK ADD  CONSTRAINT [FK_FilmlerYonetmenler_Yonetmenler] FOREIGN KEY([YonetmenId])
REFERENCES [dbo].[Yonetmenler] ([Id])
GO
ALTER TABLE [dbo].[FilmlerYonetmenler] CHECK CONSTRAINT [FK_FilmlerYonetmenler_Yonetmenler]
GO
ALTER TABLE [dbo].[Karakterler]  WITH CHECK ADD FOREIGN KEY([OyuncuId])
REFERENCES [dbo].[Oyuncular] ([Id])
GO
USE [master]
GO
ALTER DATABASE [odev] SET  READ_WRITE 
GO
