USE [master]
GO

/****** Object:  Database [CarsSales]    Script Date: 3/27/2024 8:52:40 PM ******/
CREATE DATABASE [CarsSales]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CarsSales', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\CarsSales.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'CarsSales_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\CarsSales_log.ldf' , SIZE = 73728KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CarsSales].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [CarsSales] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [CarsSales] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [CarsSales] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [CarsSales] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [CarsSales] SET ARITHABORT OFF 
GO

ALTER DATABASE [CarsSales] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [CarsSales] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [CarsSales] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [CarsSales] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [CarsSales] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [CarsSales] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [CarsSales] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [CarsSales] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [CarsSales] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [CarsSales] SET  DISABLE_BROKER 
GO

ALTER DATABASE [CarsSales] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [CarsSales] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [CarsSales] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [CarsSales] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [CarsSales] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [CarsSales] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [CarsSales] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [CarsSales] SET RECOVERY FULL 
GO

ALTER DATABASE [CarsSales] SET  MULTI_USER 
GO

ALTER DATABASE [CarsSales] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [CarsSales] SET DB_CHAINING OFF 
GO

ALTER DATABASE [CarsSales] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [CarsSales] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [CarsSales] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [CarsSales] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO

ALTER DATABASE [CarsSales] SET QUERY_STORE = OFF
GO

ALTER DATABASE [CarsSales] SET  READ_WRITE 
GO

