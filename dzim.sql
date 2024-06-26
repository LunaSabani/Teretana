USE [master]
GO
/****** Object:  Database [Teretana]    Script Date: 11/20/2023 9:34:20 AM ******/
CREATE DATABASE [Teretana]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Teretana', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Teretana.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Teretana_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Teretana_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Teretana] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Teretana].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Teretana] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Teretana] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Teretana] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Teretana] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Teretana] SET ARITHABORT OFF 
GO
ALTER DATABASE [Teretana] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Teretana] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Teretana] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Teretana] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Teretana] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Teretana] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Teretana] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Teretana] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Teretana] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Teretana] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Teretana] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Teretana] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Teretana] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Teretana] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Teretana] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Teretana] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Teretana] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Teretana] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Teretana] SET  MULTI_USER 
GO
ALTER DATABASE [Teretana] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Teretana] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Teretana] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Teretana] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Teretana] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Teretana] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Teretana] SET QUERY_STORE = OFF
GO
USE [Teretana]
GO
/****** Object:  Table [dbo].[Clan]    Script Date: 11/20/2023 9:34:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clan](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Ime] [nvarchar](50) NOT NULL,
	[Prezime] [nvarchar](50) NOT NULL,
	[Kontakt] [nvarchar](50) NOT NULL,
	[Datum_rodjenja] [date] NOT NULL,
	[Pol] [nvarchar](1) NOT NULL,
	[Id_teretane] [int] NOT NULL,
	[id_trenera] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teretana]    Script Date: 11/20/2023 9:34:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teretana](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Naziv] [nvarchar](50) NOT NULL,
	[Adresa] [nvarchar](50) NOT NULL,
	[Broj_telefona] [nvarchar](50) NOT NULL,
	[Grad] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Trener]    Script Date: 11/20/2023 9:34:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Trener](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Ime] [nvarchar](50) NOT NULL,
	[Prezime] [nvarchar](50) NOT NULL,
	[Kontakt] [nvarchar](50) NOT NULL,
	[Pol] [nvarchar](1) NOT NULL,
	[Id_teretane] [int] NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Clan] ON 

INSERT [dbo].[Clan] ([Id], [Ime], [Prezime], [Kontakt], [Datum_rodjenja], [Pol], [Id_teretane], [id_trenera]) VALUES (2, N'Jovan', N'Cvijic', N'068582498', CAST(N'2005-11-28' AS Date), N'M', 1, NULL)
INSERT [dbo].[Clan] ([Id], [Ime], [Prezime], [Kontakt], [Datum_rodjenja], [Pol], [Id_teretane], [id_trenera]) VALUES (3, N'Kazimir', N'Josifovic', N'062525252', CAST(N'1999-12-05' AS Date), N'M', 13, 8)
INSERT [dbo].[Clan] ([Id], [Ime], [Prezime], [Kontakt], [Datum_rodjenja], [Pol], [Id_teretane], [id_trenera]) VALUES (4, N'Josip', N'Jugoljubovic', N'06253252', CAST(N'1965-08-08' AS Date), N'M', 4, 19)
INSERT [dbo].[Clan] ([Id], [Ime], [Prezime], [Kontakt], [Datum_rodjenja], [Pol], [Id_teretane], [id_trenera]) VALUES (5, N'Ivana', N'Ivanovic', N'021 1520', CAST(N'2001-05-05' AS Date), N'Z', 8, NULL)
INSERT [dbo].[Clan] ([Id], [Ime], [Prezime], [Kontakt], [Datum_rodjenja], [Pol], [Id_teretane], [id_trenera]) VALUES (6, N'Zeljko', N'Joksimovic', N'06223565', CAST(N'1972-04-20' AS Date), N'M', 2, 4)
INSERT [dbo].[Clan] ([Id], [Ime], [Prezime], [Kontakt], [Datum_rodjenja], [Pol], [Id_teretane], [id_trenera]) VALUES (7, N'Mina ', N'Joksimovic', N'062352352', CAST(N'2000-08-09' AS Date), N'Z', 2, NULL)
INSERT [dbo].[Clan] ([Id], [Ime], [Prezime], [Kontakt], [Datum_rodjenja], [Pol], [Id_teretane], [id_trenera]) VALUES (8, N'Zoki', N'Sumadinac', N'06245854', CAST(N'1975-08-08' AS Date), N'M', 20, 18)
INSERT [dbo].[Clan] ([Id], [Ime], [Prezime], [Kontakt], [Datum_rodjenja], [Pol], [Id_teretane], [id_trenera]) VALUES (9, N'Dusan', N'Tadic', N'06235254', CAST(N'1988-11-20' AS Date), N'M', 7, 2)
INSERT [dbo].[Clan] ([Id], [Ime], [Prezime], [Kontakt], [Datum_rodjenja], [Pol], [Id_teretane], [id_trenera]) VALUES (10, N'Vanja ', N'Milinkkovic-Savic', N'06264116', CAST(N'1997-02-20' AS Date), N'M', 14, 5)
INSERT [dbo].[Clan] ([Id], [Ime], [Prezime], [Kontakt], [Datum_rodjenja], [Pol], [Id_teretane], [id_trenera]) VALUES (11, N'Tijana', N'Boskovic', N'06125245', CAST(N'1997-03-08' AS Date), N'Z', 10, NULL)
INSERT [dbo].[Clan] ([Id], [Ime], [Prezime], [Kontakt], [Datum_rodjenja], [Pol], [Id_teretane], [id_trenera]) VALUES (12, N'Maja', N'Ognjenovic', N'0612521', CAST(N'1984-08-06' AS Date), N'Z', 6, 4)
INSERT [dbo].[Clan] ([Id], [Ime], [Prezime], [Kontakt], [Datum_rodjenja], [Pol], [Id_teretane], [id_trenera]) VALUES (13, N'Nemanja', N'Radonjic', N'06585895', CAST(N'1996-02-15' AS Date), N'M', 9, 13)
INSERT [dbo].[Clan] ([Id], [Ime], [Prezime], [Kontakt], [Datum_rodjenja], [Pol], [Id_teretane], [id_trenera]) VALUES (14, N'Ivan', N'Juric', N'024585', CAST(N'1975-06-25' AS Date), N'M', 18, 17)
INSERT [dbo].[Clan] ([Id], [Ime], [Prezime], [Kontakt], [Datum_rodjenja], [Pol], [Id_teretane], [id_trenera]) VALUES (15, N'Nikola', N'Vlasic', N'0646546', CAST(N'1997-10-04' AS Date), N'M', 5, NULL)
INSERT [dbo].[Clan] ([Id], [Ime], [Prezime], [Kontakt], [Datum_rodjenja], [Pol], [Id_teretane], [id_trenera]) VALUES (16, N'Sara', N'Saric', N'06121356', CAST(N'2005-04-19' AS Date), N'Z', 16, 3)
INSERT [dbo].[Clan] ([Id], [Ime], [Prezime], [Kontakt], [Datum_rodjenja], [Pol], [Id_teretane], [id_trenera]) VALUES (17, N'Mihajlo', N'Markovic', N'064582595', CAST(N'2005-10-23' AS Date), N'M', 3, 4)
INSERT [dbo].[Clan] ([Id], [Ime], [Prezime], [Kontakt], [Datum_rodjenja], [Pol], [Id_teretane], [id_trenera]) VALUES (18, N'Marko', N'Jack', N'061252256', CAST(N'1985-10-10' AS Date), N'M', 17, 1)
INSERT [dbo].[Clan] ([Id], [Ime], [Prezime], [Kontakt], [Datum_rodjenja], [Pol], [Id_teretane], [id_trenera]) VALUES (19, N'Igor', N'Terzic', N'0611111111', CAST(N'1975-12-12' AS Date), N'M', 12, 15)
INSERT [dbo].[Clan] ([Id], [Ime], [Prezime], [Kontakt], [Datum_rodjenja], [Pol], [Id_teretane], [id_trenera]) VALUES (20, N'Luka', N'Kojic', N'1620226', CAST(N'1970-10-09' AS Date), N'M', 11, 5)
SET IDENTITY_INSERT [dbo].[Clan] OFF
GO
SET IDENTITY_INSERT [dbo].[Teretana] ON 

INSERT [dbo].[Teretana] ([Id], [Naziv], [Adresa], [Broj_telefona], [Grad]) VALUES (1, N'Bicula', N'Begec1', N'021 111', N'Novi Sad')
INSERT [dbo].[Teretana] ([Id], [Naziv], [Adresa], [Broj_telefona], [Grad]) VALUES (2, N'Efitnes', N'Novosadskog sajma 14', N'078 5452', N'Novi Sad')
INSERT [dbo].[Teretana] ([Id], [Naziv], [Adresa], [Broj_telefona], [Grad]) VALUES (3, N'Classic Gym Bulevar', N'Bulevar Oslobodjenja 23', N'064 8956589', N'Novi Sad')
INSERT [dbo].[Teretana] ([Id], [Naziv], [Adresa], [Broj_telefona], [Grad]) VALUES (4, N'Mega Gym Zemun', N'Zemun1', N'068 58985', N'Beograd')
INSERT [dbo].[Teretana] ([Id], [Naziv], [Adresa], [Broj_telefona], [Grad]) VALUES (5, N'Morrison Gym', N'Rasima Halilovica', N'062 22215', N'Novi Pazar')
INSERT [dbo].[Teretana] ([Id], [Naziv], [Adresa], [Broj_telefona], [Grad]) VALUES (6, N'Mega Gym Novi Beograd', N'Omladinskih Brigada 58', N'061 1598746', N'Beograd')
INSERT [dbo].[Teretana] ([Id], [Naziv], [Adresa], [Broj_telefona], [Grad]) VALUES (7, N'NBGGYM', N'Palmira Toljatija 5', N'066 5079174', N'Beograd')
INSERT [dbo].[Teretana] ([Id], [Naziv], [Adresa], [Broj_telefona], [Grad]) VALUES (9, N'Sky Gym', N'Mirisnih vrba 5', N'069 2308009', N'Nis')
INSERT [dbo].[Teretana] ([Id], [Naziv], [Adresa], [Broj_telefona], [Grad]) VALUES (10, N'Universum Fitness centar', N'Pantelejska 52b', N'063 452879', N'Nis')
INSERT [dbo].[Teretana] ([Id], [Naziv], [Adresa], [Broj_telefona], [Grad]) VALUES (11, N'Shogun Gym Serbia', N'Topolska 11', N'064614859', N'Backa Palanka')
INSERT [dbo].[Teretana] ([Id], [Naziv], [Adresa], [Broj_telefona], [Grad]) VALUES (12, N'Fitness Revolution', N'Zikica Jovanovic', N'060123456', N'Leskovac')
INSERT [dbo].[Teretana] ([Id], [Naziv], [Adresa], [Broj_telefona], [Grad]) VALUES (13, N'Hercool ', N'Janka Veselinovica 1', N'060258963', N'Leskovac')
INSERT [dbo].[Teretana] ([Id], [Naziv], [Adresa], [Broj_telefona], [Grad]) VALUES (14, N'Segment Gym', N'Kireska 59', N'0621528290', N'Subotica')
INSERT [dbo].[Teretana] ([Id], [Naziv], [Adresa], [Broj_telefona], [Grad]) VALUES (15, N'Urban Box', N'Dvadesetprvog Oktobra 27', N'065859674', N'Sombor')
INSERT [dbo].[Teretana] ([Id], [Naziv], [Adresa], [Broj_telefona], [Grad]) VALUES (16, N'Maximus', N'Bulevar Oslobodjenja 17', N'0631033413', N'Cacak')
INSERT [dbo].[Teretana] ([Id], [Naziv], [Adresa], [Broj_telefona], [Grad]) VALUES (17, N'Fitness One Gym', N'Bulvear Kraljice Marije 147', N'034204248', N'Kragujevac')
INSERT [dbo].[Teretana] ([Id], [Naziv], [Adresa], [Broj_telefona], [Grad]) VALUES (18, N'Albatros', N'Janka Veselinovica 2', N'nema', N'Kragujevac')
INSERT [dbo].[Teretana] ([Id], [Naziv], [Adresa], [Broj_telefona], [Grad]) VALUES (19, N'Fitness Healthy Living', N'Banjicka 3', N'062223563', N'Uzice')
INSERT [dbo].[Teretana] ([Id], [Naziv], [Adresa], [Broj_telefona], [Grad]) VALUES (20, N'H2O Trening Centar', N'Hajduk Veljkova bb', N'015340531', N'Sabac')
SET IDENTITY_INSERT [dbo].[Teretana] OFF
GO
SET IDENTITY_INSERT [dbo].[Trener] ON 

INSERT [dbo].[Trener] ([Id], [Ime], [Prezime], [Kontakt], [Pol], [Id_teretane]) VALUES (1, N'Ljubinko', N'Uzelac', N'06253514', N'M', 3)
INSERT [dbo].[Trener] ([Id], [Ime], [Prezime], [Kontakt], [Pol], [Id_teretane]) VALUES (2, N'Petar ', N'Petrovic ', N'06245875', N'M', 6)
INSERT [dbo].[Trener] ([Id], [Ime], [Prezime], [Kontakt], [Pol], [Id_teretane]) VALUES (3, N'Jovanka', N'Orleanka', N'nema', N'Z', 9)
INSERT [dbo].[Trener] ([Id], [Ime], [Prezime], [Kontakt], [Pol], [Id_teretane]) VALUES (4, N'Filip', N'Cirilovic', N'06239856', N'M', 2)
INSERT [dbo].[Trener] ([Id], [Ime], [Prezime], [Kontakt], [Pol], [Id_teretane]) VALUES (5, N'Jovan', N'Jovanovic', N'061254863', N'M', 4)
INSERT [dbo].[Trener] ([Id], [Ime], [Prezime], [Kontakt], [Pol], [Id_teretane]) VALUES (6, N'Tamara', N'Markovic', N'065985656', N'Z', 6)
INSERT [dbo].[Trener] ([Id], [Ime], [Prezime], [Kontakt], [Pol], [Id_teretane]) VALUES (7, N'Mihajlo', N'Mihajlovic', N'0254852', N'M', 3)
INSERT [dbo].[Trener] ([Id], [Ime], [Prezime], [Kontakt], [Pol], [Id_teretane]) VALUES (8, N'Luka', N'Lukic', N'06895689', N'M', 1)
INSERT [dbo].[Trener] ([Id], [Ime], [Prezime], [Kontakt], [Pol], [Id_teretane]) VALUES (9, N'Vladimir', N'Vladimirovic', N'06525252', N'M', 10)
INSERT [dbo].[Trener] ([Id], [Ime], [Prezime], [Kontakt], [Pol], [Id_teretane]) VALUES (10, N'Sladjana', N'Mikic', N'06487596', N'Z', 11)
INSERT [dbo].[Trener] ([Id], [Ime], [Prezime], [Kontakt], [Pol], [Id_teretane]) VALUES (11, N'Jovan', N'Petrovic', N'062585285', N'M', 12)
INSERT [dbo].[Trener] ([Id], [Ime], [Prezime], [Kontakt], [Pol], [Id_teretane]) VALUES (12, N'Zoran', N'Zoranovic', N'06235362', N'M', 13)
INSERT [dbo].[Trener] ([Id], [Ime], [Prezime], [Kontakt], [Pol], [Id_teretane]) VALUES (13, N'Milica', N'Milic', N'06232323', N'Z', 14)
INSERT [dbo].[Trener] ([Id], [Ime], [Prezime], [Kontakt], [Pol], [Id_teretane]) VALUES (14, N'Aleksandar', N'Karadjordjevic', N'nema', N'M', 15)
INSERT [dbo].[Trener] ([Id], [Ime], [Prezime], [Kontakt], [Pol], [Id_teretane]) VALUES (15, N'Anto', N'Antonic', N'06235859', N'M', 16)
INSERT [dbo].[Trener] ([Id], [Ime], [Prezime], [Kontakt], [Pol], [Id_teretane]) VALUES (16, N'Ana', N'Stanimirov', N'06363636', N'Z', 17)
INSERT [dbo].[Trener] ([Id], [Ime], [Prezime], [Kontakt], [Pol], [Id_teretane]) VALUES (17, N'Uros', N'Pesic', N'06789788', N'M', 18)
INSERT [dbo].[Trener] ([Id], [Ime], [Prezime], [Kontakt], [Pol], [Id_teretane]) VALUES (18, N'Hranisa', N'Filipovic', N'06414141', N'M', 19)
INSERT [dbo].[Trener] ([Id], [Ime], [Prezime], [Kontakt], [Pol], [Id_teretane]) VALUES (19, N'Caslavka', N'Scepanka', N'051111', N'Z', 20)
INSERT [dbo].[Trener] ([Id], [Ime], [Prezime], [Kontakt], [Pol], [Id_teretane]) VALUES (20, N'Lidija', N'Lolic', N'0656565', N'Z', 7)
SET IDENTITY_INSERT [dbo].[Trener] OFF
GO
USE [master]
GO
ALTER DATABASE [Teretana] SET  READ_WRITE 
GO
