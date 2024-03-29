USE [master]
GO
/****** Object:  Database [KebabTakeaway]    Script Date: 7/23/2019 2:37:58 PM ******/

ALTER DATABASE [KebabTakeaway] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [KebabTakeaway].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [KebabTakeaway] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [KebabTakeaway] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [KebabTakeaway] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [KebabTakeaway] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [KebabTakeaway] SET ARITHABORT OFF 
GO
ALTER DATABASE [KebabTakeaway] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [KebabTakeaway] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [KebabTakeaway] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [KebabTakeaway] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [KebabTakeaway] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [KebabTakeaway] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [KebabTakeaway] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [KebabTakeaway] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [KebabTakeaway] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [KebabTakeaway] SET  DISABLE_BROKER 
GO
ALTER DATABASE [KebabTakeaway] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [KebabTakeaway] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [KebabTakeaway] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [KebabTakeaway] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [KebabTakeaway] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [KebabTakeaway] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [KebabTakeaway] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [KebabTakeaway] SET RECOVERY FULL 
GO
ALTER DATABASE [KebabTakeaway] SET  MULTI_USER 
GO
ALTER DATABASE [KebabTakeaway] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [KebabTakeaway] SET DB_CHAINING OFF 
GO
ALTER DATABASE [KebabTakeaway] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [KebabTakeaway] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [KebabTakeaway] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'KebabTakeaway', N'ON'
GO
ALTER DATABASE [KebabTakeaway] SET QUERY_STORE = OFF
GO
USE [KebabTakeaway]
GO
/****** Object:  Table [dbo].[drink]    Script Date: 7/23/2019 2:37:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[drink](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Drink] [nchar](10) NULL,
 CONSTRAINT [PK_drink] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[email]    Script Date: 7/23/2019 2:37:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[email](
	[E_id] [int] IDENTITY(1,1) NOT NULL,
	[Email] [nchar](20) NULL,
 CONSTRAINT [PK_email] PRIMARY KEY CLUSTERED 
(
	[E_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[kebab]    Script Date: 7/23/2019 2:37:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[kebab](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Kebab] [nchar](20) NULL,
 CONSTRAINT [PK_kebab] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[maintb]    Script Date: 7/23/2019 2:37:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[maintb](
	[Us] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nchar](10) NULL,
	[Mobile] [nchar](10) NULL,
	[Orders] [nchar](20) NULL,
	[Drink] [nchar](10) NULL,
 CONSTRAINT [PK_maintb] PRIMARY KEY CLUSTERED 
(
	[Us] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user]    Script Date: 7/23/2019 2:37:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nchar](10) NULL,
	[password] [nchar](10) NULL,
	[E_id] [int] NULL,
 CONSTRAINT [PK_user] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[drink] ON 

INSERT [dbo].[drink] ([id], [Drink]) VALUES (1, N'Coke      ')
INSERT [dbo].[drink] ([id], [Drink]) VALUES (2, N'Pepesi    ')
INSERT [dbo].[drink] ([id], [Drink]) VALUES (3, N'L&P       ')
INSERT [dbo].[drink] ([id], [Drink]) VALUES (4, N'Lift      ')
SET IDENTITY_INSERT [dbo].[drink] OFF
SET IDENTITY_INSERT [dbo].[email] ON 

INSERT [dbo].[email] ([E_id], [Email]) VALUES (1, N'jhon                ')
SET IDENTITY_INSERT [dbo].[email] OFF
SET IDENTITY_INSERT [dbo].[kebab] ON 

INSERT [dbo].[kebab] ([Id], [Kebab]) VALUES (1, N'Chicken Kebab       ')
INSERT [dbo].[kebab] ([Id], [Kebab]) VALUES (2, N'Beef Kebab          ')
INSERT [dbo].[kebab] ([Id], [Kebab]) VALUES (3, N'Veg Kebab           ')
INSERT [dbo].[kebab] ([Id], [Kebab]) VALUES (4, N'Panner Kebab        ')
INSERT [dbo].[kebab] ([Id], [Kebab]) VALUES (5, N'Goat Kebab          ')
SET IDENTITY_INSERT [dbo].[kebab] OFF
SET IDENTITY_INSERT [dbo].[maintb] ON 

INSERT [dbo].[maintb] ([Us], [Name], [Mobile], [Orders], [Drink]) VALUES (1, N'jhon      ', N'9283728   ', N'Chicken Kebab       ', N'Pepesi    ')
SET IDENTITY_INSERT [dbo].[maintb] OFF
SET IDENTITY_INSERT [dbo].[user] ON 

INSERT [dbo].[user] ([Id], [Username], [password], [E_id]) VALUES (1, N'jhon      ', N'jhon      ', NULL)
SET IDENTITY_INSERT [dbo].[user] OFF
ALTER TABLE [dbo].[user]  WITH CHECK ADD  CONSTRAINT [FK_user_email] FOREIGN KEY([E_id])
REFERENCES [dbo].[email] ([E_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[user] CHECK CONSTRAINT [FK_user_email]
GO
USE [master]
GO
ALTER DATABASE [KebabTakeaway] SET  READ_WRITE 
GO
