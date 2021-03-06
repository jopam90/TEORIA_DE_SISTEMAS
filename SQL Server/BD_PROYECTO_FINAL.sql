USE [master]
GO
/****** Object:  Database [SERVICE_DESK]    Script Date: 13/08/2016 12:48:41 a.m. ******/
CREATE DATABASE [SERVICE_DESK]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SERVICE_DESK', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS2012\MSSQL\DATA\SERVICE_DESK.mdf' , SIZE = 4160KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'SERVICE_DESK_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS2012\MSSQL\DATA\SERVICE_DESK_log.ldf' , SIZE = 1040KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [SERVICE_DESK] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SERVICE_DESK].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SERVICE_DESK] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SERVICE_DESK] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SERVICE_DESK] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SERVICE_DESK] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SERVICE_DESK] SET ARITHABORT OFF 
GO
ALTER DATABASE [SERVICE_DESK] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [SERVICE_DESK] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [SERVICE_DESK] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SERVICE_DESK] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SERVICE_DESK] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SERVICE_DESK] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SERVICE_DESK] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SERVICE_DESK] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SERVICE_DESK] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SERVICE_DESK] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SERVICE_DESK] SET  ENABLE_BROKER 
GO
ALTER DATABASE [SERVICE_DESK] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SERVICE_DESK] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SERVICE_DESK] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SERVICE_DESK] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SERVICE_DESK] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SERVICE_DESK] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SERVICE_DESK] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SERVICE_DESK] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [SERVICE_DESK] SET  MULTI_USER 
GO
ALTER DATABASE [SERVICE_DESK] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SERVICE_DESK] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SERVICE_DESK] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SERVICE_DESK] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [SERVICE_DESK]
GO
/****** Object:  Table [dbo].[CATEGORIA]    Script Date: 13/08/2016 12:48:41 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CATEGORIA](
	[COD_CATEGORIA] [int] NOT NULL,
	[DESCRIPCION] [varchar](500) NULL,
	[FEC_INGRESO] [date] NULL,
	[COD_PERSONA] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[COD_CATEGORIA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PERSONA]    Script Date: 13/08/2016 12:48:42 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PERSONA](
	[COD_PERSONA] [int] NOT NULL,
	[NUM_ID] [varchar](30) NULL,
	[NOMBRE] [varchar](100) NULL,
	[APE1] [varchar](100) NULL,
	[APE2] [varchar](100) NULL,
	[CORREO] [varchar](100) NULL,
	[COD_TIPO_CLIENTE] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[COD_PERSONA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SEVERIDADES]    Script Date: 13/08/2016 12:48:42 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SEVERIDADES](
	[ID_SEVERIDAD] [int] NOT NULL,
	[DESC_TIPO_SEVERIDAD] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_SEVERIDAD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SUB_CATEGORIA]    Script Date: 13/08/2016 12:48:42 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SUB_CATEGORIA](
	[COD_SUB_CATEGORIA] [int] NOT NULL,
	[COD_CATEGORIA] [int] NOT NULL,
	[DESCRIPCION] [varchar](500) NULL,
	[FEC_INGRESO] [date] NULL,
	[COD_PERSONA] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[COD_SUB_CATEGORIA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TIPO_CLIENTE]    Script Date: 13/08/2016 12:48:42 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TIPO_CLIENTE](
	[COD_TIPO_CLIENTE] [int] NOT NULL,
	[DESC_TIPO_CLIENTE] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[COD_TIPO_CLIENTE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TIPO_TIQUETE]    Script Date: 13/08/2016 12:48:42 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TIPO_TIQUETE](
	[ID_TIPO_TIQUETE] [int] NOT NULL,
	[DESC_TIPO_TIQUETE] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_TIPO_TIQUETE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TIQUETE]    Script Date: 13/08/2016 12:48:42 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TIQUETE](
	[ID_TIQUETE] [int] NOT NULL,
	[ESTADO] [varchar](5) NULL,
	[FEC_INGRESO] [date] NULL,
	[FEC_MODIFICACION] [date] NULL,
	[DESCRIPCION] [varchar](1000) NULL,
	[ID_SEVERIDAD] [int] NOT NULL,
	[COD_CATEGORIA] [int] NOT NULL,
	[COD_SUB_CATEGORIA] [int] NOT NULL,
	[COD_PERSONA] [int] NOT NULL,
	[ID_TIPO_TIQUETE] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_TIQUETE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[USUARIO]    Script Date: 13/08/2016 12:48:42 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[USUARIO](
	[CONSECUTIVO_USUARIO] [int] NOT NULL,
	[NOM_USUARIO] [varchar](100) NULL,
	[CONTRASENNA] [varchar](100) NULL,
	[COD_PERSONA] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CONSECUTIVO_USUARIO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[CATEGORIA]  WITH CHECK ADD  CONSTRAINT [FK_PERSONA_INCLUYE] FOREIGN KEY([COD_PERSONA])
REFERENCES [dbo].[PERSONA] ([COD_PERSONA])
GO
ALTER TABLE [dbo].[CATEGORIA] CHECK CONSTRAINT [FK_PERSONA_INCLUYE]
GO
ALTER TABLE [dbo].[PERSONA]  WITH CHECK ADD  CONSTRAINT [FK_TIPO_CLIENTE] FOREIGN KEY([COD_TIPO_CLIENTE])
REFERENCES [dbo].[TIPO_CLIENTE] ([COD_TIPO_CLIENTE])
GO
ALTER TABLE [dbo].[PERSONA] CHECK CONSTRAINT [FK_TIPO_CLIENTE]
GO
ALTER TABLE [dbo].[SUB_CATEGORIA]  WITH CHECK ADD  CONSTRAINT [FK_CATEGORIA] FOREIGN KEY([COD_CATEGORIA])
REFERENCES [dbo].[CATEGORIA] ([COD_CATEGORIA])
GO
ALTER TABLE [dbo].[SUB_CATEGORIA] CHECK CONSTRAINT [FK_CATEGORIA]
GO
ALTER TABLE [dbo].[SUB_CATEGORIA]  WITH CHECK ADD  CONSTRAINT [FK_PERSONA_INCLUYE_SUB] FOREIGN KEY([COD_PERSONA])
REFERENCES [dbo].[PERSONA] ([COD_PERSONA])
GO
ALTER TABLE [dbo].[SUB_CATEGORIA] CHECK CONSTRAINT [FK_PERSONA_INCLUYE_SUB]
GO
ALTER TABLE [dbo].[TIQUETE]  WITH CHECK ADD  CONSTRAINT [FK_CATEGORIA_TIQUETE] FOREIGN KEY([COD_CATEGORIA])
REFERENCES [dbo].[CATEGORIA] ([COD_CATEGORIA])
GO
ALTER TABLE [dbo].[TIQUETE] CHECK CONSTRAINT [FK_CATEGORIA_TIQUETE]
GO
ALTER TABLE [dbo].[TIQUETE]  WITH CHECK ADD  CONSTRAINT [FK_PERSONA_TIQUETE] FOREIGN KEY([COD_PERSONA])
REFERENCES [dbo].[PERSONA] ([COD_PERSONA])
GO
ALTER TABLE [dbo].[TIQUETE] CHECK CONSTRAINT [FK_PERSONA_TIQUETE]
GO
ALTER TABLE [dbo].[TIQUETE]  WITH CHECK ADD  CONSTRAINT [FK_SEVERIDAD] FOREIGN KEY([ID_SEVERIDAD])
REFERENCES [dbo].[SEVERIDADES] ([ID_SEVERIDAD])
GO
ALTER TABLE [dbo].[TIQUETE] CHECK CONSTRAINT [FK_SEVERIDAD]
GO
ALTER TABLE [dbo].[TIQUETE]  WITH CHECK ADD  CONSTRAINT [FK_SUB_CATEGORIA_TIQUETE] FOREIGN KEY([COD_SUB_CATEGORIA])
REFERENCES [dbo].[SUB_CATEGORIA] ([COD_SUB_CATEGORIA])
GO
ALTER TABLE [dbo].[TIQUETE] CHECK CONSTRAINT [FK_SUB_CATEGORIA_TIQUETE]
GO
ALTER TABLE [dbo].[TIQUETE]  WITH CHECK ADD  CONSTRAINT [FK_TIPO_TIQUETE] FOREIGN KEY([ID_TIPO_TIQUETE])
REFERENCES [dbo].[TIPO_TIQUETE] ([ID_TIPO_TIQUETE])
GO
ALTER TABLE [dbo].[TIQUETE] CHECK CONSTRAINT [FK_TIPO_TIQUETE]
GO
ALTER TABLE [dbo].[USUARIO]  WITH CHECK ADD  CONSTRAINT [FK_PERSONA_USUARIO] FOREIGN KEY([COD_PERSONA])
REFERENCES [dbo].[PERSONA] ([COD_PERSONA])
GO
ALTER TABLE [dbo].[USUARIO] CHECK CONSTRAINT [FK_PERSONA_USUARIO]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Codigo de la categoria' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CATEGORIA', @level2type=N'COLUMN',@level2name=N'COD_CATEGORIA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Descripcion de la categoria' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CATEGORIA', @level2type=N'COLUMN',@level2name=N'DESCRIPCION'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha de ingreso de la categoria' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CATEGORIA', @level2type=N'COLUMN',@level2name=N'FEC_INGRESO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Codigo de la persona que ingreso la categoria' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CATEGORIA', @level2type=N'COLUMN',@level2name=N'COD_PERSONA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Codigo de persona' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PERSONA', @level2type=N'COLUMN',@level2name=N'COD_PERSONA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Numero de identificacion de la persona' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PERSONA', @level2type=N'COLUMN',@level2name=N'NUM_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nombre completo de la persona' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PERSONA', @level2type=N'COLUMN',@level2name=N'NOMBRE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Primero Apellido' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PERSONA', @level2type=N'COLUMN',@level2name=N'APE1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Segundo Apellido' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PERSONA', @level2type=N'COLUMN',@level2name=N'APE2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Correo electronico de la persona' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PERSONA', @level2type=N'COLUMN',@level2name=N'CORREO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Codigo del tipo de cliente' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PERSONA', @level2type=N'COLUMN',@level2name=N'COD_TIPO_CLIENTE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Codigo de severidad' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SEVERIDADES', @level2type=N'COLUMN',@level2name=N'ID_SEVERIDAD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Descripcion de la severidad' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SEVERIDADES', @level2type=N'COLUMN',@level2name=N'DESC_TIPO_SEVERIDAD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Codigo de la subcategoria' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SUB_CATEGORIA', @level2type=N'COLUMN',@level2name=N'COD_SUB_CATEGORIA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'COdigo de la categoria padre' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SUB_CATEGORIA', @level2type=N'COLUMN',@level2name=N'COD_CATEGORIA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Descripcion de la subcategoria' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SUB_CATEGORIA', @level2type=N'COLUMN',@level2name=N'DESCRIPCION'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha de ingreso de la subcategoria' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SUB_CATEGORIA', @level2type=N'COLUMN',@level2name=N'FEC_INGRESO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Codigo de la persona que ingreso la subcategoria' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SUB_CATEGORIA', @level2type=N'COLUMN',@level2name=N'COD_PERSONA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Codigo del tipo de cliente' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TIPO_CLIENTE', @level2type=N'COLUMN',@level2name=N'COD_TIPO_CLIENTE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Descripcion del tipo de cliente' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TIPO_CLIENTE', @level2type=N'COLUMN',@level2name=N'DESC_TIPO_CLIENTE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Codigo de tipo de tiquete' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TIPO_TIQUETE', @level2type=N'COLUMN',@level2name=N'ID_TIPO_TIQUETE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Descripcion del tipo de tiquete' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TIPO_TIQUETE', @level2type=N'COLUMN',@level2name=N'DESC_TIPO_TIQUETE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador de tiquete' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TIQUETE', @level2type=N'COLUMN',@level2name=N'ID_TIQUETE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Estado del tiquete' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TIQUETE', @level2type=N'COLUMN',@level2name=N'ESTADO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha de ingreso del tiquete' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TIQUETE', @level2type=N'COLUMN',@level2name=N'FEC_INGRESO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha de modificacion del tiquete' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TIQUETE', @level2type=N'COLUMN',@level2name=N'FEC_MODIFICACION'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Descripcion del problema' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TIQUETE', @level2type=N'COLUMN',@level2name=N'DESCRIPCION'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Codigo de severidad' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TIQUETE', @level2type=N'COLUMN',@level2name=N'ID_SEVERIDAD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Codigo de la categoria' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TIQUETE', @level2type=N'COLUMN',@level2name=N'COD_CATEGORIA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Codigo de la subcategoria' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TIQUETE', @level2type=N'COLUMN',@level2name=N'COD_SUB_CATEGORIA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Codigo de persona' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TIQUETE', @level2type=N'COLUMN',@level2name=N'COD_PERSONA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Codigo de tipo de tiquete' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TIQUETE', @level2type=N'COLUMN',@level2name=N'ID_TIPO_TIQUETE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Consecutivo de usuario' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'USUARIO', @level2type=N'COLUMN',@level2name=N'CONSECUTIVO_USUARIO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nombre de usuario' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'USUARIO', @level2type=N'COLUMN',@level2name=N'NOM_USUARIO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Contrasenna del usuario' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'USUARIO', @level2type=N'COLUMN',@level2name=N'CONTRASENNA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Codigo de persona' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'USUARIO', @level2type=N'COLUMN',@level2name=N'COD_PERSONA'
GO
USE [master]
GO
ALTER DATABASE [SERVICE_DESK] SET  READ_WRITE 
GO
