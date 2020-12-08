USE [master]
GO
/****** Object:  Database [SpikeBee]    Script Date: 2020-11-27 9:21:08 AM ******/
CREATE DATABASE [SpikeBee]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SpikeBee', FILENAME = N'C:\Users\hahne\SpikeBee.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'SpikeBee_log', FILENAME = N'C:\Users\hahne\SpikeBee_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [SpikeBee] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SpikeBee].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SpikeBee] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SpikeBee] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SpikeBee] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SpikeBee] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SpikeBee] SET ARITHABORT OFF 
GO
ALTER DATABASE [SpikeBee] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [SpikeBee] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SpikeBee] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SpikeBee] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SpikeBee] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SpikeBee] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SpikeBee] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SpikeBee] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SpikeBee] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SpikeBee] SET  ENABLE_BROKER 
GO
ALTER DATABASE [SpikeBee] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SpikeBee] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SpikeBee] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SpikeBee] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SpikeBee] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SpikeBee] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [SpikeBee] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SpikeBee] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [SpikeBee] SET  MULTI_USER 
GO
ALTER DATABASE [SpikeBee] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SpikeBee] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SpikeBee] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SpikeBee] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [SpikeBee] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [SpikeBee] SET QUERY_STORE = OFF
GO
USE [SpikeBee]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [SpikeBee]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 2020-11-27 9:21:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 2020-11-27 9:21:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 2020-11-27 9:21:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 2020-11-27 9:21:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 2020-11-27 9:21:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 2020-11-27 9:21:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 2020-11-27 9:21:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[FirstName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
	[SignUpDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 2020-11-27 9:21:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cities]    Script Date: 2020-11-27 9:21:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cities](
	[CityId] [int] IDENTITY(1,1) NOT NULL,
	[CityName] [nvarchar](max) NULL,
	[ProvinceId] [int] NOT NULL,
 CONSTRAINT [PK_Cities] PRIMARY KEY CLUSTERED 
(
	[CityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Countries]    Script Date: 2020-11-27 9:21:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Countries](
	[CountryId] [int] IDENTITY(1,1) NOT NULL,
	[CountryName] [nvarchar](max) NULL,
 CONSTRAINT [PK_Countries] PRIMARY KEY CLUSTERED 
(
	[CountryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DeliveryTypes]    Script Date: 2020-11-27 9:21:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DeliveryTypes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Type] [nvarchar](max) NULL,
 CONSTRAINT [PK_DeliveryTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Events]    Script Date: 2020-11-27 9:21:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Events](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[VendorProgramId] [int] NOT NULL,
	[ProgramScheduleId] [int] NOT NULL,
 CONSTRAINT [PK_Events] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ParentClickRedirections]    Script Date: 2020-11-27 9:21:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ParentClickRedirections](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdentityUserId] [nvarchar](max) NULL,
	[VendorProgramId] [int] NOT NULL,
	[RedirectionDate] [datetime2](7) NOT NULL,
	[ApplicationUserId] [nvarchar](450) NULL,
 CONSTRAINT [PK_ParentClickRedirections] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ParentFeedbacks]    Script Date: 2020-11-27 9:21:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ParentFeedbacks](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdentityUserId] [nvarchar](max) NULL,
	[Rating] [int] NOT NULL,
	[Comment] [nvarchar](max) NULL,
	[Date] [datetime2](7) NOT NULL,
	[ApplicationUserId] [nvarchar](450) NULL,
	[VendorProgramId] [int] NOT NULL,
 CONSTRAINT [PK_ParentFeedbacks] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ParentProgramInterests]    Script Date: 2020-11-27 9:21:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ParentProgramInterests](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdentiyUserId] [nvarchar](max) NULL,
	[VendorProgramId] [int] NOT NULL,
	[InterestedCheckedDate] [datetime2](7) NOT NULL,
	[ApplicationUserId] [nvarchar](450) NULL,
 CONSTRAINT [PK_ParentProgramInterests] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProgramCategories]    Script Date: 2020-11-27 9:21:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProgramCategories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Category] [nvarchar](max) NULL,
 CONSTRAINT [PK_ProgramCategories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProgramCountries]    Script Date: 2020-11-27 9:21:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProgramCountries](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CountryName] [nvarchar](max) NULL,
 CONSTRAINT [PK_ProgramCountries] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProgramImages]    Script Date: 2020-11-27 9:21:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProgramImages](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PImage] [varbinary](max) NULL,
	[Description] [nvarchar](700) NULL,
	[FilePath] [nvarchar](max) NULL,
 CONSTRAINT [PK_ProgramImages] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProgramLocations]    Script Date: 2020-11-27 9:21:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProgramLocations](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UnitNumber] [nvarchar](max) NULL,
	[StreetName] [nvarchar](50) NOT NULL,
	[Municipality] [nvarchar](50) NOT NULL,
	[Province] [nvarchar](50) NOT NULL,
	[PostalCode] [nvarchar](30) NOT NULL,
	[Latitude] [float] NOT NULL,
	[Longitute] [float] NOT NULL,
	[Country] [nvarchar](50) NOT NULL,
	[ProgramProvinceId] [int] NOT NULL,
 CONSTRAINT [PK_ProgramLocations] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProgramProvinces]    Script Date: 2020-11-27 9:21:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProgramProvinces](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProvinceName] [nvarchar](max) NULL,
	[ProgramCountryId] [int] NOT NULL,
 CONSTRAINT [PK_ProgramProvinces] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProgramSchedules]    Script Date: 2020-11-27 9:21:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProgramSchedules](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[VendorProgramId] [int] NULL,
	[ScheduleType] [nvarchar](max) NULL,
	[StartDate] [datetime2](7) NOT NULL,
	[EndDate] [datetime2](7) NOT NULL,
	[StartTime] [datetime2](7) NOT NULL,
	[EndTime] [datetime2](7) NOT NULL,
	[DayOfWeek] [nvarchar](max) NULL,
 CONSTRAINT [PK_ProgramSchedules] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProgramTypes]    Script Date: 2020-11-27 9:21:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProgramTypes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Type] [nvarchar](max) NULL,
 CONSTRAINT [PK_ProgramTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Provinces]    Script Date: 2020-11-27 9:21:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Provinces](
	[ProvinceId] [int] IDENTITY(1,1) NOT NULL,
	[ProvinceName] [nvarchar](max) NULL,
	[CountryId] [int] NOT NULL,
 CONSTRAINT [PK_Provinces] PRIMARY KEY CLUSTERED 
(
	[ProvinceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VendorPrograms]    Script Date: 2020-11-27 9:21:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VendorPrograms](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[VendorId] [int] NOT NULL,
	[RegistrationStartDate] [datetime2](7) NOT NULL,
	[RegistrationEndDate] [datetime2](7) NOT NULL,
	[Gender] [nvarchar](max) NULL,
	[Requirements] [nvarchar](max) NULL,
	[RegistrationLink] [nvarchar](max) NOT NULL,
	[Status] [bit] NOT NULL,
	[Discount] [int] NULL,
	[Description] [nvarchar](max) NOT NULL,
	[AddedDate] [datetime2](7) NOT NULL,
	[MaximumAge] [int] NULL,
	[MinimumAge] [int] NULL,
	[Policy] [nvarchar](max) NULL,
	[ProgramImageId] [int] NULL,
	[ProgramName] [nvarchar](max) NOT NULL,
	[DeliveryTypeId] [int] NOT NULL,
	[ProgramCategoryId] [int] NOT NULL,
	[ProgramTypeId] [int] NOT NULL,
	[Headline] [nvarchar](max) NOT NULL,
	[Requirments] [nvarchar](max) NOT NULL,
	[CityId] [int] NOT NULL,
	[RatingAverage] [int] NOT NULL,
	[Price] [float] NULL,
 CONSTRAINT [PK_VendorPrograms] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vendors]    Script Date: 2020-11-27 9:21:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vendors](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Phone] [nvarchar](30) NOT NULL,
	[PostalCode] [nvarchar](30) NOT NULL,
	[Municipality] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Province] [nvarchar](20) NOT NULL,
	[StreetName] [nvarchar](50) NOT NULL,
	[UnitNumber] [nvarchar](30) NULL,
	[ApplicationUserId] [nvarchar](450) NULL,
 CONSTRAINT [PK_Vendors] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'00000000000000_CreateIdentitySchema', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200611150000_SpikeBeeProperties', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200618232930_NewSpikeBeeProperties', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200618234329_ProgramSchedule_ParentFeedback_SpikeBeeProperties', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200621033617_AddColumnsToAspNetUsers', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200622045508_ModifyVendorModel', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200629232558_AddNewProgramRelatedModels', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200630020812_SeedDataToNewTables', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200701022835_RemoveCivicNumber', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200702174126_AddProgramIdtoProgramLocation', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200702180915_AddProgramIdtoProgramScedule', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201027174838_removeTableVenue', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201029164005_UpdateDesktop', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201030205206_updated_programlocationid', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201110211914_update', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201110230122_initial', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201111035800_updatedb', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201111035856_update', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201111035940_add-migration update three', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201111054937_update', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201111160500_update', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201111160826_update', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201111214347_update', N'3.1.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201119174121_RatingAverage', N'3.1.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201119175943_Ratings', N'3.1.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201119182943_ratingaverage', N'3.1.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201120214532_price', N'3.1.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201120214704_price', N'3.1.10')
GO
SET IDENTITY_INSERT [dbo].[AspNetUserClaims] ON 

INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (177, N'a5bd6fbd-e9d6-4bf5-b6db-b6fad560f1f1', N'FirstName', N'Dave')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (178, N'a5bd6fbd-e9d6-4bf5-b6db-b6fad560f1f1', N'ISVendor', N'true')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (179, N'a5bd6fbd-e9d6-4bf5-b6db-b6fad560f1f1', N'VendorId', N'48')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (180, N'e17134fa-88c8-4d2d-bc7b-b5b741802c08', N'FirstName', N'Dave')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (181, N'e17134fa-88c8-4d2d-bc7b-b5b741802c08', N'ISVendor', N'true')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (182, N'e17134fa-88c8-4d2d-bc7b-b5b741802c08', N'VendorId', N'49')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (183, N'd0158313-152b-4e86-8302-d4c35a02060f', N'FirstName', N'Dave')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (184, N'd0158313-152b-4e86-8302-d4c35a02060f', N'ISVendor', N'true')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (185, N'd0158313-152b-4e86-8302-d4c35a02060f', N'VendorId', N'50')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (186, N'effa8ef3-1e52-4147-a7eb-6dc8b04f3898', N'FirstName', N'David')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (187, N'effa8ef3-1e52-4147-a7eb-6dc8b04f3898', N'ISVendor', N'true')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (188, N'effa8ef3-1e52-4147-a7eb-6dc8b04f3898', N'VendorId', N'51')
SET IDENTITY_INSERT [dbo].[AspNetUserClaims] OFF
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName], [SignUpDate]) VALUES (N'a5bd6fbd-e9d6-4bf5-b6db-b6fad560f1f1', N'hahnerd@shaw.ca', N'HAHNERD@SHAW.CA', N'hahnerd@shaw.ca', N'HAHNERD@SHAW.CA', 1, N'AQAAAAEAACcQAAAAEIEMekj1Jb+wS+Ph1R+yz5Ff6/lJxYvXLNf3fk0968VnjZVw0AfwIV29b2lsgZcOkg==', N'GBBRA2WOAVS55W5XNAI6IO6YF65FTP4O', N'22a79ebf-3b40-4a9d-821c-e1213ef20294', NULL, 0, 0, NULL, 1, 0, N'Dave', N'Hahner', CAST(N'2020-11-23T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName], [SignUpDate]) VALUES (N'd0158313-152b-4e86-8302-d4c35a02060f', N'davidahahner@gmail.com', N'DAVIDAHAHNER@GMAIL.COM', N'davidahahner@gmail.com', N'DAVIDAHAHNER@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAECzlMkt2G3K2pG8pYXMWBnSUzazwlpHOq+88brHv5d5j49PstK40KCaBXaP9gc3NCQ==', N'FRJQCKBOGOWRYDGACYSBJ2QJEHJGRBEZ', N'c363eec3-e5e6-49b0-94d7-ae105536f614', NULL, 0, 0, NULL, 1, 0, N'Dave', N'Hahner', CAST(N'2020-11-23T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName], [SignUpDate]) VALUES (N'e17134fa-88c8-4d2d-bc7b-b5b741802c08', N'stimman24@me.com', N'STIMMAN24@ME.COM', N'stimman24@me.com', N'STIMMAN24@ME.COM', 1, N'AQAAAAEAACcQAAAAEKyrLNJPaSQUQB7Ie0H3b5p6zECvFUrdoyPd1rU1Ed9wgRZEZQ5QORiC0TPVd5TVSQ==', N'DO7QVRCTWFEQ2JQV3T334QZAF5HBXXM4', N'fafea079-ea1f-49a7-b995-11e403a8ea47', NULL, 0, 0, NULL, 1, 0, N'Dave', N'Hahner', CAST(N'2020-11-23T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName], [SignUpDate]) VALUES (N'effa8ef3-1e52-4147-a7eb-6dc8b04f3898', N'david.hahner@edu.sait.ca', N'DAVID.HAHNER@EDU.SAIT.CA', N'david.hahner@edu.sait.ca', N'DAVID.HAHNER@EDU.SAIT.CA', 1, N'AQAAAAEAACcQAAAAECPlJgL1gnDd73l4JfN3iAhX45t3ZjXlDPj0arpKw9Yt7Ogi7oDfJSgTHm1qLoRa9A==', N'YIOIAL3RRJKOCPAKW7LIOZZUESHDRGBV', N'b237758f-ed10-401a-ac9f-a33707fc631f', NULL, 0, 0, NULL, 1, 0, N'David', N'Hahner', CAST(N'2020-11-23T00:00:00.0000000' AS DateTime2))
GO
SET IDENTITY_INSERT [dbo].[Cities] ON 

INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (1, N'Airdrie', 1)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (2, N' Aberdeen SD ', 66)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (3, N' Acton Vale QC ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (4, N' Airdrie AB ', 1)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (5, N' Akron OH ', 60)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (6, N' Alamogordo NM ', 56)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (7, N' Albany NY ', 57)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (8, N' Albuquerque NM ', 56)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (9, N' Alexandria LA ', 43)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (10, N' Alexandria VI ', 71)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (11, N' Allentown PA ', 63)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (12, N' Alma QC  ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (13, N' Ames IA ', 40)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (14, N' Amos QC ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (15, N' Amqui QC ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (16, N' Anaconda-Deer Lodge County MT ', 51)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (17, N' Anaheim CA ', 29)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (18, N' Anchorage AK ', 15)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (19, N' Ann Arbor MI ', 47)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (20, N' Annapolis NS ', 6)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (21, N' Appleton WI ', 74)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (22, N' Arlington TX ', 68)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (23, N' Arlington VI ', 71)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (24, N' Armstrong BC ', 2)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (25, N' Arvada CO ', 31)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (26, N' Asbestos QC ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (27, N' Athens GA ', 35)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (28, N' Atlanta GA ', 35)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (29, N' Auburn AL ', 14)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (30, N' Auburn ME ', 44)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (31, N' Augusta GA ', 35)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (32, N' Augusta ME ', 44)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (33, N' Aurora CO ', 31)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (34, N' Aurora IL ', 38)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (35, N' Austin TX ', 68)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (36, N' Badger AK ', 15)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (37, N' Baie-Comeau QC ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (38, N' Baie-DUrfe QC ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (39, N' Baie-Saint Paul QC ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (40, N' Baltimore MD ', 45)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (41, N' Bangor ME ', 44)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (42, N' Barkmere QC ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (43, N' Barrie ON ', 7)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (44, N' Bartlett TN ', 67)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (45, N' Bathhurst NB ', 4)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (46, N' Baton Rouge LA ', 43)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (47, N' Beacancour QC ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (48, N' Beaconsfield QC ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (49, N' Bear DE ', 33)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (50, N' Beauceville QC ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (51, N' Beauharnois QC ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (52, N' Beaumont AB ', 1)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (53, N' Beaupre QC ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (54, N' Beaverton OR ', 62)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (55, N' Beckley WV ', 73)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (56, N' Bedford QC ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (57, N' Behchoko NT ', 11)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (58, N' Belgrade MT ', 51)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (59, N' Belleterre QC ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (60, N' Belleville ON ', 7)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (61, N' Bellevue NE ', 52)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (62, N' Bellevue WA ', 72)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (63, N' Beloeil QC ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (64, N' Bend OR ', 62)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (65, N' Bennington VT ', 70)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (66, N' Bentonville AR ', 17)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (67, N' Berthierville QC ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (68, N' Bethlehem PA ', 63)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (69, N' Biddeford ME ', 44)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (70, N' Billings MT ', 51)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (71, N' Biloxi MS ', 49)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (72, N' Birmingham AL ', 14)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (73, N' Bismark ND ', 59)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (74, N' Blainville QC ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (75, N' Bloomington IN ', 39)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (76, N' Bloomington MN ', 48)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (77, N' Boisbriand QC ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (78, N' Bois-des-Fillion QC ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (79, N' Boise ID ', 37)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (80, N' Bonaventure QC ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (81, N' Bossier City LA ', 43)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (82, N' Boston MA ', 46)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (83, N' Boucherville QC ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (84, N' Bowling Green KY ', 42)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (85, N' Bozeman MT ', 51)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (86, N' Brampton ON ', 7)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (87, N' Brandon MB ', 3)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (88, N' Brant ON ', 7)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (89, N' Brantford ON  ', 7)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (90, N' Brattleboro VT ', 70)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (91, N' Bridgeport CT ', 32)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (92, N' Bristol CT ', 32)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (93, N' Brockton MA ', 46)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (94, N' Brockville ON  ', 7)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (95, N' Broken Arrow OK  ', 61)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (96, N' Bromont QC ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (97, N' Brookings SD ', 66)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (98, N' Brooklyn Park MN ', 48)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (99, N' Brooks AB ', 1)
GO
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (100, N' Brookside DE ', 33)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (101, N' Brossard QC ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (102, N' Brownsburg-Chathaam QC ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (103, N' Buffalo NY ', 57)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (104, N' Burlington ON ', 7)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (105, N' Burlington VT ', 70)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (106, N' Burnaby BC ', 2)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (107, N' Butte MT ', 51)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (108, N' Caldwell ID ', 37)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (109, N' Calgary AB ', 1)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (110, N' Cambridge MA ', 46)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (111, N' Cambridge ON ', 7)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (112, N' Camden NJ ', 55)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (113, N' Campbell River BC ', 2)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (114, N' Campbellton NB ', 4)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (115, N' Camrose AB ', 1)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (116, N' Candiac QC ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (117, N' Canton OH ', 60)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (118, N' Cap-Chat QC ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (119, N' Cape Breton NS ', 6)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (120, N' Cape Coral FL ', 34)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (121, N' Cap-Sante QC ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (122, N' Carelton-sur-Mer QC ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (123, N' Carignan QC ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (124, N' Carmel IN ', 39)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (125, N' Carson City NV ', 53)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (126, N' Cary NC ', 58)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (127, N' Casper WY ', 75)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (128, N' Castlegar BC ', 2)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (129, N' Causapscal QC ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (130, N' Cedar Rapids IA ', 40)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (131, N' Centennial CO ', 31)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (132, N' Chambly QC ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (133, N' Champaign IL ', 38)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (134, N' Chandler AZ ', 16)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (135, N' Chandler QC ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (136, N' Chapais QC ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (137, N' Charlemagne QC ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (138, N' Charleston SC  ', 65)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (139, N' Charleston WV ', 73)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (140, N' Charloettetown QC  ', 8)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (141, N' Charlotte NC ', 58)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (142, N' Chateauguay QC ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (143, N' Chateau-Richer QC ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (144, N' Chattanooga TN ', 67)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (145, N' Chesapeake VI ', 71)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (146, N' Chestermere AB ', 1)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (147, N' Cheyenne WY ', 75)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (148, N' Chibougamau QC ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (149, N' Chicago IL ', 38)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (150, N' Chilliwack BC ', 2)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (151, N' Cincinnati OH ', 60)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (152, N' Clarence-Rockland ON ', 7)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (153, N' Clarksburg WV ', 73)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (154, N' Clarksville TN ', 67)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (155, N' Clermont QC ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (156, N' Cleveland OH ', 60)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (157, N' Clifton NJ ', 55)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (158, N' Clovis NM ', 56)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (159, N' Coaticook QC ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (160, N' Coeur dAlene ID  ', 37)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (161, N' Colchester NS ', 6)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (162, N' Colchester VT ', 70)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (163, N' Cold Lake AB ', 1)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (164, N' College AK ', 15)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (165, N' Colorado Springs CO ', 31)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (166, N' Columbia MD ', 45)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (167, N' Columbia MO ', 50)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (168, N' Columbia SC ', 65)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (169, N' Columbus GA ', 35)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (170, N' Columbus NE ', 52)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (171, N' Columbus OH ', 60)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (172, N' Colwood BC ', 2)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (173, N' Concord NC ', 58)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (174, N' Concord NH ', 54)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (175, N' Contrecoeur QC ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (176, N' Conway AR ', 17)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (177, N' Cookshire-Eaton QC ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (178, N' Coquitlam BC ', 2)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (179, N' Corner Brook NL ', 5)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (180, N' Cornwall ON ', 7)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (181, N' Corpus Christi TX ', 68)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (182, N' Corvallis OR ', 62)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (183, N' Coteau-du-Lac QC ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (184, N' Cote-Saint-Luc QC ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (185, N' Council Bluffs IA ', 40)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (186, N' Courtenay BC ', 2)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (187, N' Coventry RI ', 64)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (188, N' Covington KY ', 42)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (189, N' Cowansville QC ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (190, N' Cranbrooke BC ', 2)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (191, N' Cranston RI ', 64)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (192, N' Cumberland RI ', 64)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (193, N' Dallas TX ', 68)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (194, N' Danbury CT ', 32)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (195, N' Danville QC  ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (196, N' Dauphin MB ', 3)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (197, N' Daveluyville QC ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (198, N' Davenport IA ', 40)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (199, N' Dawson Creek BC ', 2)
GO
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (200, N' Dawson YT ', 13)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (201, N' Dayton OH ', 60)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (202, N' Dearborn MI ', 47)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (203, N' Decatur AL ', 14)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (204, N' Degelis QC ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (205, N' Delson QC ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (206, N' Delta BC ', 2)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (207, N' Denver CO ', 31)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (208, N' Derry NH ', 54)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (209, N' Des Moines IA ', 40)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (210, N' Desbiens QC ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (211, N' Detroit MI ', 47)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (212, N' Deux-Montagnes QC ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (213, N' Dickinson ND ', 59)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (214, N' Dieppe NB ', 4)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (215, N' Disraeli QC ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (216, N' Dolbeau-Mistassini QC ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (217, N' Dollard-des-Ormeaux QC ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (218, N' Donnacona QC ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (219, N' Dorval QC ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (220, N' Dothan AL ', 14)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (221, N' Dover DE ', 33)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (222, N' Dover NH ', 54)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (223, N' Drummondville QC ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (224, N' Dryden ON  ', 7)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (225, N' Dubuque IA ', 40)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (226, N' Duluth MN ', 48)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (227, N' Duncan BC ', 2)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (228, N' Dunham QC ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (229, N' Duparquet QC ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (230, N' Durham NC ', 58)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (231, N' Eagle River AK ', 15)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (232, N' East Angus QC ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (233, N' East Hampton VI ', 71)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (234, N' East Honolulu HI ', 36)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (235, N' East Providence RI ', 64)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (236, N' Eau Claire WI ', 74)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (237, N' Edmond OK ', 61)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (238, N' Edmonton AB ', 1)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (239, N' Edmundston NB ', 4)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (240, N' El Paso TX ', 68)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (241, N' Elgin IL ', 38)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (242, N' Elizabeth NJ ', 55)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (243, N' Elizabethtown KY ', 42)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (244, N' Ellicott City MD ', 45)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (245, N' Elliot Lake ON ', 7)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (246, N' Enderby BC ', 2)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (247, N' Enid OK ', 61)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (248, N' Enterprise NV ', 53)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (249, N' Erie PA ', 63)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (250, N' Essex Junction VT ', 70)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (251, N' Essex VT ', 70)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (252, N' Esterel QC ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (253, N' Estevan SK ', 10)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (254, N' Eugene OR ', 62)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (255, N' Evanston WY ', 75)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (256, N' Evansville IN ', 39)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (257, N' Everett WA ', 72)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (258, N' Ewa Gentry HI ', 36)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (259, N' Fairbanks AK ', 15)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (260, N' Fairmont WV ', 73)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (261, N' Fall River MA ', 46)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (262, N' Fargo ND ', 59)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (263, N' Farmington NM ', 56)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (264, N' Farnham QC ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (265, N' Fayetteville AR ', 17)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (266, N' Fayetteville NC ', 58)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (267, N' Federal Way WA ', 72)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (268, N' Fermont QC ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (269, N' Fernie BC ', 2)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (270, N' Fishers IN ', 39)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (271, N' Flin Flon MB ', 3)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (272, N' Flin Flon SK ', 10)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (273, N' Flint MI ', 47)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (274, N' Florence KY ', 42)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (275, N' Forestville QC ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (276, N' Fort Collins CO ', 31)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (277, N' Fort Lauderdale FL ', 34)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (278, N' Fort Saskachewan AB ', 1)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (279, N' Fort Smith AR ', 17)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (280, N' Fort St.John BC ', 2)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (281, N' Fort Wayne IN ', 39)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (282, N' Fort Worth TX ', 68)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (283, N' Fossambault-sur-le-Lac QC ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (284, N' Franklin TN ', 67)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (285, N' Frederick MD ', 45)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (286, N' Fredericton NB ', 4)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (287, N' Fremont NE ', 52)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (288, N' Fresno CA ', 29)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (289, N' Gaithersburg MD ', 45)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (290, N' Gary IN ', 39)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (291, N' Gaspe QC  ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (292, N' Gatineau QC ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (293, N' Georgetown KY ', 42)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (294, N' Germantown MD ', 45)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (295, N' Gilbert AZ ', 16)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (296, N' Gillette WY ', 75)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (297, N' Glasgow DE ', 33)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (298, N' Glen Burnie MD ', 45)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (299, N' Glendale AZ ', 16)
GO
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (300, N' Goose Creek SC ', 65)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (301, N' Gracefield QC ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (302, N' Grand Forks BC ', 2)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (303, N' Grand Forks ND ', 59)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (304, N' Grand Island NE ', 52)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (305, N' Grand Rapids MI ', 47)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (306, N' Grandby QC ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (307, N' Grande Prairie AB ', 1)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (308, N' Grande-Riviere QC ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (309, N' Great Falls MT ', 51)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (310, N' Greater Sudbury ON ', 7)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (311, N' Green Bay WI ', 74)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (312, N' Green River WY ', 75)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (313, N' Greenboro NC ', 58)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (314, N' Greenville MS ', 49)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (315, N' Greenville SC ', 65)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (316, N' Greenwood BC ', 2)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (317, N' Gresham OR ', 62)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (318, N' Guelph ON ', 7)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (319, N' Gulfport MS ', 49)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (320, N' Halifax NS ', 6)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (321, N' Halimand County ON ', 7)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (322, N' Hamilton ON ', 7)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (323, N' Hammond IN ', 39)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (324, N' Hampstead QC ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (325, N' Hampton VI ', 71)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (326, N' Harrisburg PA ', 63)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (327, N' Hartford CT ', 32)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (328, N' Hastings NE ', 52)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (329, N' Hattiesburg MS ', 49)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (330, N' Havre MT ', 51)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (331, N' Hay River NT ', 11)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (332, N' Helena MT ', 51)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (333, N' Henderson NV ', 53)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (334, N' Hialeah FL ', 34)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (335, N' High Point NC ', 58)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (336, N' Hillsboro OR ', 62)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (337, N' Hilo HI ', 36)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (338, N' Hilton Head Island SC ', 65)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (339, N' Hobbs NM ', 56)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (340, N' Hockessin DE ', 33)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (341, N' Honolulu HI ', 36)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (342, N' Horn Lake MS ', 49)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (343, N' Houston TX ', 68)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (344, N' Hover AL ', 14)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (345, N' Hudson QC ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (346, N' Humboldt SK ', 10)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (347, N' Huntingdon QC ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (348, N' Huntington WV ', 73)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (349, N' Huntsville AL ', 14)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (350, N' Huron SD ', 66)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (351, N' Idaho Falls ID ', 37)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (352, N' Independance MO ', 50)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (353, N' Indianapolis IN ', 39)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (354, N' Inuvik NT ', 11)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (355, N' Iowa City IA ', 40)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (356, N' Iqaluit NU ', 77)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (357, N' Jackson ', 49)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (358, N' Jackson MS ', 67)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (359, N' Jackson TN ', 75)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (360, N' Jacksonville FL ', 34)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (361, N' Jamestown ND ', 59)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (362, N' Janesville WI ', 74)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (363, N' Jersey City NJ ', 55)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (364, N' Johns Creek GA ', 35)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (365, N' Johnson City TN ', 67)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (366, N' Joliet IL ', 38)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (367, N' Joliette QC ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (368, N' Jonesboro AR ', 17)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (369, N' Juneau AK ', 15)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (370, N' Kahuliu HI ', 36)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (371, N' Kailua HI ', 36)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (372, N' Kalispell MT ', 51)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (373, N' Kamloops BC ', 2)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (374, N' Kaneohe HI ', 36)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (375, N' Kansas City KS ', 41)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (376, N' Kansas City MO ', 50)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (377, N' Kawartha Lakes ON ', 7)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (378, N' Kearney NE ', 52)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (379, N' Keene NH ', 54)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (380, N' Kelowna BC ', 2)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (381, N' Kenner LA ', 43)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (382, N' Kenora ON  ', 7)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (383, N' Kenosha WI ', 74)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (384, N' Kent WA ', 72)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (385, N' Kimberely BC ', 2)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (386, N' Kings NS ', 6)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (387, N' Kingsey Falls QC ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (388, N' Kingston ON ', 7)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (389, N' Kirkland QC ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (390, N' Kitchener ON ', 7)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (391, N' Knik-Fairview AK ', 15)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (392, N' Knoxville TN ', 67)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (393, N' La Cruces NM ', 56)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (394, N' La Malbaie QC ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (395, N' La Pocatiere QC ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (396, N' La Prairie QC ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (397, N' La Sarre QC ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (398, N' La Tuque QC  ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (399, N' Lac-Brome QC ', 9)
GO
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (400, N' Lac-Delage QC ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (401, N' Lachute QC ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (402, N' Lac-Megantic QC  ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (403, N' Lacombe AB ', 1)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (404, N' Laconia NH ', 54)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (405, N' Lac-Saint-Joseph QC ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (406, N' Lac-Sergent QC ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (407, N' Lafayette IN ', 39)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (408, N' Lafayette LA ', 43)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (409, N' Lake Charles LA ', 43)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (410, N' Lakes AK ', 15)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (411, N' Lakeville MN ', 48)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (412, N' Lakewood CO ', 31)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (413, N' Lancaster PA ', 63)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (414, N' LAncienne Lorette QC ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (415, N' Langley BC ', 2)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (416, N' Lansing MI ', 47)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (417, N' Laramie WY ', 75)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (418, N' Laredo TX ', 68)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (419, N' Las Vegas NV ', 53)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (420, N' LAssomption QC ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (421, N' Laval QC ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (422, N' Lavaltrie QC ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (423, N' Lawrence KS ', 41)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (424, N' Lawton OK ', 61)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (425, N' Layton UT ', 69)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (426, N' Lebanon NH ', 54)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (427, N' Lebel-sur-Quevillon QC ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (428, N' Leduc AB ', 1)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (429, N' Lees Summit MO ', 50)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (430, N' Lenexa KS ', 41)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (431, N' LEpiphanie QC ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (432, N' Lery QC ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (433, N' Lethbridge AB ', 1)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (434, N' Levis QC  ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (435, N' Levittown PA ', 63)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (436, N' Lewiston ID  ', 37)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (437, N' Lewiston ME ', 44)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (438, N' Lewiston Orchards ID ', 37)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (439, N' Lexington KY ', 42)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (440, N' LIle-Cadieux QC ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (441, N' lIle-Dorval QC ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (442, N' LIle-Perrot QC ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (443, N' Lincoln NE ', 52)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (444, N' Little Rock AR ', 17)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (445, N' Livonia MI ', 47)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (446, N' Lloydminster AB ', 1)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (447, N' Lloydminster SK ', 10)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (448, N' London ON ', 7)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (449, N' Long Beach CA ', 29)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (450, N' Longueuil QC ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (451, N' Lorain OH ', 60)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (452, N' Lorraine QC ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (453, N' Los Angeles CA ', 29)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (454, N' Louiseville QC ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (455, N' Louisville KY  ', 42)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (456, N' Lowell MA ', 46)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (457, N' Lunenburg NS ', 6)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (458, N' Lynn MA ', 46)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (459, N' Macamic QC ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (460, N' Macron County GA ', 35)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (461, N' Madison AL ', 14)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (462, N' Madison WI ', 74)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (463, N' Magog QC ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (464, N' Malartic QC ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (465, N' Manchester NH ', 54)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (466, N' Mandan ND ', 59)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (467, N' Manhattan KS ', 41)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (468, N' Maniwaki QC ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (469, N' Maple Grove MN ', 48)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (470, N' Maple Ridge BC ', 2)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (471, N' Marieville QC ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (472, N' Markham ON ', 7)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (473, N' Martensville SK ', 10)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (474, N' Martinsburg WV ', 73)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (475, N' Mascouche QC ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (476, N' Matagami QC ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (477, N' Matane QC ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (478, N' Meadow Lake SK ', 10)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (479, N' Medford OR ', 62)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (480, N' Medicine Hat AB ', 1)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (481, N' Melfort SK ', 10)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (482, N' Melville SK ', 10)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (483, N' Memphis TN ', 67)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (484, N' Mercier QC ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (485, N' Meridian ID ', 37)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (486, N' Meridian MS ', 49)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (487, N' Merritt BC ', 2)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (488, N' Mesa AZ ', 16)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (489, N' Metabetchouan-Lac-a-la-Croix QC ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (490, N' Metairie LA ', 43)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (491, N' Metis-sur-Mer QC  ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (492, N' Miami FL ', 34)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (493, N' Middletown DE ', 33)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (494, N' Midwest City OK ', 61)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (495, N' Milford DE ', 33)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (496, N' Mililani Town HI ', 36)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (497, N' Milton VT ', 70)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (498, N' Milwaukee WI ', 74)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (499, N' Minneapolis MN ', 48)
GO
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (500, N' Minot ND ', 59)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (501, N' Mirabel QC  ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (502, N' Miramichi NB ', 4)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (503, N' Mississauga ON ', 7)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (504, N' Missoula MT ', 51)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (505, N' Mitchell SD ', 66)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (506, N' Mobile AL ', 14)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (507, N' Moncton NB ', 4)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (508, N' Monroe LA ', 43)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (509, N' Montgomery AL ', 14)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (510, N' Mont-Joli QC  ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (511, N' Mont-Laurier QC  ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (512, N' Montmagny QC ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (513, N' Montreal QC  ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (514, N' Montreal West QC  ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (515, N' Montreal-Est QC  ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (516, N' Mont-Saint-Hilaire QC ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (517, N' Mont-Tremblant QC ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (518, N' Moore OK ', 61)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (519, N' Moose Jaw SK ', 10)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (520, N' Morden MB ', 3)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (521, N' Morgantown WV ', 73)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (522, N' Mount Pearl NL ', 5)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (523, N' Mount Pleasant SC ', 65)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (524, N' Mount Royal QC ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (525, N' Mount Vernon NY ', 57)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (526, N' Murdochville QC ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (527, N' Murfreesboro TN ', 67)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (528, N' Nampa ID ', 37)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (529, N' Nanaimo BC ', 2)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (530, N' Naperville IL ', 38)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (531, N' Nashua NH ', 54)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (532, N' Nashville TN ', 67)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (533, N' Nelson BC ', 2)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (534, N' Neuville QC  ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (535, N' New Bedford MA ', 46)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (536, N' New Britain CT ', 32)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (537, N' New Haven CT ', 32)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (538, N' New Orleans LA ', 43)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (539, N' New Richmond QC  ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (540, N' New Rochelle NY ', 57)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (541, N' New Westminster BC ', 2)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (542, N' New York City NY ', 57)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (543, N' Newark DE ', 33)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (544, N' Newark NJ ', 55)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (545, N' Newport News VI ', 71)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (546, N' Niagra Falls ON ', 7)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (547, N' Nicholasville KY ', 42)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (548, N' Nicolet QC  ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (549, N' Norfolk County ON ', 7)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (550, N' Norfolk NE ', 52)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (551, N' Norfolk VI ', 71)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (552, N' Norman OK ', 61)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (553, N' Normandin QC  ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (554, N' North Battleford SK ', 10)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (555, N' North Bay ON ', 7)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (556, N' North Charleston SC ', 65)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (557, N' North Las Vegas NV ', 53)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (558, N' North Little Rock AR ', 17)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (559, N' North Platte NE ', 52)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (560, N' North Providence RI ', 64)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (561, N' North Vancouver BC ', 2)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (562, N' Norwalk CT ', 32)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (563, N' Notre-Dame-de Ile-Perrot QC  ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (564, N' Notre-Dame-des-Prairies QC  ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (565, N' Oakland CA ', 29)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (566, N' O Fallon MO ', 50)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (567, N' Ogden UT ', 69)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (568, N' Oklahoma City OK  ', 61)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (569, N' Olathe KS ', 41)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (570, N' Olive Branch MS ', 49)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (571, N' Omaha NE ', 52)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (572, N' Orem UT ', 69)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (573, N' Orillia ON ', 7)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (574, N' Orlando FL ', 34)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (575, N' Oshawa ON ', 7)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (576, N' Oshkosh WI ', 74)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (577, N' Ottawa ON ', 7)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (578, N' Otterburn Park QC  ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (579, N' Overland Park KS ', 41)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (580, N' Owen Sound ON ', 7)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (581, N' Owensboro KY ', 42)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (582, N' Paradise NV ', 53)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (583, N' Parkersburg WV ', 73)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (584, N' Parksville BC ', 2)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (585, N' Parma OH ', 60)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (586, N' Paspebiac QC ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (587, N' Passaic NJ ', 55)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (588, N' Paterson NJ ', 55)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (589, N' Pawtucket RI ', 64)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (590, N' Pearl City HI ', 36)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (591, N' Pembroke ON ', 7)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (592, N' Penticton BC ', 2)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (593, N' Peoria AZ ', 16)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (594, N' Peoria IL ', 38)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (595, N' Perce QC  ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (596, N' Peterborough ON ', 7)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (597, N' Philadelphia PA ', 63)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (598, N' Phoenix AZ ', 16)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (599, N' Pickering ON ', 7)
GO
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (600, N' Pictou NS  ', 6)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (601, N' Pierre SD ', 66)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (602, N' Pincourt QC  ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (603, N' Pine Bluff AR ', 17)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (604, N' Pitt Meadows BC ', 2)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (605, N' Pittsburg PA ', 63)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (606, N' Plano TX ', 68)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (607, N' Plessisville QC  ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (608, N' Plymouth MN ', 48)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (609, N' Pocatello ID ', 37)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (610, N' Pohenegamook QC  ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (611, N' Pointe-Claire QC ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (612, N' Pont-Rouge QC  ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (613, N' Port Alberni BC ', 2)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (614, N' Port Colbourne ON ', 7)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (615, N' Port Coquitlam BC ', 2)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (616, N' Port Moody BC ', 2)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (617, N' Port St.Lucie FL ', 34)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (618, N' Portage la Prairie MB ', 3)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (619, N' Port-Cartier QC  ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (620, N' Portland ME ', 44)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (621, N' Portland OR ', 62)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (622, N' Portneuf QC ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (623, N' Portsmouth NH ', 54)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (624, N' Powell River BC ', 2)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (625, N' Prevost QC  ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (626, N' Prince Albert SK ', 10)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (627, N' Prince Edward County ON ', 7)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (628, N' Prince George BC ', 2)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (629, N' Prince Rupert BC ', 2)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (630, N' Princeville QC  ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (631, N' Providence RI ', 64)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (632, N' Provo UT ', 69)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (633, N' Pueblo CO ', 31)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (634, N' Quebec QC  ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (635, N' Quesnel BC ', 2)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (636, N' Quincy MA ', 46)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (637, N' Quinte West ON ', 7)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (638, N' Racine WI ', 74)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (639, N' Raleigh NC ', 58)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (640, N' Rapid City SD ', 66)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (641, N' Reading PA ', 63)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (642, N' Red Deer AB ', 1)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (643, N' Regina SK ', 10)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (644, N' Reno NV ', 53)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (645, N' Renton WA ', 72)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (646, N' Repentigny QC  ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (647, N' Revelstoke BC ', 2)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (648, N' Richelieu QC ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (649, N' Richmond BC ', 2)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (650, N' Richmond Hill ON ', 7)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (651, N' Richmond KY ', 42)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (652, N' Richmond QC ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (653, N' Richmond VI ', 71)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (654, N' Rigaud QC ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (655, N' Rimouski QC ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (656, N' Rio Rancho NM ', 56)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (657, N' Riverton WY ', 75)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (658, N' Riviere-du-Loup QC  ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (659, N' Riviere-Rouge QC ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (660, N' Roanoke VI ', 71)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (661, N' Roberval QC  ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (662, N' Rochester MN ', 48)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (663, N' Rochester NH ', 54)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (664, N' Rochester NY ', 57)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (665, N' Rock Hill SC ', 65)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (666, N' Rock Springs WY ', 75)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (667, N' Rockford IL ', 38)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (668, N' Rockville MD ', 45)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (669, N' Rogers AR ', 17)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (670, N' Rosemere QC  ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (671, N' Rossland BC ', 2)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (672, N' Roswell GA ', 35)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (673, N' Roswell NM ', 56)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (674, N' Rouyn-Noranda QC  ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (675, N' Rutland City VT ', 70)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (676, N' Saco ME ', 44)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (677, N' Sacramento CA ', 29)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (678, N' Saguenay QC  ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (679, N' Saint John NB ', 4)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (680, N' Saint-Agustin-de-Desmaures QC ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (681, N' Saint-Basile QC ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (682, N' Saint-Basile-le-Grand QC  ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (683, N' Saint-Bruno-de-Montarville QC  ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (684, N' Saint-Cesaire QC  ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (685, N' Saint-Charles-Borromee QC  ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (686, N' Saint-Colomban QC  ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (687, N' Saint-Constant QC ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (688, N' Sainte-Adele QC  ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (689, N' Sainte-Agathe-des-Monts QC  ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (690, N' Sainte-Anne-deBeaupre QC  ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (691, N' Sainte-Anne-des-Bellevue QC  ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (692, N' Sainte-Anne-des-Plaines QC ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (693, N' Sainte-Catherine QC  ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (694, N' Sainte-Catherine-de-la-Jaques Cartier QC ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (695, N' Sainte-Julie QC  ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (696, N' Sainte-Marguerite-du-Lac-Masson QC ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (697, N' Sainte-Marie QC  ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (698, N' Sainte-Marthe-sur-le-Lac QC  ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (699, N' Sainte-Therese QC  ', 9)
GO
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (700, N' Saint-Eustache QC  ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (701, N' Saint-Felicien QC  ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (702, N' Saint-Gabriel QC ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (703, N' Saint-Georges QC  ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (704, N' Saint-Hyacinthe QC ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (705, N' Saint-Jean-sur-Richelieu QC  ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (706, N' Saint-Jerome QC ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (707, N' Saint-Joseph-de-Beauce QC ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (708, N' Saint-Joseph-de-Sorel QC  ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (709, N' Saint-Lambert QC  ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (710, N' Saint-Lazare QC  ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (711, N' Saint-Lin-Laurentides QC ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (712, N' Saint-Marc-des-Carrieres QC  ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (713, N' Saint-Ours QC  ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (714, N' Saint-Pamphile QC  ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (715, N' Saint-Pascal QC ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (716, N' Saint-Pie QC  ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (717, N' Saint-Raymond QC  ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (718, N' Saint-Remi QC  ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (719, N' Saint-Sauveur QC  ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (720, N' Saint-Tite QC  ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (721, N' Salaberry-de-Valleyville QC ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (722, N' Salem OR ', 62)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (723, N' Salina KS ', 41)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (724, N' Salmon Arm BC ', 2)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (725, N' Salt Lake City UT ', 69)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (726, N' San Antonio TX ', 68)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (727, N' San Diego CA ', 29)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (728, N' San Francisco CA ', 29)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (729, N' San Jose CA ', 29)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (730, N' Sandy Spring GA ', 35)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (731, N' Sandy UT ', 69)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (732, N' Sanford ME ', 44)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (733, N' Santa Ana CA ', 29)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (734, N' Santa Fe NM ', 56)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (735, N' Sarnia ON ', 7)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (736, N' Saskatoon SK ', 10)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (737, N' Sault Ste. Marie ON ', 7)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (738, N' Savannah GA ', 35)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (739, N' Schefferville QC  ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (740, N' Schenectady NY ', 57)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (741, N' Scotstown QC  ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (742, N' Scottsdale AZ ', 16)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (743, N' Scranton PA ', 63)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (744, N' Seattle WA  ', 72)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (745, N' Selkirk MB ', 3)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (746, N' Senneterre QC  ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (747, N' Sept-Iles QC  ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (748, N' Shawinigan QC  ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (749, N' Shawnee KS ', 41)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (750, N' Sherbrooke QC  ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (751, N' Sheridan WY ', 75)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (752, N' Shreveport LA ', 43)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (753, N' Silver Spring MD ', 45)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (754, N' Sioux City IA ', 40)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (755, N' Sioux Falls SD ', 66)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (756, N' Sitka AK ', 15)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (757, N' Smyrna DE ', 33)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (758, N' Sorel-Tracy QC  ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (759, N' South Bend IN ', 39)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (760, N' South Burlington VT ', 70)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (761, N' South Fulton GA ', 35)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (762, N' South Jordan UT ', 69)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (763, N' South Kingstown RI ', 64)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (764, N' South Portland ME ', 44)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (765, N' South Valley NM ', 56)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (766, N' Southhaven MS ', 49)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (767, N' Sparks NV ', 53)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (768, N' Spearfish SD ', 66)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (769, N' Spokane Valley WA ', 72)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (770, N' Spokane WA ', 72)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (771, N' Spring Valley NV ', 53)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (772, N' Springdale AR ', 17)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (773, N' Springfield IL ', 38)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (774, N' Springfield MA ', 46)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (775, N' Springfield MO ', 50)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (776, N' Springfield OR ', 62)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (777, N' Spruce Grove AB ', 1)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (778, N' St. Catharines ON ', 7)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (779, N' St. Thomas ON ', 7)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (780, N' St.Albert AB ', 1)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (781, N' St.Charles MO ', 50)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (782, N' St.George UT ', 69)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (783, N' St.Johns NL ', 5)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (784, N' St.Joseph MO ', 50)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (785, N' St.Louis MO ', 50)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (786, N' St.Paul MN ', 48)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (787, N' St.Peters MO ', 50)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (788, N' St.Petersburg FL ', 34)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (789, N' Stamford CT ', 32)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (790, N' Stanstead QC  ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (791, N' Steinbach MB ', 3)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (792, N' Sterling Heights MI ', 47)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (793, N' Stillwater OK ', 61)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (794, N' Stratford ON ', 7)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (795, N' Summerside QC ', 8)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (796, N' Summerville SC ', 65)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (797, N' Sumter SC ', 65)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (798, N' Sunrise Manor NV ', 53)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (799, N' Suprise AZ ', 16)
GO
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (800, N' Surrey BC ', 2)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (801, N' Sutton QC  ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (802, N' Swift Current SK ', 10)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (803, N' Syracuse NY ', 57)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (804, N' Tacoma WA ', 72)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (805, N' Tallahassee FL ', 34)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (806, N' Tampa FL ', 34)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (807, N' Temiscaming QC ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (808, N' Temiscouata-sur-le-Lac QC  ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (809, N' Temiskaming Shores ON ', 7)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (810, N' Tempe AZ ', 16)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (811, N' Terrace BC ', 2)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (812, N' Terrebonne QC  ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (813, N' Thetford Mines QC  ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (814, N' Thompson MB ', 3)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (815, N' Thornton CO ', 31)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (816, N' Thorold ON ', 7)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (817, N' Thunder Bay ON ', 7)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (818, N' Thurso QC  ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (819, N' Timmins ON ', 7)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (820, N' Toledo OH ', 60)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (821, N' Toms River NJ ', 55)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (822, N' Topeka KS ', 41)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (823, N' Toronto ON ', 7)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (824, N' Trail BC ', 2)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (825, N' Trenton NJ ', 55)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (826, N' Trois-Pistoles QC ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (827, N' Trois-Rivieres QC  ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (828, N' Troy MI ', 47)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (829, N' Tucson AZ ', 16)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (830, N' Tulsa OK ', 61)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (831, N' Tupelo MS ', 49)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (832, N' Tuscaloosa AL ', 14)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (833, N' Twin Falls ID ', 37)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (834, N' Union City NJ ', 55)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (835, N' Utica NY ', 57)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (836, N' Valcourt QC  ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (837, N' Val-d Or QC  ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (838, N' Vancouver BC ', 2)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (839, N' Vancouver WA ', 72)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (840, N' Varennes QC  ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (841, N' Vaudreuil-Dorion QC ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (842, N' Vaughn ON ', 7)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (843, N' Vernon BC ', 2)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (844, N' Victoria BC ', 2)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (845, N' Victoriaville QC  ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (846, N' Ville-Marie QC ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (847, N' Virginia Beach VI ', 71)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (848, N' Wahpeton ND ', 59)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (849, N' Waipahu HI ', 36)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (850, N' Waldorf MD ', 45)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (851, N' Warman SK ', 10)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (852, N' Warren MI ', 47)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (853, N' Warwick QC ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (854, N' Warwick RI ', 64)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (856, N' Wasilla AK ', 15)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (857, N' Waterbury CT ', 32)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (858, N' Waterloo IA ', 40)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (859, N' Waterloo ON  ', 7)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (860, N' Waterloo QC ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (861, N' Watertown SD ', 66)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (862, N' Waterville QC ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (863, N' Waukegan IL ', 38)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (864, N' Waukesha WI ', 74)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (865, N' Weirton WV ', 73)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (866, N' Welland ON ', 7)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (867, N' Wesminster CO ', 31)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (868, N' West Des Moines IA ', 40)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (869, N' West Fargo ND ', 59)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (870, N' West Hartford CT ', 32)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (871, N' West Jordan UT ', 69)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (872, N' West Kelowna BC ', 2)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (873, N' West Valley City UT ', 69)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (874, N' Westbrook ME ', 44)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (875, N' Westmount QC ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (876, N' Wetaskawin AB ', 1)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (877, N' Weyburn SK ', 10)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (878, N' Wheeling WV ', 73)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (879, N' White Rock BC ', 2)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (880, N' Whitehorse YT ', 13)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (881, N' Wichita KS ', 41)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (882, N' Williams Lake BC ', 2)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (883, N' Williston ND ', 59)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (884, N' Williston VT ', 70)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (885, N' Wilmington DE ', 33)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (886, N' Wilmington NC ', 58)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (887, N' Windsor ON ', 7)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (888, N' Windsor QC ', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (889, N' Winkler MB ', 3)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (890, N' Winnipeg MB ', 3)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (891, N' Winston-Salem NC ', 58)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (892, N' Woodbury MN ', 48)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (893, N' Woodstock ON ', 7)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (894, N' Woonsocket RI ', 64)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (895, N' Worcester MA ', 46)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (896, N' Yankton SD ', 66)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (897, N' Yellowknife NT ', 11)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (898, N' Yonkers NY ', 57)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (899, N' Yorkton SK ', 10)
INSERT [dbo].[Cities] ([CityId], [CityName], [ProvinceId]) VALUES (900, N' Youngstown O ', 60)
GO
SET IDENTITY_INSERT [dbo].[Cities] OFF
GO
SET IDENTITY_INSERT [dbo].[Countries] ON 

INSERT [dbo].[Countries] ([CountryId], [CountryName]) VALUES (1, N'Canada')
INSERT [dbo].[Countries] ([CountryId], [CountryName]) VALUES (2, N'USA')
SET IDENTITY_INSERT [dbo].[Countries] OFF
GO
SET IDENTITY_INSERT [dbo].[DeliveryTypes] ON 

INSERT [dbo].[DeliveryTypes] ([Id], [Type]) VALUES (1, N'Online')
INSERT [dbo].[DeliveryTypes] ([Id], [Type]) VALUES (2, N'In person')
SET IDENTITY_INSERT [dbo].[DeliveryTypes] OFF
GO
SET IDENTITY_INSERT [dbo].[ParentFeedbacks] ON 

INSERT [dbo].[ParentFeedbacks] ([Id], [IdentityUserId], [Rating], [Comment], [Date], [ApplicationUserId], [VendorProgramId]) VALUES (101, NULL, 4, N'Excellent!!', CAST(N'2020-11-24T10:13:26.7516337' AS DateTime2), NULL, 72)
SET IDENTITY_INSERT [dbo].[ParentFeedbacks] OFF
GO
SET IDENTITY_INSERT [dbo].[ProgramCategories] ON 

INSERT [dbo].[ProgramCategories] ([Id], [Category]) VALUES (1, N'Camp')
INSERT [dbo].[ProgramCategories] ([Id], [Category]) VALUES (2, N'Class')
INSERT [dbo].[ProgramCategories] ([Id], [Category]) VALUES (3, N'Event')
SET IDENTITY_INSERT [dbo].[ProgramCategories] OFF
GO
SET IDENTITY_INSERT [dbo].[ProgramImages] ON 

INSERT [dbo].[ProgramImages] ([Id], [PImage], [Description], [FilePath]) VALUES (3, NULL, N'Academic-Other', N'~/images/Academic-Other.jpg')
INSERT [dbo].[ProgramImages] ([Id], [PImage], [Description], [FilePath]) VALUES (4, NULL, N'Language-Other', N'~/images/Language-Other.jpg')
INSERT [dbo].[ProgramImages] ([Id], [PImage], [Description], [FilePath]) VALUES (5, NULL, N'Drama/Acting-Other', N'~/images/Drama-Other.jpg')
INSERT [dbo].[ProgramImages] ([Id], [PImage], [Description], [FilePath]) VALUES (6, NULL, N'Outdoor-Other', N'~/images/Outdoor-Other.jpg')
INSERT [dbo].[ProgramImages] ([Id], [PImage], [Description], [FilePath]) VALUES (7, NULL, N'Sports-Other', N'~/images/Sports-Other.jpg')
INSERT [dbo].[ProgramImages] ([Id], [PImage], [Description], [FilePath]) VALUES (8, NULL, N'Culture-Other', N'~/images/Culture-Other.jpg')
INSERT [dbo].[ProgramImages] ([Id], [PImage], [Description], [FilePath]) VALUES (9, NULL, N'Art-Other', N'~/images/Art-Other.jpg')
INSERT [dbo].[ProgramImages] ([Id], [PImage], [Description], [FilePath]) VALUES (10, NULL, N'Dance-Other', N'~/images/Dance-Other.jpg')
INSERT [dbo].[ProgramImages] ([Id], [PImage], [Description], [FilePath]) VALUES (11, NULL, N'Religious-Other', N'~/images/Religious-Other.jpg')
INSERT [dbo].[ProgramImages] ([Id], [PImage], [Description], [FilePath]) VALUES (12, NULL, N'Music-Other', N'~/images/Music-Other.jpg')
INSERT [dbo].[ProgramImages] ([Id], [PImage], [Description], [FilePath]) VALUES (13, NULL, N'Craft-Other', N'~/images/Crafts-Other.jpg')
INSERT [dbo].[ProgramImages] ([Id], [PImage], [Description], [FilePath]) VALUES (14, NULL, N'Cooking-Other', N'~/images/Cooking-Other.jpg')
INSERT [dbo].[ProgramImages] ([Id], [PImage], [Description], [FilePath]) VALUES (18, NULL, N'Academic-Computers', N'~/images/Academic-Computers.jpg')
INSERT [dbo].[ProgramImages] ([Id], [PImage], [Description], [FilePath]) VALUES (19, NULL, N'Academic-Geography', N'~/images/Academic-Geography.jpg')
INSERT [dbo].[ProgramImages] ([Id], [PImage], [Description], [FilePath]) VALUES (20, NULL, N'Academic-Life skills', N'~/images/Academic-Life skills.jpg')
INSERT [dbo].[ProgramImages] ([Id], [PImage], [Description], [FilePath]) VALUES (21, NULL, N'Academic-Math', N'~/images/Academic-Math.jpg')
INSERT [dbo].[ProgramImages] ([Id], [PImage], [Description], [FilePath]) VALUES (23, NULL, N'Academic-Science', N'~/images/Academic-Science.jpg')
INSERT [dbo].[ProgramImages] ([Id], [PImage], [Description], [FilePath]) VALUES (24, NULL, N'Academic-Social studies', N'~/images/Academic-Social studies.jpg')
INSERT [dbo].[ProgramImages] ([Id], [PImage], [Description], [FilePath]) VALUES (25, NULL, N'Art-Clay', N'~/images/Art-Clay.jpg')
INSERT [dbo].[ProgramImages] ([Id], [PImage], [Description], [FilePath]) VALUES (26, NULL, N'Art-Drawing', N'~/images/Art-Drawing.jpg')
INSERT [dbo].[ProgramImages] ([Id], [PImage], [Description], [FilePath]) VALUES (27, NULL, N'Art-Painting oil', N'~/images/Art-Painting oil.jpg')
INSERT [dbo].[ProgramImages] ([Id], [PImage], [Description], [FilePath]) VALUES (28, NULL, N'Art-Painting watercolour', N'~/images/Art-Painting watercolour.jpg')
INSERT [dbo].[ProgramImages] ([Id], [PImage], [Description], [FilePath]) VALUES (29, NULL, N'Art-Glass', N'~/images/Art-Glass.jpg')
INSERT [dbo].[ProgramImages] ([Id], [PImage], [Description], [FilePath]) VALUES (30, NULL, N'Art-Jewelery', N'~/images/Art-Jewelery.jpg')
INSERT [dbo].[ProgramImages] ([Id], [PImage], [Description], [FilePath]) VALUES (32, NULL, N'Art-Painting acrylic', N'~/images/Art-Painting acrylic.jpg')
INSERT [dbo].[ProgramImages] ([Id], [PImage], [Description], [FilePath]) VALUES (33, NULL, N'Art-Pottery', N'~/images/Art-Pottery.jpg')
INSERT [dbo].[ProgramImages] ([Id], [PImage], [Description], [FilePath]) VALUES (34, NULL, N'Art-Print making', N'~/images/Art-Print making.jpg')
INSERT [dbo].[ProgramImages] ([Id], [PImage], [Description], [FilePath]) VALUES (35, NULL, N'Art-Sculpture', N'~/images/Art-Sculpture.jpg')
INSERT [dbo].[ProgramImages] ([Id], [PImage], [Description], [FilePath]) VALUES (36, NULL, N'Cooking-Baking', N'~/images/Cooking-Baking.jpg')
INSERT [dbo].[ProgramImages] ([Id], [PImage], [Description], [FilePath]) VALUES (37, NULL, N'Cooking-Chinese', N'~/images/Cooking-Chinese.jpg')
INSERT [dbo].[ProgramImages] ([Id], [PImage], [Description], [FilePath]) VALUES (38, NULL, N'Cooking-French', N'~/images/Cooking-French.jpg')
INSERT [dbo].[ProgramImages] ([Id], [PImage], [Description], [FilePath]) VALUES (39, NULL, N'Cooking-Healthy', N'~/images/Cooking-Healthy.jpg')
INSERT [dbo].[ProgramImages] ([Id], [PImage], [Description], [FilePath]) VALUES (40, NULL, N'Cooking-Indian', N'~/images/Cooking-Indian.jpg')
INSERT [dbo].[ProgramImages] ([Id], [PImage], [Description], [FilePath]) VALUES (41, NULL, N'Cooking-Italian', N'~/images/Cooking-Italian.jpg')
INSERT [dbo].[ProgramImages] ([Id], [PImage], [Description], [FilePath]) VALUES (42, NULL, N'Cooking-Japanese', N'~/images/Cooking-Japanese.jpg')
INSERT [dbo].[ProgramImages] ([Id], [PImage], [Description], [FilePath]) VALUES (43, NULL, N'Cooking-Kid friendly', N'~/images/Cooking-Kid friendly.jpg')
INSERT [dbo].[ProgramImages] ([Id], [PImage], [Description], [FilePath]) VALUES (44, NULL, N'Cooking-Low-carb', N'~/images/Cooking-Low-carb.jpg')
INSERT [dbo].[ProgramImages] ([Id], [PImage], [Description], [FilePath]) VALUES (45, NULL, N'Cooking-Mexican', N'~/images/Cooking-Mexican.jpg')
INSERT [dbo].[ProgramImages] ([Id], [PImage], [Description], [FilePath]) VALUES (47, NULL, N'Cooking-Thai', N'~/images/Cooking-Thai.jpg')
INSERT [dbo].[ProgramImages] ([Id], [PImage], [Description], [FilePath]) VALUES (48, NULL, N'Cooking-Vegetarian', N'~/images/Cooking-Vegetarian.jpg')
INSERT [dbo].[ProgramImages] ([Id], [PImage], [Description], [FilePath]) VALUES (49, NULL, N'Craft-Beads', N'~/images/Craft-Beads.jpg')
INSERT [dbo].[ProgramImages] ([Id], [PImage], [Description], [FilePath]) VALUES (50, NULL, N'Craft-Clay', N'~/images/Craft-Clay.jpg')
INSERT [dbo].[ProgramImages] ([Id], [PImage], [Description], [FilePath]) VALUES (51, NULL, N'Craft-Costume', N'~/images/Craft-Costume.jpg')
INSERT [dbo].[ProgramImages] ([Id], [PImage], [Description], [FilePath]) VALUES (52, NULL, N'Craft-Glass', N'~/images/Craft-Glass.jpg')
INSERT [dbo].[ProgramImages] ([Id], [PImage], [Description], [FilePath]) VALUES (54, NULL, N'Craft-Paper making', N'~/images/Craft-Paper making.jpg')
INSERT [dbo].[ProgramImages] ([Id], [PImage], [Description], [FilePath]) VALUES (55, NULL, N'Craft-Puppetry', N'~/images/Craft-Puppetry.jpg')
INSERT [dbo].[ProgramImages] ([Id], [PImage], [Description], [FilePath]) VALUES (56, NULL, N'Craft-Scrapbook', N'~/images/Craft-Scrapbook.jpg')
INSERT [dbo].[ProgramImages] ([Id], [PImage], [Description], [FilePath]) VALUES (57, NULL, N'Culture-Appreciation', N'~/images/Culture-Appreciation.jpg')
INSERT [dbo].[ProgramImages] ([Id], [PImage], [Description], [FilePath]) VALUES (58, NULL, N'Culture-Arts', N'~/images/Culture-Arts.jpg')
INSERT [dbo].[ProgramImages] ([Id], [PImage], [Description], [FilePath]) VALUES (59, NULL, N'Culture-Ethnic dress', N'~/images/Culture-Ethnic dress.jpg')
INSERT [dbo].[ProgramImages] ([Id], [PImage], [Description], [FilePath]) VALUES (60, NULL, N'Culture-Immersion', N'~/images/Culture-Immersion.jpg')
INSERT [dbo].[ProgramImages] ([Id], [PImage], [Description], [FilePath]) VALUES (61, NULL, N'Culture-Literature', N'~/images/Culture-Literature.jpg')
INSERT [dbo].[ProgramImages] ([Id], [PImage], [Description], [FilePath]) VALUES (63, NULL, N'Dance-Ballet', N'~/images/Dance-Ballet.jpg')
INSERT [dbo].[ProgramImages] ([Id], [PImage], [Description], [FilePath]) VALUES (64, NULL, N'Dance-Ballroom', N'~/images/Dance-Ballroom.jpg')
INSERT [dbo].[ProgramImages] ([Id], [PImage], [Description], [FilePath]) VALUES (65, NULL, N'Dance-Contemporary', N'~/images/Dance-Contemporary.jpg')
INSERT [dbo].[ProgramImages] ([Id], [PImage], [Description], [FilePath]) VALUES (66, NULL, N'Dance-Hip-hop', N'~/images/Dance-Hip-hop.jpg')
INSERT [dbo].[ProgramImages] ([Id], [PImage], [Description], [FilePath]) VALUES (67, NULL, N'Dance-Interperative', N'~/images/Dance-Interperative.jpg')
INSERT [dbo].[ProgramImages] ([Id], [PImage], [Description], [FilePath]) VALUES (68, NULL, N'Dance-Jazz', N'~/images/Dance-Jazz.jpg')
INSERT [dbo].[ProgramImages] ([Id], [PImage], [Description], [FilePath]) VALUES (69, NULL, N'Dance-Line', N'~/images/Dance-Line.jpg')
INSERT [dbo].[ProgramImages] ([Id], [PImage], [Description], [FilePath]) VALUES (71, NULL, N'Dance-Social', N'~/images/Dance-Social.jpg')
INSERT [dbo].[ProgramImages] ([Id], [PImage], [Description], [FilePath]) VALUES (72, NULL, N'Fitness-Bootcamp', N'~/images/Fitness-Bootcamp.jpg')
INSERT [dbo].[ProgramImages] ([Id], [PImage], [Description], [FilePath]) VALUES (73, NULL, N'Fitness-Cycling', N'~/images/Fitness-Cycling.jpg')
INSERT [dbo].[ProgramImages] ([Id], [PImage], [Description], [FilePath]) VALUES (74, NULL, N'Fitness-Games', N'~/images/Fitness-Games.jpg')
INSERT [dbo].[ProgramImages] ([Id], [PImage], [Description], [FilePath]) VALUES (75, NULL, N'Fitness-Aerobic', N'~/images/Fitness-Aerobic.jpg')
INSERT [dbo].[ProgramImages] ([Id], [PImage], [Description], [FilePath]) VALUES (76, NULL, N'Fitness-HIIT', N'~/images/Fitness-HIIT.jpg')
INSERT [dbo].[ProgramImages] ([Id], [PImage], [Description], [FilePath]) VALUES (77, NULL, N'Fitness-Other', N'~/images/Fitness-Other.jpg')
INSERT [dbo].[ProgramImages] ([Id], [PImage], [Description], [FilePath]) VALUES (78, NULL, N'Fitness-Running', N'~/images/Fitness-Running.jpg')
INSERT [dbo].[ProgramImages] ([Id], [PImage], [Description], [FilePath]) VALUES (79, NULL, N'Fitness-Pool', N'~/images/Fitness-Pool.jpg')
INSERT [dbo].[ProgramImages] ([Id], [PImage], [Description], [FilePath]) VALUES (80, NULL, N'Language-English', N'~/images/Language-English.jpg')
INSERT [dbo].[ProgramImages] ([Id], [PImage], [Description], [FilePath]) VALUES (81, NULL, N'Language-French', N'~/images/Language-French.jpg')
INSERT [dbo].[ProgramImages] ([Id], [PImage], [Description], [FilePath]) VALUES (82, NULL, N'Language-German', N'~/images/Language-German.jpg')
INSERT [dbo].[ProgramImages] ([Id], [PImage], [Description], [FilePath]) VALUES (83, NULL, N'Language-Japanese', N'~/images/Language-Japanese.jpg')
INSERT [dbo].[ProgramImages] ([Id], [PImage], [Description], [FilePath]) VALUES (84, NULL, N'Language-Mandarin', N'~/images/Language-Mandarin.jpg')
INSERT [dbo].[ProgramImages] ([Id], [PImage], [Description], [FilePath]) VALUES (86, NULL, N'Language-Russian', N'~/images/Language-Russian.jpg')
INSERT [dbo].[ProgramImages] ([Id], [PImage], [Description], [FilePath]) VALUES (87, NULL, N'Language-Spanish', N'~/images/Language-Spanish.jpg')
INSERT [dbo].[ProgramImages] ([Id], [PImage], [Description], [FilePath]) VALUES (88, NULL, N'Life Skills-Babysitting', N'~/images/Life Skills-Babysitting.jpg')
INSERT [dbo].[ProgramImages] ([Id], [PImage], [Description], [FilePath]) VALUES (89, NULL, N'Life Skills-Home alone skills', N'~/images/Life Skills-Home alone skills.jpg')
INSERT [dbo].[ProgramImages] ([Id], [PImage], [Description], [FilePath]) VALUES (90, NULL, N'Life Skills-First aid', N'~/images/Life Skills-First aid.jpg')
INSERT [dbo].[ProgramImages] ([Id], [PImage], [Description], [FilePath]) VALUES (91, NULL, N'Life Skills-Internet safety', N'~/images/Life Skills-Internet safety.jpg')
INSERT [dbo].[ProgramImages] ([Id], [PImage], [Description], [FilePath]) VALUES (92, NULL, N'Life Skills-Other', N'~/images/Life Skills-Other.jpg')
INSERT [dbo].[ProgramImages] ([Id], [PImage], [Description], [FilePath]) VALUES (93, NULL, N'Life Skills-Self confidence', N'~/images/Life Skills-Self confidence.jpg')
INSERT [dbo].[ProgramImages] ([Id], [PImage], [Description], [FilePath]) VALUES (94, NULL, N'Life Skills-Stranger awareness', N'~/images/Life Skills-Stranger awareness.jpg')
INSERT [dbo].[ProgramImages] ([Id], [PImage], [Description], [FilePath]) VALUES (95, NULL, N'Music-Bass', N'~/images/Music-Bass.jpg')
INSERT [dbo].[ProgramImages] ([Id], [PImage], [Description], [FilePath]) VALUES (96, NULL, N'Music-Drums', N'~/images/Music-Drums.jpg')
INSERT [dbo].[ProgramImages] ([Id], [PImage], [Description], [FilePath]) VALUES (97, NULL, N'Music-Electric guitar', N'~/images/Music-Electric guitar.jpg')
INSERT [dbo].[ProgramImages] ([Id], [PImage], [Description], [FilePath]) VALUES (98, NULL, N'Music-Electronic', N'~/images/Music-Electronic.jpg')
INSERT [dbo].[ProgramImages] ([Id], [PImage], [Description], [FilePath]) VALUES (99, NULL, N'Music-Guitar', N'~/images/Music-Guitar.jpg')
INSERT [dbo].[ProgramImages] ([Id], [PImage], [Description], [FilePath]) VALUES (101, NULL, N'Music-Piano', N'~/images/Music-Piano.jpg')
INSERT [dbo].[ProgramImages] ([Id], [PImage], [Description], [FilePath]) VALUES (102, NULL, N'Music-Vocal', N'~/images/Music-Vocal.jpg')
INSERT [dbo].[ProgramImages] ([Id], [PImage], [Description], [FilePath]) VALUES (103, NULL, N'Music-Vocal group', N'~/images/Music-Vocal group.jpg')
INSERT [dbo].[ProgramImages] ([Id], [PImage], [Description], [FilePath]) VALUES (104, NULL, N'Music-Wind', N'~/images/Music-Wind.jpg')
INSERT [dbo].[ProgramImages] ([Id], [PImage], [Description], [FilePath]) VALUES (106, NULL, N'Outdoor-Bird watching', N'~/images/Outdoor-Bird watching.jpg')
INSERT [dbo].[ProgramImages] ([Id], [PImage], [Description], [FilePath]) VALUES (107, NULL, N'Outdoor-Camping', N'~/images/Outdoor-Camping.jpg')
INSERT [dbo].[ProgramImages] ([Id], [PImage], [Description], [FilePath]) VALUES (108, NULL, N'Outdoor-Games', N'~/images/Outdoor-Games.jpg')
INSERT [dbo].[ProgramImages] ([Id], [PImage], [Description], [FilePath]) VALUES (109, NULL, N'Outdoor-Hiking', N'~/images/Outdoor-Hiking.jpg')
INSERT [dbo].[ProgramImages] ([Id], [PImage], [Description], [FilePath]) VALUES (110, NULL, N'Outdoor-Map reading', N'~/images/Outdoor-Map reading.jpg')
INSERT [dbo].[ProgramImages] ([Id], [PImage], [Description], [FilePath]) VALUES (111, NULL, N'Outdoor-Orientation', N'~/images/Outdoor-Orientation.jpg')
INSERT [dbo].[ProgramImages] ([Id], [PImage], [Description], [FilePath]) VALUES (113, NULL, N'Outdoor-Plant identification', N'~/images/Outdoor-Plant identification.jpg')
INSERT [dbo].[ProgramImages] ([Id], [PImage], [Description], [FilePath]) VALUES (114, NULL, N'Outdoor-Snowshoeing', N'~/images/Outdoor-Snowshoeing.jpg')
GO
INSERT [dbo].[ProgramImages] ([Id], [PImage], [Description], [FilePath]) VALUES (115, NULL, N'Outdoor-Survival skills', N'~/images/Outdoor-Survival skills.jpg')
INSERT [dbo].[ProgramImages] ([Id], [PImage], [Description], [FilePath]) VALUES (116, NULL, N'Religious-Camp', N'~/images/Religious-Camp.jpg')
INSERT [dbo].[ProgramImages] ([Id], [PImage], [Description], [FilePath]) VALUES (117, NULL, N'Religious-Discussion group', N'~/images/Religious-Discussion group.jpg')
INSERT [dbo].[ProgramImages] ([Id], [PImage], [Description], [FilePath]) VALUES (119, NULL, N'Religious-Study group', N'~/images/Religious-Study group.jpg')
INSERT [dbo].[ProgramImages] ([Id], [PImage], [Description], [FilePath]) VALUES (120, NULL, N'Religious-Sunday school', N'~/images/Religious-Sunday school.jpg')
INSERT [dbo].[ProgramImages] ([Id], [PImage], [Description], [FilePath]) VALUES (121, NULL, N'Religious-Vacation Bible School', N'~/images/Religious-Vacation Bible School.jpg')
INSERT [dbo].[ProgramImages] ([Id], [PImage], [Description], [FilePath]) VALUES (122, NULL, N'Religious-Youth group', N'~/images/Religious-Youth group.jpg')
INSERT [dbo].[ProgramImages] ([Id], [PImage], [Description], [FilePath]) VALUES (123, NULL, N'Sports-Baseball', N'~/images/Sports-Baseball.jpg')
INSERT [dbo].[ProgramImages] ([Id], [PImage], [Description], [FilePath]) VALUES (124, NULL, N'Sports-Basketball', N'~/images/Sports-Basketball.jpg')
INSERT [dbo].[ProgramImages] ([Id], [PImage], [Description], [FilePath]) VALUES (125, NULL, N'Sports-Fencing', N'~/images/Sports-Fencing.jpg')
INSERT [dbo].[ProgramImages] ([Id], [PImage], [Description], [FilePath]) VALUES (126, NULL, N'Sports-Football', N'~/images/Sports-Football.jpg')
INSERT [dbo].[ProgramImages] ([Id], [PImage], [Description], [FilePath]) VALUES (127, NULL, N'Sports-Hockey', N'~/images/Sports-Hockey.jpg')
INSERT [dbo].[ProgramImages] ([Id], [PImage], [Description], [FilePath]) VALUES (128, NULL, N'Sports-Lacrosse', N'~/images/Sports-Lacrosse.jpg')
INSERT [dbo].[ProgramImages] ([Id], [PImage], [Description], [FilePath]) VALUES (129, NULL, N'Sports-Martial arts', N'~/images/Sports-Martial arts.jpg')
INSERT [dbo].[ProgramImages] ([Id], [PImage], [Description], [FilePath]) VALUES (131, NULL, N'Sports-Raquet sports', N'~/images/Sports-Raquet sports.jpg')
INSERT [dbo].[ProgramImages] ([Id], [PImage], [Description], [FilePath]) VALUES (132, NULL, N'Sports-Skating', N'~/images/Sports-Skating.jpg')
INSERT [dbo].[ProgramImages] ([Id], [PImage], [Description], [FilePath]) VALUES (133, NULL, N'Sports-Skiing', N'~/images/Sports-Skiing.jpg')
INSERT [dbo].[ProgramImages] ([Id], [PImage], [Description], [FilePath]) VALUES (134, NULL, N'Sports-Snowboarding', N'~/images/Sports-Snowboarding.jpg')
INSERT [dbo].[ProgramImages] ([Id], [PImage], [Description], [FilePath]) VALUES (135, NULL, N'Sports-Soccer', N'~/images/Sports-Soccer.jpg')
INSERT [dbo].[ProgramImages] ([Id], [PImage], [Description], [FilePath]) VALUES (136, NULL, N'Sports-Softball', N'~/images/Sports-Softball.jpg')
INSERT [dbo].[ProgramImages] ([Id], [PImage], [Description], [FilePath]) VALUES (137, NULL, N'Sports-Swimming', N'~/images/Sports-Swimming.jpg')
INSERT [dbo].[ProgramImages] ([Id], [PImage], [Description], [FilePath]) VALUES (138, NULL, N'Sports-Track and field', N'~/images/Sports-Track and field.jpg')
INSERT [dbo].[ProgramImages] ([Id], [PImage], [Description], [FilePath]) VALUES (139, NULL, N'Sports-Volleyball', N'~/images/Sports-Volleyball.jpg')
INSERT [dbo].[ProgramImages] ([Id], [PImage], [Description], [FilePath]) VALUES (140, NULL, N'Sports-Wrestling', N'~/images/Sports-Wrestling.jpg')
INSERT [dbo].[ProgramImages] ([Id], [PImage], [Description], [FilePath]) VALUES (141, NULL, N'Other', N'~/images/Other-Other.jpg')
SET IDENTITY_INSERT [dbo].[ProgramImages] OFF
GO
SET IDENTITY_INSERT [dbo].[ProgramTypes] ON 

INSERT [dbo].[ProgramTypes] ([Id], [Type]) VALUES (1, N'Academic-Computers')
INSERT [dbo].[ProgramTypes] ([Id], [Type]) VALUES (2, N'Academic-Other')
INSERT [dbo].[ProgramTypes] ([Id], [Type]) VALUES (3, N'Academic-Geography')
INSERT [dbo].[ProgramTypes] ([Id], [Type]) VALUES (4, N'Academic-Life skills')
INSERT [dbo].[ProgramTypes] ([Id], [Type]) VALUES (5, N'Academic-Social studies')
INSERT [dbo].[ProgramTypes] ([Id], [Type]) VALUES (6, N'Academic-Science')
INSERT [dbo].[ProgramTypes] ([Id], [Type]) VALUES (7, N'Academic-Math')
INSERT [dbo].[ProgramTypes] ([Id], [Type]) VALUES (8, N'Art-Drawing')
INSERT [dbo].[ProgramTypes] ([Id], [Type]) VALUES (9, N'Art-Painting acrylic')
INSERT [dbo].[ProgramTypes] ([Id], [Type]) VALUES (10, N'Art-Painting oil')
INSERT [dbo].[ProgramTypes] ([Id], [Type]) VALUES (11, N'Art-Painting watercolour')
INSERT [dbo].[ProgramTypes] ([Id], [Type]) VALUES (12, N'Art-Clay')
INSERT [dbo].[ProgramTypes] ([Id], [Type]) VALUES (13, N'Art-Pottery')
INSERT [dbo].[ProgramTypes] ([Id], [Type]) VALUES (14, N'Art-Print making')
INSERT [dbo].[ProgramTypes] ([Id], [Type]) VALUES (15, N'Art-Jewelery')
INSERT [dbo].[ProgramTypes] ([Id], [Type]) VALUES (16, N'Art-Sculpture')
INSERT [dbo].[ProgramTypes] ([Id], [Type]) VALUES (17, N'Art-Glass')
INSERT [dbo].[ProgramTypes] ([Id], [Type]) VALUES (18, N'Art-Other')
INSERT [dbo].[ProgramTypes] ([Id], [Type]) VALUES (19, N'Cooking-French')
INSERT [dbo].[ProgramTypes] ([Id], [Type]) VALUES (20, N'Cooking-Italian')
INSERT [dbo].[ProgramTypes] ([Id], [Type]) VALUES (21, N'Cooking-Indian')
INSERT [dbo].[ProgramTypes] ([Id], [Type]) VALUES (22, N'Cooking-Chinese')
INSERT [dbo].[ProgramTypes] ([Id], [Type]) VALUES (23, N'Cooking-Thai')
INSERT [dbo].[ProgramTypes] ([Id], [Type]) VALUES (24, N'Cooking-Japanese')
INSERT [dbo].[ProgramTypes] ([Id], [Type]) VALUES (25, N'Cooking-Mexican')
INSERT [dbo].[ProgramTypes] ([Id], [Type]) VALUES (26, N'Cooking-Healthy')
INSERT [dbo].[ProgramTypes] ([Id], [Type]) VALUES (27, N'Cooking-Low-carb')
INSERT [dbo].[ProgramTypes] ([Id], [Type]) VALUES (28, N'Cooking-Kid friendly')
INSERT [dbo].[ProgramTypes] ([Id], [Type]) VALUES (29, N'Cooking-Baking')
INSERT [dbo].[ProgramTypes] ([Id], [Type]) VALUES (30, N'Cooking-Vegetarian')
INSERT [dbo].[ProgramTypes] ([Id], [Type]) VALUES (31, N'Cooking-Other')
INSERT [dbo].[ProgramTypes] ([Id], [Type]) VALUES (32, N'Craft-Puppetry')
INSERT [dbo].[ProgramTypes] ([Id], [Type]) VALUES (33, N'Craft-Beads')
INSERT [dbo].[ProgramTypes] ([Id], [Type]) VALUES (34, N'Craft-Scrapbook')
INSERT [dbo].[ProgramTypes] ([Id], [Type]) VALUES (35, N'Craft-Paper making')
INSERT [dbo].[ProgramTypes] ([Id], [Type]) VALUES (36, N'Craft-Clay')
INSERT [dbo].[ProgramTypes] ([Id], [Type]) VALUES (37, N'Craft-Glass')
INSERT [dbo].[ProgramTypes] ([Id], [Type]) VALUES (38, N'Craft-Costume')
INSERT [dbo].[ProgramTypes] ([Id], [Type]) VALUES (39, N'Craft-Other')
INSERT [dbo].[ProgramTypes] ([Id], [Type]) VALUES (40, N'Culture-Appreciation')
INSERT [dbo].[ProgramTypes] ([Id], [Type]) VALUES (41, N'Culture-Immersion')
INSERT [dbo].[ProgramTypes] ([Id], [Type]) VALUES (42, N'Culture-Ethnic dress')
INSERT [dbo].[ProgramTypes] ([Id], [Type]) VALUES (43, N'Culture-Literature')
INSERT [dbo].[ProgramTypes] ([Id], [Type]) VALUES (44, N'Culture-Arts')
INSERT [dbo].[ProgramTypes] ([Id], [Type]) VALUES (45, N'Culture-Other')
INSERT [dbo].[ProgramTypes] ([Id], [Type]) VALUES (46, N'Dance-Jazz')
INSERT [dbo].[ProgramTypes] ([Id], [Type]) VALUES (47, N'Dance-Ballet')
INSERT [dbo].[ProgramTypes] ([Id], [Type]) VALUES (48, N'Dance-Hip-hop')
INSERT [dbo].[ProgramTypes] ([Id], [Type]) VALUES (49, N'Dance-Interperative')
INSERT [dbo].[ProgramTypes] ([Id], [Type]) VALUES (50, N'Dance-Social')
INSERT [dbo].[ProgramTypes] ([Id], [Type]) VALUES (51, N'Dance-Line')
INSERT [dbo].[ProgramTypes] ([Id], [Type]) VALUES (52, N'Dance-Ballroom')
INSERT [dbo].[ProgramTypes] ([Id], [Type]) VALUES (53, N'Dance-Other')
INSERT [dbo].[ProgramTypes] ([Id], [Type]) VALUES (54, N'Dance-Contemporary')
INSERT [dbo].[ProgramTypes] ([Id], [Type]) VALUES (55, N'Fitness-Running')
INSERT [dbo].[ProgramTypes] ([Id], [Type]) VALUES (56, N'Fitness-Running')
INSERT [dbo].[ProgramTypes] ([Id], [Type]) VALUES (57, N'Fitness-Cycling')
INSERT [dbo].[ProgramTypes] ([Id], [Type]) VALUES (58, N'Fitness-Games')
INSERT [dbo].[ProgramTypes] ([Id], [Type]) VALUES (59, N'Fitness-HIIT')
INSERT [dbo].[ProgramTypes] ([Id], [Type]) VALUES (60, N'Fitness-Bootcamp')
INSERT [dbo].[ProgramTypes] ([Id], [Type]) VALUES (61, N'Fitness-Games')
INSERT [dbo].[ProgramTypes] ([Id], [Type]) VALUES (62, N'Fitness-Other')
INSERT [dbo].[ProgramTypes] ([Id], [Type]) VALUES (63, N'Language-Mandarin')
INSERT [dbo].[ProgramTypes] ([Id], [Type]) VALUES (64, N'Language-French')
INSERT [dbo].[ProgramTypes] ([Id], [Type]) VALUES (65, N'Language-Russian')
INSERT [dbo].[ProgramTypes] ([Id], [Type]) VALUES (66, N'Language-Japanese')
INSERT [dbo].[ProgramTypes] ([Id], [Type]) VALUES (67, N'Language-English')
INSERT [dbo].[ProgramTypes] ([Id], [Type]) VALUES (68, N'Language-German')
INSERT [dbo].[ProgramTypes] ([Id], [Type]) VALUES (69, N'Language-Spanish')
INSERT [dbo].[ProgramTypes] ([Id], [Type]) VALUES (70, N'Language-Other')
INSERT [dbo].[ProgramTypes] ([Id], [Type]) VALUES (71, N'Life Skills-Babysitting')
INSERT [dbo].[ProgramTypes] ([Id], [Type]) VALUES (72, N'Life Skills-First aid')
INSERT [dbo].[ProgramTypes] ([Id], [Type]) VALUES (73, N'Life Skills-Internet safety')
INSERT [dbo].[ProgramTypes] ([Id], [Type]) VALUES (74, N'Life Skills-Stranger awareness')
INSERT [dbo].[ProgramTypes] ([Id], [Type]) VALUES (75, N'Life Skills-Home alone skills')
INSERT [dbo].[ProgramTypes] ([Id], [Type]) VALUES (76, N'Life Skills-Self confidence')
INSERT [dbo].[ProgramTypes] ([Id], [Type]) VALUES (77, N'Life Skills-Other')
INSERT [dbo].[ProgramTypes] ([Id], [Type]) VALUES (78, N'Music-Piano')
INSERT [dbo].[ProgramTypes] ([Id], [Type]) VALUES (79, N'Music-Wind')
INSERT [dbo].[ProgramTypes] ([Id], [Type]) VALUES (80, N'Music-Drums')
INSERT [dbo].[ProgramTypes] ([Id], [Type]) VALUES (81, N'Music-Bass')
INSERT [dbo].[ProgramTypes] ([Id], [Type]) VALUES (82, N'Music-Guitar')
INSERT [dbo].[ProgramTypes] ([Id], [Type]) VALUES (83, N'Music-Electric guitar')
INSERT [dbo].[ProgramTypes] ([Id], [Type]) VALUES (84, N'Music-Electronic')
INSERT [dbo].[ProgramTypes] ([Id], [Type]) VALUES (85, N'Music-Vocal')
INSERT [dbo].[ProgramTypes] ([Id], [Type]) VALUES (86, N'Music-Vocal group')
INSERT [dbo].[ProgramTypes] ([Id], [Type]) VALUES (87, N'Music-Other')
INSERT [dbo].[ProgramTypes] ([Id], [Type]) VALUES (88, N'Outdoor-Survival skills')
INSERT [dbo].[ProgramTypes] ([Id], [Type]) VALUES (89, N'Outdoor-Bird watching')
INSERT [dbo].[ProgramTypes] ([Id], [Type]) VALUES (90, N'Outdoor-Plant identification')
INSERT [dbo].[ProgramTypes] ([Id], [Type]) VALUES (91, N'Outdoor-Hiking')
INSERT [dbo].[ProgramTypes] ([Id], [Type]) VALUES (92, N'Outdoor-Orientation')
INSERT [dbo].[ProgramTypes] ([Id], [Type]) VALUES (93, N'Outdoor-Map reading')
INSERT [dbo].[ProgramTypes] ([Id], [Type]) VALUES (94, N'Outdoor-Snowshoeing')
INSERT [dbo].[ProgramTypes] ([Id], [Type]) VALUES (95, N'Outdoor-Camping')
INSERT [dbo].[ProgramTypes] ([Id], [Type]) VALUES (96, N'Outdoor-Games')
INSERT [dbo].[ProgramTypes] ([Id], [Type]) VALUES (97, N'Outdoor-Other')
INSERT [dbo].[ProgramTypes] ([Id], [Type]) VALUES (98, N'Religious-Camp')
INSERT [dbo].[ProgramTypes] ([Id], [Type]) VALUES (99, N'Religious-Vacation Bible School')
GO
INSERT [dbo].[ProgramTypes] ([Id], [Type]) VALUES (100, N'Religious-Study group')
INSERT [dbo].[ProgramTypes] ([Id], [Type]) VALUES (101, N'Religious-Discussion group')
INSERT [dbo].[ProgramTypes] ([Id], [Type]) VALUES (102, N'Religious-Youth group')
INSERT [dbo].[ProgramTypes] ([Id], [Type]) VALUES (103, N'Religious-Sunday school')
INSERT [dbo].[ProgramTypes] ([Id], [Type]) VALUES (104, N'Religious-Other')
INSERT [dbo].[ProgramTypes] ([Id], [Type]) VALUES (105, N'Sports-Soccer')
INSERT [dbo].[ProgramTypes] ([Id], [Type]) VALUES (106, N'Sports-Football')
INSERT [dbo].[ProgramTypes] ([Id], [Type]) VALUES (107, N'Sports-Baseball')
INSERT [dbo].[ProgramTypes] ([Id], [Type]) VALUES (108, N'Sports-Softball')
INSERT [dbo].[ProgramTypes] ([Id], [Type]) VALUES (109, N'Sports-Martial arts')
INSERT [dbo].[ProgramTypes] ([Id], [Type]) VALUES (110, N'Sports-Raquet sports')
INSERT [dbo].[ProgramTypes] ([Id], [Type]) VALUES (111, N'Sports-Wrestling')
INSERT [dbo].[ProgramTypes] ([Id], [Type]) VALUES (112, N'Sports-Track and field')
INSERT [dbo].[ProgramTypes] ([Id], [Type]) VALUES (113, N'Sports-Hockey')
INSERT [dbo].[ProgramTypes] ([Id], [Type]) VALUES (114, N'Sports-Fencing')
INSERT [dbo].[ProgramTypes] ([Id], [Type]) VALUES (115, N'Sports-Volleyball')
INSERT [dbo].[ProgramTypes] ([Id], [Type]) VALUES (116, N'Sports-Swimming')
INSERT [dbo].[ProgramTypes] ([Id], [Type]) VALUES (117, N'Sports-Skiing')
INSERT [dbo].[ProgramTypes] ([Id], [Type]) VALUES (118, N'Sports-Snowboarding')
INSERT [dbo].[ProgramTypes] ([Id], [Type]) VALUES (119, N'Sports-Basketball')
INSERT [dbo].[ProgramTypes] ([Id], [Type]) VALUES (120, N'Sports-Lacrosse')
INSERT [dbo].[ProgramTypes] ([Id], [Type]) VALUES (121, N'Sports-Skating')
INSERT [dbo].[ProgramTypes] ([Id], [Type]) VALUES (122, N'Sports-Other')
INSERT [dbo].[ProgramTypes] ([Id], [Type]) VALUES (123, N'Other')
SET IDENTITY_INSERT [dbo].[ProgramTypes] OFF
GO
SET IDENTITY_INSERT [dbo].[Provinces] ON 

INSERT [dbo].[Provinces] ([ProvinceId], [ProvinceName], [CountryId]) VALUES (1, N'Alberta', 1)
INSERT [dbo].[Provinces] ([ProvinceId], [ProvinceName], [CountryId]) VALUES (2, N'British Columbia', 1)
INSERT [dbo].[Provinces] ([ProvinceId], [ProvinceName], [CountryId]) VALUES (3, N'Manitoba', 1)
INSERT [dbo].[Provinces] ([ProvinceId], [ProvinceName], [CountryId]) VALUES (4, N'New Brunswick', 1)
INSERT [dbo].[Provinces] ([ProvinceId], [ProvinceName], [CountryId]) VALUES (5, N'NFLD and  Labrador', 1)
INSERT [dbo].[Provinces] ([ProvinceId], [ProvinceName], [CountryId]) VALUES (6, N'Nova Scotia', 1)
INSERT [dbo].[Provinces] ([ProvinceId], [ProvinceName], [CountryId]) VALUES (7, N'Ontario', 1)
INSERT [dbo].[Provinces] ([ProvinceId], [ProvinceName], [CountryId]) VALUES (8, N'Prince Edward Island', 1)
INSERT [dbo].[Provinces] ([ProvinceId], [ProvinceName], [CountryId]) VALUES (9, N'Quebec', 1)
INSERT [dbo].[Provinces] ([ProvinceId], [ProvinceName], [CountryId]) VALUES (10, N'Saskatchewan', 1)
INSERT [dbo].[Provinces] ([ProvinceId], [ProvinceName], [CountryId]) VALUES (11, N'Northwest Territories', 1)
INSERT [dbo].[Provinces] ([ProvinceId], [ProvinceName], [CountryId]) VALUES (12, N'Yukon', 1)
INSERT [dbo].[Provinces] ([ProvinceId], [ProvinceName], [CountryId]) VALUES (13, N'California', 2)
INSERT [dbo].[Provinces] ([ProvinceId], [ProvinceName], [CountryId]) VALUES (14, N'Texas', 2)
INSERT [dbo].[Provinces] ([ProvinceId], [ProvinceName], [CountryId]) VALUES (15, N'Washington', 2)
INSERT [dbo].[Provinces] ([ProvinceId], [ProvinceName], [CountryId]) VALUES (16, N'Arizona', 2)
INSERT [dbo].[Provinces] ([ProvinceId], [ProvinceName], [CountryId]) VALUES (17, N'Florida', 2)
INSERT [dbo].[Provinces] ([ProvinceId], [ProvinceName], [CountryId]) VALUES (18, N'Alabama', 2)
INSERT [dbo].[Provinces] ([ProvinceId], [ProvinceName], [CountryId]) VALUES (29, N'California', 2)
INSERT [dbo].[Provinces] ([ProvinceId], [ProvinceName], [CountryId]) VALUES (31, N'Colorado', 2)
INSERT [dbo].[Provinces] ([ProvinceId], [ProvinceName], [CountryId]) VALUES (32, N'Connecticut', 2)
INSERT [dbo].[Provinces] ([ProvinceId], [ProvinceName], [CountryId]) VALUES (33, N'Delaware', 2)
INSERT [dbo].[Provinces] ([ProvinceId], [ProvinceName], [CountryId]) VALUES (34, N'Florida', 2)
INSERT [dbo].[Provinces] ([ProvinceId], [ProvinceName], [CountryId]) VALUES (35, N'Georgia', 2)
INSERT [dbo].[Provinces] ([ProvinceId], [ProvinceName], [CountryId]) VALUES (36, N'Hawaii', 2)
INSERT [dbo].[Provinces] ([ProvinceId], [ProvinceName], [CountryId]) VALUES (37, N'Idaho', 2)
INSERT [dbo].[Provinces] ([ProvinceId], [ProvinceName], [CountryId]) VALUES (38, N'Illinois', 2)
INSERT [dbo].[Provinces] ([ProvinceId], [ProvinceName], [CountryId]) VALUES (39, N'Indiana', 2)
INSERT [dbo].[Provinces] ([ProvinceId], [ProvinceName], [CountryId]) VALUES (40, N'Iowa', 2)
INSERT [dbo].[Provinces] ([ProvinceId], [ProvinceName], [CountryId]) VALUES (41, N'Kansas', 2)
INSERT [dbo].[Provinces] ([ProvinceId], [ProvinceName], [CountryId]) VALUES (42, N'Kentucky', 2)
INSERT [dbo].[Provinces] ([ProvinceId], [ProvinceName], [CountryId]) VALUES (43, N'Louisiana', 2)
INSERT [dbo].[Provinces] ([ProvinceId], [ProvinceName], [CountryId]) VALUES (44, N'Maine', 2)
INSERT [dbo].[Provinces] ([ProvinceId], [ProvinceName], [CountryId]) VALUES (45, N'Maryland', 2)
INSERT [dbo].[Provinces] ([ProvinceId], [ProvinceName], [CountryId]) VALUES (46, N'Massachusetts', 2)
INSERT [dbo].[Provinces] ([ProvinceId], [ProvinceName], [CountryId]) VALUES (47, N'Michigan', 2)
INSERT [dbo].[Provinces] ([ProvinceId], [ProvinceName], [CountryId]) VALUES (48, N'Minnesota', 2)
INSERT [dbo].[Provinces] ([ProvinceId], [ProvinceName], [CountryId]) VALUES (49, N'Mississippi', 2)
INSERT [dbo].[Provinces] ([ProvinceId], [ProvinceName], [CountryId]) VALUES (50, N'Missouri', 2)
INSERT [dbo].[Provinces] ([ProvinceId], [ProvinceName], [CountryId]) VALUES (51, N'Montana', 2)
INSERT [dbo].[Provinces] ([ProvinceId], [ProvinceName], [CountryId]) VALUES (52, N'Nebraska', 2)
INSERT [dbo].[Provinces] ([ProvinceId], [ProvinceName], [CountryId]) VALUES (53, N'Nevada', 2)
INSERT [dbo].[Provinces] ([ProvinceId], [ProvinceName], [CountryId]) VALUES (54, N'New Hampshire', 2)
INSERT [dbo].[Provinces] ([ProvinceId], [ProvinceName], [CountryId]) VALUES (55, N'New Jersey', 2)
INSERT [dbo].[Provinces] ([ProvinceId], [ProvinceName], [CountryId]) VALUES (56, N'New Mexico', 2)
INSERT [dbo].[Provinces] ([ProvinceId], [ProvinceName], [CountryId]) VALUES (57, N'New York', 2)
INSERT [dbo].[Provinces] ([ProvinceId], [ProvinceName], [CountryId]) VALUES (58, N'North Carolina', 2)
INSERT [dbo].[Provinces] ([ProvinceId], [ProvinceName], [CountryId]) VALUES (59, N'North Dakota', 2)
INSERT [dbo].[Provinces] ([ProvinceId], [ProvinceName], [CountryId]) VALUES (60, N'Ohio', 2)
INSERT [dbo].[Provinces] ([ProvinceId], [ProvinceName], [CountryId]) VALUES (61, N'Oklahoma', 2)
INSERT [dbo].[Provinces] ([ProvinceId], [ProvinceName], [CountryId]) VALUES (62, N'Oregon', 2)
INSERT [dbo].[Provinces] ([ProvinceId], [ProvinceName], [CountryId]) VALUES (63, N'Pennsylvania', 2)
INSERT [dbo].[Provinces] ([ProvinceId], [ProvinceName], [CountryId]) VALUES (64, N'Rhode Island', 2)
INSERT [dbo].[Provinces] ([ProvinceId], [ProvinceName], [CountryId]) VALUES (65, N'South Carolina', 2)
INSERT [dbo].[Provinces] ([ProvinceId], [ProvinceName], [CountryId]) VALUES (66, N'South Dakota', 2)
INSERT [dbo].[Provinces] ([ProvinceId], [ProvinceName], [CountryId]) VALUES (67, N'Tennessee', 2)
INSERT [dbo].[Provinces] ([ProvinceId], [ProvinceName], [CountryId]) VALUES (68, N'Texas', 2)
INSERT [dbo].[Provinces] ([ProvinceId], [ProvinceName], [CountryId]) VALUES (69, N'Utah', 2)
INSERT [dbo].[Provinces] ([ProvinceId], [ProvinceName], [CountryId]) VALUES (70, N'Vermont', 2)
INSERT [dbo].[Provinces] ([ProvinceId], [ProvinceName], [CountryId]) VALUES (71, N'Virginia', 2)
INSERT [dbo].[Provinces] ([ProvinceId], [ProvinceName], [CountryId]) VALUES (72, N'Washington', 2)
INSERT [dbo].[Provinces] ([ProvinceId], [ProvinceName], [CountryId]) VALUES (73, N'West Virginia', 2)
INSERT [dbo].[Provinces] ([ProvinceId], [ProvinceName], [CountryId]) VALUES (74, N'Wisconsin', 2)
INSERT [dbo].[Provinces] ([ProvinceId], [ProvinceName], [CountryId]) VALUES (75, N'Wyoming', 2)
INSERT [dbo].[Provinces] ([ProvinceId], [ProvinceName], [CountryId]) VALUES (76, N'Washington DC', 2)
INSERT [dbo].[Provinces] ([ProvinceId], [ProvinceName], [CountryId]) VALUES (77, N'Nunavut', 1)
SET IDENTITY_INSERT [dbo].[Provinces] OFF
GO
SET IDENTITY_INSERT [dbo].[VendorPrograms] ON 

INSERT [dbo].[VendorPrograms] ([Id], [VendorId], [RegistrationStartDate], [RegistrationEndDate], [Gender], [Requirements], [RegistrationLink], [Status], [Discount], [Description], [AddedDate], [MaximumAge], [MinimumAge], [Policy], [ProgramImageId], [ProgramName], [DeliveryTypeId], [ProgramCategoryId], [ProgramTypeId], [Headline], [Requirments], [CityId], [RatingAverage], [Price]) VALUES (66, 48, CAST(N'2020-11-25T00:00:00.0000000' AS DateTime2), CAST(N'2020-12-02T00:00:00.0000000' AS DateTime2), NULL, N'None', N'www.ymcacalgary.org/camps/camp-chief-hector/', 0, NULL, N'Families can choose their own flow and drop-in to all activities offered that day. Five or six activities will be available each day, chose from, archery, canoeing, hiking, pony petting, nature crafts, and more!
Families will stay together as they participate in activities throughout the day. Ideal for adults and kids aged 4-15Y (all ages welcome).', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 65, 0, NULL, 107, N'Camp Chief Hector YMCA', 2, 1, 95, N'A day of nature-based outdoor activities!', N'', 109, 0, 0)
INSERT [dbo].[VendorPrograms] ([Id], [VendorId], [RegistrationStartDate], [RegistrationEndDate], [Gender], [Requirements], [RegistrationLink], [Status], [Discount], [Description], [AddedDate], [MaximumAge], [MinimumAge], [Policy], [ProgramImageId], [ProgramName], [DeliveryTypeId], [ProgramCategoryId], [ProgramTypeId], [Headline], [Requirments], [CityId], [RatingAverage], [Price]) VALUES (67, 48, CAST(N'2020-11-24T00:00:00.0000000' AS DateTime2), CAST(N'2020-12-21T00:00:00.0000000' AS DateTime2), NULL, N'None', N'www.ymcacalgary.org/camps/day-camps/', 0, NULL, N'During multi-activity camps, participants will play sports, sing songs, get artsy, and participate in a variety of traditional camp games, both in and outside the YMCA facility.', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 0, 0, NULL, 83, N'Indoor Camp (with some outdoor activities)', 1, 2, 66, N'Camp YMCA camps take place during school and summer breaks', N'', 109, 0, 0)
INSERT [dbo].[VendorPrograms] ([Id], [VendorId], [RegistrationStartDate], [RegistrationEndDate], [Gender], [Requirements], [RegistrationLink], [Status], [Discount], [Description], [AddedDate], [MaximumAge], [MinimumAge], [Policy], [ProgramImageId], [ProgramName], [DeliveryTypeId], [ProgramCategoryId], [ProgramTypeId], [Headline], [Requirments], [CityId], [RatingAverage], [Price]) VALUES (68, 49, CAST(N'2020-11-23T00:00:00.0000000' AS DateTime2), CAST(N'2021-06-25T00:00:00.0000000' AS DateTime2), NULL, N'Participants should have their own mask and glove (or you can rent from the club).', N'www.fencingacademy.ca/classes.php', 0, NULL, N'Six 1-hour group or individual lessons (once per week) for ages 7 – 15 yrs.
All protective gear and equipment is provided.', CAST(N'2020-11-23T16:42:48.3113804' AS DateTime2), 15, 7, NULL, 125, N'YOUTH INTRODUCTORY FENCING COURSE', 2, 2, 114, N'1-hour group lesson once or twice per week', N'', 643, 0, 0)
INSERT [dbo].[VendorPrograms] ([Id], [VendorId], [RegistrationStartDate], [RegistrationEndDate], [Gender], [Requirements], [RegistrationLink], [Status], [Discount], [Description], [AddedDate], [MaximumAge], [MinimumAge], [Policy], [ProgramImageId], [ProgramName], [DeliveryTypeId], [ProgramCategoryId], [ProgramTypeId], [Headline], [Requirments], [CityId], [RatingAverage], [Price]) VALUES (71, 51, CAST(N'2020-11-21T00:00:00.0000000' AS DateTime2), CAST(N'2021-02-10T00:00:00.0000000' AS DateTime2), NULL, N'None', N'www.calgarylibrary.ca', 0, NULL, N'Art meets science in this unique drawing activity brought to you by real live tarantulas, beetles, millipedes, and more. By observing these leggy little models we will learn the basics of insect anatomy and then draw our own very own creative critters at home.', CAST(N'2020-11-23T21:43:24.9485296' AS DateTime2), 0, 0, NULL, 3, N'Art + Entomology =?', 2, 2, 6, N'Art meets science in this unique drawing activity', N'', 109, 0, 0)
INSERT [dbo].[VendorPrograms] ([Id], [VendorId], [RegistrationStartDate], [RegistrationEndDate], [Gender], [Requirements], [RegistrationLink], [Status], [Discount], [Description], [AddedDate], [MaximumAge], [MinimumAge], [Policy], [ProgramImageId], [ProgramName], [DeliveryTypeId], [ProgramCategoryId], [ProgramTypeId], [Headline], [Requirments], [CityId], [RatingAverage], [Price]) VALUES (72, 51, CAST(N'2020-11-23T00:00:00.0000000' AS DateTime2), CAST(N'2020-11-30T00:00:00.0000000' AS DateTime2), NULL, N'None', N'www.calgarylibrary.ca/events-and-programs/programs/astro-pi-send-your-code-into-orbit/', 0, NULL, N'Code a program in Python. Your message will reach the International Space Station! Please use your laptop or desktop computer as the website may not work with a tablet or phone.', CAST(N'2020-11-23T21:46:36.1511967' AS DateTime2), 65, 0, NULL, 18, N'Code a program in Python', 1, 2, 1, N'Astro Pi: Send Your Code into Orbit!', N'', 109, 0, 0)
INSERT [dbo].[VendorPrograms] ([Id], [VendorId], [RegistrationStartDate], [RegistrationEndDate], [Gender], [Requirements], [RegistrationLink], [Status], [Discount], [Description], [AddedDate], [MaximumAge], [MinimumAge], [Policy], [ProgramImageId], [ProgramName], [DeliveryTypeId], [ProgramCategoryId], [ProgramTypeId], [Headline], [Requirments], [CityId], [RatingAverage], [Price]) VALUES (73, 51, CAST(N'2020-11-23T00:00:00.0000000' AS DateTime2), CAST(N'2020-11-30T00:00:00.0000000' AS DateTime2), NULL, N'None', N'www.calgarylibrary.ca/events-and-programs/programs/baby-rhyme-time/', 0, NULL, N'Baby Rhyme Time', CAST(N'2020-11-23T21:48:51.6827830' AS DateTime2), 1, 0, NULL, 20, N'Welcome your baby to the Library.', 1, 1, 4, N'Enjoy songs, rhymes, and stories !', N'', 1, 0, 0)
INSERT [dbo].[VendorPrograms] ([Id], [VendorId], [RegistrationStartDate], [RegistrationEndDate], [Gender], [Requirements], [RegistrationLink], [Status], [Discount], [Description], [AddedDate], [MaximumAge], [MinimumAge], [Policy], [ProgramImageId], [ProgramName], [DeliveryTypeId], [ProgramCategoryId], [ProgramTypeId], [Headline], [Requirments], [CityId], [RatingAverage], [Price]) VALUES (74, 51, CAST(N'2020-11-24T00:00:00.0000000' AS DateTime2), CAST(N'2020-12-01T00:00:00.0000000' AS DateTime2), NULL, N'The kits will be available for pick-up from the library before the start of the program.', N'www.calgarylibrary.ca/events-and-programs/programs/candy-chemistry/', 0, NULL, N'Discover the science hiding in Skittles. Explore buoyancy, reactivity, and the odds of finding your favorite color. Each participant will be provided with a science kit containing the materials needed for a hands-on science adventure.', CAST(N'2020-11-23T21:51:29.2198933' AS DateTime2), 12, 8, NULL, 3, N'Discover the science hiding in Skittles.', 1, 1, 1, N'Candy Chemistry, How sweet it is!', N'', 1, 0, 0)
INSERT [dbo].[VendorPrograms] ([Id], [VendorId], [RegistrationStartDate], [RegistrationEndDate], [Gender], [Requirements], [RegistrationLink], [Status], [Discount], [Description], [AddedDate], [MaximumAge], [MinimumAge], [Policy], [ProgramImageId], [ProgramName], [DeliveryTypeId], [ProgramCategoryId], [ProgramTypeId], [Headline], [Requirments], [CityId], [RatingAverage], [Price]) VALUES (76, 48, CAST(N'2020-11-25T00:00:00.0000000' AS DateTime2), CAST(N'2020-11-25T00:00:00.0000000' AS DateTime2), NULL, N'SwimSuit ', N'www.ymca.com', 0, NULL, N'Swimming Lessons', CAST(N'2020-11-24T10:10:54.5442493' AS DateTime2), 15, 5, NULL, 137, N'Swimming Classes', 2, 2, 116, N'Youth Swimming Lessons Fun!!', N'', 109, 0, 0)
SET IDENTITY_INSERT [dbo].[VendorPrograms] OFF
GO
SET IDENTITY_INSERT [dbo].[Vendors] ON 

INSERT [dbo].[Vendors] ([Id], [Phone], [PostalCode], [Municipality], [Name], [Province], [StreetName], [UnitNumber], [ApplicationUserId]) VALUES (48, N'403-555-5555', N'T2N2G5', N'', N'YMCA Calgary', N'', N'123 MAin St.', NULL, N'a5bd6fbd-e9d6-4bf5-b6db-b6fad560f1f1')
INSERT [dbo].[Vendors] ([Id], [Phone], [PostalCode], [Municipality], [Name], [Province], [StreetName], [UnitNumber], [ApplicationUserId]) VALUES (49, N'403-555-5555', N'T2H0T7', N'', N'Fencing Academy of Calgary', N'', N'123 Man St.', NULL, N'e17134fa-88c8-4d2d-bc7b-b5b741802c08')
INSERT [dbo].[Vendors] ([Id], [Phone], [PostalCode], [Municipality], [Name], [Province], [StreetName], [UnitNumber], [ApplicationUserId]) VALUES (50, N'403.220.7749', N'T2H0T7', N'', N'University of Calgary', N'', N'123 University Drive NW', NULL, N'd0158313-152b-4e86-8302-d4c35a02060f')
INSERT [dbo].[Vendors] ([Id], [Phone], [PostalCode], [Municipality], [Name], [Province], [StreetName], [UnitNumber], [ApplicationUserId]) VALUES (51, N'4038377400', N't3c0n3', N'', N'Calgary Library', N'', N'1613 11 ave sw, 203', NULL, N'effa8ef3-1e52-4147-a7eb-6dc8b04f3898')
SET IDENTITY_INSERT [dbo].[Vendors] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 2020-11-27 9:21:08 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 2020-11-27 9:21:08 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 2020-11-27 9:21:08 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 2020-11-27 9:21:08 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 2020-11-27 9:21:08 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 2020-11-27 9:21:08 AM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 2020-11-27 9:21:08 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Events_ProgramScheduleId]    Script Date: 2020-11-27 9:21:08 AM ******/
CREATE NONCLUSTERED INDEX [IX_Events_ProgramScheduleId] ON [dbo].[Events]
(
	[ProgramScheduleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Events_VendorProgramId]    Script Date: 2020-11-27 9:21:08 AM ******/
CREATE NONCLUSTERED INDEX [IX_Events_VendorProgramId] ON [dbo].[Events]
(
	[VendorProgramId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_ParentClickRedirections_ApplicationUserId]    Script Date: 2020-11-27 9:21:08 AM ******/
CREATE NONCLUSTERED INDEX [IX_ParentClickRedirections_ApplicationUserId] ON [dbo].[ParentClickRedirections]
(
	[ApplicationUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ParentClickRedirections_VendorProgramId]    Script Date: 2020-11-27 9:21:08 AM ******/
CREATE NONCLUSTERED INDEX [IX_ParentClickRedirections_VendorProgramId] ON [dbo].[ParentClickRedirections]
(
	[VendorProgramId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_ParentFeedbacks_ApplicationUserId]    Script Date: 2020-11-27 9:21:08 AM ******/
CREATE NONCLUSTERED INDEX [IX_ParentFeedbacks_ApplicationUserId] ON [dbo].[ParentFeedbacks]
(
	[ApplicationUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ParentFeedbacks_VendorProgramId]    Script Date: 2020-11-27 9:21:08 AM ******/
CREATE NONCLUSTERED INDEX [IX_ParentFeedbacks_VendorProgramId] ON [dbo].[ParentFeedbacks]
(
	[VendorProgramId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_ParentProgramInterests_ApplicationUserId]    Script Date: 2020-11-27 9:21:08 AM ******/
CREATE NONCLUSTERED INDEX [IX_ParentProgramInterests_ApplicationUserId] ON [dbo].[ParentProgramInterests]
(
	[ApplicationUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ParentProgramInterests_VendorProgramId]    Script Date: 2020-11-27 9:21:08 AM ******/
CREATE NONCLUSTERED INDEX [IX_ParentProgramInterests_VendorProgramId] ON [dbo].[ParentProgramInterests]
(
	[VendorProgramId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ProgramLocations_ProgramProvinceId]    Script Date: 2020-11-27 9:21:08 AM ******/
CREATE NONCLUSTERED INDEX [IX_ProgramLocations_ProgramProvinceId] ON [dbo].[ProgramLocations]
(
	[ProgramProvinceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ProgramProvinces_ProgramCountryId]    Script Date: 2020-11-27 9:21:08 AM ******/
CREATE NONCLUSTERED INDEX [IX_ProgramProvinces_ProgramCountryId] ON [dbo].[ProgramProvinces]
(
	[ProgramCountryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ProgramSchedules_VendorProgramId]    Script Date: 2020-11-27 9:21:08 AM ******/
CREATE NONCLUSTERED INDEX [IX_ProgramSchedules_VendorProgramId] ON [dbo].[ProgramSchedules]
(
	[VendorProgramId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_VendorPrograms_DeliveryTypeId]    Script Date: 2020-11-27 9:21:08 AM ******/
CREATE NONCLUSTERED INDEX [IX_VendorPrograms_DeliveryTypeId] ON [dbo].[VendorPrograms]
(
	[DeliveryTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_VendorPrograms_ProgramCategoryId]    Script Date: 2020-11-27 9:21:08 AM ******/
CREATE NONCLUSTERED INDEX [IX_VendorPrograms_ProgramCategoryId] ON [dbo].[VendorPrograms]
(
	[ProgramCategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_VendorPrograms_ProgramImageId]    Script Date: 2020-11-27 9:21:08 AM ******/
CREATE NONCLUSTERED INDEX [IX_VendorPrograms_ProgramImageId] ON [dbo].[VendorPrograms]
(
	[ProgramImageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_VendorPrograms_ProgramTypeId]    Script Date: 2020-11-27 9:21:08 AM ******/
CREATE NONCLUSTERED INDEX [IX_VendorPrograms_ProgramTypeId] ON [dbo].[VendorPrograms]
(
	[ProgramTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_VendorPrograms_VendorId]    Script Date: 2020-11-27 9:21:08 AM ******/
CREATE NONCLUSTERED INDEX [IX_VendorPrograms_VendorId] ON [dbo].[VendorPrograms]
(
	[VendorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Vendors_ApplicationUserId]    Script Date: 2020-11-27 9:21:08 AM ******/
CREATE NONCLUSTERED INDEX [IX_Vendors_ApplicationUserId] ON [dbo].[Vendors]
(
	[ApplicationUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetUsers] ADD  DEFAULT ('0001-01-01T00:00:00.0000000') FOR [SignUpDate]
GO
ALTER TABLE [dbo].[ProgramLocations] ADD  DEFAULT (N'') FOR [Country]
GO
ALTER TABLE [dbo].[ProgramLocations] ADD  DEFAULT ((0)) FOR [ProgramProvinceId]
GO
ALTER TABLE [dbo].[VendorPrograms] ADD  CONSTRAINT [DF__VendorPro__Added__534D60F1]  DEFAULT ('0001-01-01T00:00:00.0000000') FOR [AddedDate]
GO
ALTER TABLE [dbo].[VendorPrograms] ADD  CONSTRAINT [DF__VendorPro__Minim__5629CD9C]  DEFAULT ((0)) FOR [MinimumAge]
GO
ALTER TABLE [dbo].[VendorPrograms] ADD  CONSTRAINT [DF__VendorPro__Progr__571DF1D5]  DEFAULT (N'') FOR [ProgramName]
GO
ALTER TABLE [dbo].[VendorPrograms] ADD  CONSTRAINT [DF__VendorPro__Deliv__7B5B524B]  DEFAULT ((0)) FOR [DeliveryTypeId]
GO
ALTER TABLE [dbo].[VendorPrograms] ADD  CONSTRAINT [DF__VendorPro__Progr__7C4F7684]  DEFAULT ((0)) FOR [ProgramCategoryId]
GO
ALTER TABLE [dbo].[VendorPrograms] ADD  CONSTRAINT [DF__VendorPro__Progr__7D439ABD]  DEFAULT ((0)) FOR [ProgramTypeId]
GO
ALTER TABLE [dbo].[VendorPrograms] ADD  CONSTRAINT [DF__VendorPro__Requi__42E1EEFE]  DEFAULT (N'') FOR [Requirments]
GO
ALTER TABLE [dbo].[VendorPrograms] ADD  DEFAULT ((0)) FOR [RatingAverage]
GO
ALTER TABLE [dbo].[Vendors] ADD  DEFAULT (N'') FOR [Municipality]
GO
ALTER TABLE [dbo].[Vendors] ADD  DEFAULT (N'') FOR [Name]
GO
ALTER TABLE [dbo].[Vendors] ADD  DEFAULT (N'') FOR [Province]
GO
ALTER TABLE [dbo].[Vendors] ADD  DEFAULT (N'') FOR [StreetName]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Cities]  WITH CHECK ADD  CONSTRAINT [FK_Cities_Provinces] FOREIGN KEY([ProvinceId])
REFERENCES [dbo].[Provinces] ([ProvinceId])
GO
ALTER TABLE [dbo].[Cities] CHECK CONSTRAINT [FK_Cities_Provinces]
GO
ALTER TABLE [dbo].[Events]  WITH CHECK ADD  CONSTRAINT [FK_Events_ProgramSchedules_ProgramScheduleId] FOREIGN KEY([ProgramScheduleId])
REFERENCES [dbo].[ProgramSchedules] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Events] CHECK CONSTRAINT [FK_Events_ProgramSchedules_ProgramScheduleId]
GO
ALTER TABLE [dbo].[Events]  WITH CHECK ADD  CONSTRAINT [FK_Events_VendorPrograms_VendorProgramId] FOREIGN KEY([VendorProgramId])
REFERENCES [dbo].[VendorPrograms] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Events] CHECK CONSTRAINT [FK_Events_VendorPrograms_VendorProgramId]
GO
ALTER TABLE [dbo].[ParentClickRedirections]  WITH CHECK ADD  CONSTRAINT [FK_ParentClickRedirections_AspNetUsers_ApplicationUserId] FOREIGN KEY([ApplicationUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[ParentClickRedirections] CHECK CONSTRAINT [FK_ParentClickRedirections_AspNetUsers_ApplicationUserId]
GO
ALTER TABLE [dbo].[ParentClickRedirections]  WITH CHECK ADD  CONSTRAINT [FK_ParentClickRedirections_VendorPrograms_VendorProgramId] FOREIGN KEY([VendorProgramId])
REFERENCES [dbo].[VendorPrograms] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ParentClickRedirections] CHECK CONSTRAINT [FK_ParentClickRedirections_VendorPrograms_VendorProgramId]
GO
ALTER TABLE [dbo].[ParentFeedbacks]  WITH NOCHECK ADD  CONSTRAINT [FK_ParentFeedbacks_AspNetUsers_ApplicationUserId] FOREIGN KEY([ApplicationUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[ParentFeedbacks] CHECK CONSTRAINT [FK_ParentFeedbacks_AspNetUsers_ApplicationUserId]
GO
ALTER TABLE [dbo].[ParentFeedbacks]  WITH CHECK ADD  CONSTRAINT [FK_ParentFeedbacks_VendorPrograms_VendorProgramId] FOREIGN KEY([VendorProgramId])
REFERENCES [dbo].[VendorPrograms] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ParentFeedbacks] CHECK CONSTRAINT [FK_ParentFeedbacks_VendorPrograms_VendorProgramId]
GO
ALTER TABLE [dbo].[ParentProgramInterests]  WITH CHECK ADD  CONSTRAINT [FK_ParentProgramInterests_AspNetUsers_ApplicationUserId] FOREIGN KEY([ApplicationUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[ParentProgramInterests] CHECK CONSTRAINT [FK_ParentProgramInterests_AspNetUsers_ApplicationUserId]
GO
ALTER TABLE [dbo].[ParentProgramInterests]  WITH CHECK ADD  CONSTRAINT [FK_ParentProgramInterests_VendorPrograms_VendorProgramId] FOREIGN KEY([VendorProgramId])
REFERENCES [dbo].[VendorPrograms] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ParentProgramInterests] CHECK CONSTRAINT [FK_ParentProgramInterests_VendorPrograms_VendorProgramId]
GO
ALTER TABLE [dbo].[ProgramLocations]  WITH CHECK ADD  CONSTRAINT [FK_ProgramLocations_ProgramProvinces_ProgramProvinceId] FOREIGN KEY([ProgramProvinceId])
REFERENCES [dbo].[ProgramProvinces] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProgramLocations] CHECK CONSTRAINT [FK_ProgramLocations_ProgramProvinces_ProgramProvinceId]
GO
ALTER TABLE [dbo].[ProgramProvinces]  WITH CHECK ADD  CONSTRAINT [FK_ProgramProvinces_ProgramCountries_ProgramCountryId] FOREIGN KEY([ProgramCountryId])
REFERENCES [dbo].[ProgramCountries] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProgramProvinces] CHECK CONSTRAINT [FK_ProgramProvinces_ProgramCountries_ProgramCountryId]
GO
ALTER TABLE [dbo].[ProgramSchedules]  WITH CHECK ADD  CONSTRAINT [FK_ProgramSchedules_VendorPrograms_VendorProgramId] FOREIGN KEY([VendorProgramId])
REFERENCES [dbo].[VendorPrograms] ([Id])
GO
ALTER TABLE [dbo].[ProgramSchedules] CHECK CONSTRAINT [FK_ProgramSchedules_VendorPrograms_VendorProgramId]
GO
ALTER TABLE [dbo].[Provinces]  WITH CHECK ADD  CONSTRAINT [FK_Provinces_Countries] FOREIGN KEY([CountryId])
REFERENCES [dbo].[Countries] ([CountryId])
GO
ALTER TABLE [dbo].[Provinces] CHECK CONSTRAINT [FK_Provinces_Countries]
GO
ALTER TABLE [dbo].[VendorPrograms]  WITH CHECK ADD  CONSTRAINT [FK_VendorPrograms_Cities] FOREIGN KEY([CityId])
REFERENCES [dbo].[Cities] ([CityId])
GO
ALTER TABLE [dbo].[VendorPrograms] CHECK CONSTRAINT [FK_VendorPrograms_Cities]
GO
ALTER TABLE [dbo].[VendorPrograms]  WITH CHECK ADD  CONSTRAINT [FK_VendorPrograms_DeliveryTypes_DeliveryTypeId] FOREIGN KEY([DeliveryTypeId])
REFERENCES [dbo].[DeliveryTypes] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[VendorPrograms] CHECK CONSTRAINT [FK_VendorPrograms_DeliveryTypes_DeliveryTypeId]
GO
ALTER TABLE [dbo].[VendorPrograms]  WITH CHECK ADD  CONSTRAINT [FK_VendorPrograms_ProgramCategories_ProgramCategoryId] FOREIGN KEY([ProgramCategoryId])
REFERENCES [dbo].[ProgramCategories] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[VendorPrograms] CHECK CONSTRAINT [FK_VendorPrograms_ProgramCategories_ProgramCategoryId]
GO
ALTER TABLE [dbo].[VendorPrograms]  WITH CHECK ADD  CONSTRAINT [FK_VendorPrograms_ProgramImages_ProgramImageId] FOREIGN KEY([ProgramImageId])
REFERENCES [dbo].[ProgramImages] ([Id])
GO
ALTER TABLE [dbo].[VendorPrograms] CHECK CONSTRAINT [FK_VendorPrograms_ProgramImages_ProgramImageId]
GO
ALTER TABLE [dbo].[VendorPrograms]  WITH CHECK ADD  CONSTRAINT [FK_VendorPrograms_ProgramTypes_ProgramTypeId] FOREIGN KEY([ProgramTypeId])
REFERENCES [dbo].[ProgramTypes] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[VendorPrograms] CHECK CONSTRAINT [FK_VendorPrograms_ProgramTypes_ProgramTypeId]
GO
ALTER TABLE [dbo].[VendorPrograms]  WITH CHECK ADD  CONSTRAINT [FK_VendorPrograms_Vendors_VendorId] FOREIGN KEY([VendorId])
REFERENCES [dbo].[Vendors] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[VendorPrograms] CHECK CONSTRAINT [FK_VendorPrograms_Vendors_VendorId]
GO
ALTER TABLE [dbo].[Vendors]  WITH CHECK ADD  CONSTRAINT [FK_Vendors_AspNetUsers_ApplicationUserId] FOREIGN KEY([ApplicationUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Vendors] CHECK CONSTRAINT [FK_Vendors_AspNetUsers_ApplicationUserId]
GO
/****** Object:  StoredProcedure [dbo].[DeleteOnSchedule]    Script Date: 2020-11-27 9:21:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeleteOnSchedule]
AS
BEGIN
  DELETE [dbo].[VendorPrograms]
  WHERE [RegistrationEndDate] <= CURRENT_TIMESTAMP;
END
GO
USE [master]
GO
ALTER DATABASE [SpikeBee] SET  READ_WRITE 
GO
