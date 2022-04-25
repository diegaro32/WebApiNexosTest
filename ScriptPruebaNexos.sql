USE [master]
GO
/****** Object:  Database [NexosTest]    Script Date: 24/04/2022 20:32:31 ******/
CREATE DATABASE [NexosTest]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PruebaNexos', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\PruebaNexos.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PruebaNexos_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\PruebaNexos_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [NexosTest] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [NexosTest].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [NexosTest] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [NexosTest] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [NexosTest] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [NexosTest] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [NexosTest] SET ARITHABORT OFF 
GO
ALTER DATABASE [NexosTest] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [NexosTest] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [NexosTest] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [NexosTest] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [NexosTest] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [NexosTest] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [NexosTest] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [NexosTest] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [NexosTest] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [NexosTest] SET  DISABLE_BROKER 
GO
ALTER DATABASE [NexosTest] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [NexosTest] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [NexosTest] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [NexosTest] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [NexosTest] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [NexosTest] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [NexosTest] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [NexosTest] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [NexosTest] SET  MULTI_USER 
GO
ALTER DATABASE [NexosTest] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [NexosTest] SET DB_CHAINING OFF 
GO
ALTER DATABASE [NexosTest] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [NexosTest] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [NexosTest] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [NexosTest] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [NexosTest] SET QUERY_STORE = OFF
GO
USE [NexosTest]
GO
/****** Object:  Table [dbo].[Autor]    Script Date: 24/04/2022 20:32:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Autor](
	[IdAutor] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](200) NOT NULL,
	[BirthDate] [date] NOT NULL,
	[IdCity] [int] NOT NULL,
	[Email] [varchar](200) NOT NULL,
 CONSTRAINT [PK_Autor] PRIMARY KEY CLUSTERED 
(
	[IdAutor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Book]    Script Date: 24/04/2022 20:32:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Book](
	[IdBook] [int] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](200) NOT NULL,
	[Year] [smallint] NOT NULL,
	[NumberOfPages] [smallint] NOT NULL,
	[IdAutor] [int] NOT NULL,
 CONSTRAINT [PK_Libro] PRIMARY KEY CLUSTERED 
(
	[IdBook] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[City]    Script Date: 24/04/2022 20:32:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[IdCity] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Ciudad] PRIMARY KEY CLUSTERED 
(
	[IdCity] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Autor] ON 
GO
INSERT [dbo].[Autor] ([IdAutor], [Name], [BirthDate], [IdCity], [Email]) VALUES (1, N'Pedro Galves', CAST(N'1967-02-12' AS Date), 1, N'pedrogalves@gmail.com')
GO
INSERT [dbo].[Autor] ([IdAutor], [Name], [BirthDate], [IdCity], [Email]) VALUES (2, N'Isabella Allende', CAST(N'1976-03-12' AS Date), 3, N'Isabelita@gmail.com')
GO
INSERT [dbo].[Autor] ([IdAutor], [Name], [BirthDate], [IdCity], [Email]) VALUES (4, N'Jorge Luis Borges', CAST(N'1978-02-23' AS Date), 3, N'jorge.borges@gmail.com')
GO
INSERT [dbo].[Autor] ([IdAutor], [Name], [BirthDate], [IdCity], [Email]) VALUES (5, N'Jk Rowling', CAST(N'1986-02-13' AS Date), 3, N'jkrowling@hotmail.com')
GO
INSERT [dbo].[Autor] ([IdAutor], [Name], [BirthDate], [IdCity], [Email]) VALUES (6, N'Abraham Sinisterra', CAST(N'1997-06-12' AS Date), 3, N'abraham@gmail.com')
GO
SET IDENTITY_INSERT [dbo].[Autor] OFF
GO
SET IDENTITY_INSERT [dbo].[Book] ON 
GO
INSERT [dbo].[Book] ([IdBook], [Title], [Year], [NumberOfPages], [IdAutor]) VALUES (1, N'El Holandés Errante', 1997, 145, 1)
GO
INSERT [dbo].[Book] ([IdBook], [Title], [Year], [NumberOfPages], [IdAutor]) VALUES (2, N'La reina de las Mariposas', 2012, 234, 2)
GO
INSERT [dbo].[Book] ([IdBook], [Title], [Year], [NumberOfPages], [IdAutor]) VALUES (4, N'El Monte Maldito', 2017, 234, 2)
GO
INSERT [dbo].[Book] ([IdBook], [Title], [Year], [NumberOfPages], [IdAutor]) VALUES (7, N'Harry Potter', 2003, 234, 5)
GO
INSERT [dbo].[Book] ([IdBook], [Title], [Year], [NumberOfPages], [IdAutor]) VALUES (8, N'Animales Fantásticos', 2009, 129, 5)
GO
SET IDENTITY_INSERT [dbo].[Book] OFF
GO
SET IDENTITY_INSERT [dbo].[City] ON 
GO
INSERT [dbo].[City] ([IdCity], [Name]) VALUES (1, N'Bogotá')
GO
INSERT [dbo].[City] ([IdCity], [Name]) VALUES (2, N'Medellín')
GO
INSERT [dbo].[City] ([IdCity], [Name]) VALUES (3, N'Cali')
GO
INSERT [dbo].[City] ([IdCity], [Name]) VALUES (4, N'Cúcuta')
GO
SET IDENTITY_INSERT [dbo].[City] OFF
GO
ALTER TABLE [dbo].[Autor]  WITH CHECK ADD  CONSTRAINT [FK_Autor_Ciudad] FOREIGN KEY([IdCity])
REFERENCES [dbo].[City] ([IdCity])
GO
ALTER TABLE [dbo].[Autor] CHECK CONSTRAINT [FK_Autor_Ciudad]
GO
ALTER TABLE [dbo].[Book]  WITH CHECK ADD  CONSTRAINT [FK_Libro_Autor] FOREIGN KEY([IdAutor])
REFERENCES [dbo].[Autor] ([IdAutor])
GO
ALTER TABLE [dbo].[Book] CHECK CONSTRAINT [FK_Libro_Autor]
GO
USE [master]
GO
ALTER DATABASE [NexosTest] SET  READ_WRITE 
GO
