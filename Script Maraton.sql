/*Si  al intentar eliminar la tira error tira error  because it is currently in use.

Escribir sp_who2 , seleccionar la instruccion y presionar F5.

Buscar el SPID de DBName los que se llamen Maraton.

Luego hacer kill SPID (el numero) y ejecutar esa instruccion. Lo que hace es matar la utilizacion de la BDD, ponele. 

*/


USE master
GO

DROP DATABASE Maraton
GO

CREATE DATABASE Maraton
GO

USE Maraton
GO

/****** Object:  Table [dbo].[Maraton]    Script Date: 06/11/2015 13:37:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Maraton](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](25) NOT NULL,
	[Cant_Participantes] [int] NOT NULL,
	[Fecha] [date] NOT NULL,
	[Lugar_Salida] [varchar](50) NOT NULL,
	[Cant_Lista_Espera] [int] NOT NULL,
	[Premio_Uno] [decimal](18, 2) NOT NULL,
	[Premio_Dos] [decimal](18, 2) NOT NULL,
	[Premio_Tres] [decimal](18, 2) NOT NULL,
	[Km] [numeric](3, 0) NOT NULL,
 CONSTRAINT [PK_Maraton] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Maraton_Usuario]    Script Date: 06/11/2015 13:37:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Maraton_Usuario](
	[MaratonID] [int] NOT NULL,
	[UsuarioID] [int] NOT NULL,
	[Lista_Espera] [bit] NOT NULL,
	[Tiempo_Llegada] [time](2) NULL,
	[Presente] [bit] NULL,
	[Abandono] [bit] NULL,
	[Posicion] [int] NULL,

 CONSTRAINT [PK_Maraton_Usuario] PRIMARY KEY CLUSTERED 
(
	[MaratonID] ASC,
	[UsuarioID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 06/11/2015 13:37:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Usuario](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](30) NOT NULL,
	[Apellido] [varchar](35) NOT NULL,
	[Clave] [varchar](12) NOT NULL,
	[Email] [varchar](100) NOT NULL,
	[Fecha_Nacimiento] [datetime] NULL,
	[Residencia] [varchar](50) NOT NULL,
	[Administrador] [bit] NOT NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[Maraton_Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Maraton_Usuario_Maraton] FOREIGN KEY([MaratonID])
REFERENCES [dbo].[Maraton] ([ID])
GO
ALTER TABLE [dbo].[Maraton_Usuario] CHECK CONSTRAINT [FK_Maraton_Usuario_Maraton]
GO
ALTER TABLE [dbo].[Maraton_Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Maraton_Usuario_Usuario] FOREIGN KEY([UsuarioID])
REFERENCES [dbo].[Usuario] ([ID])
GO
ALTER TABLE [dbo].[Maraton_Usuario] CHECK CONSTRAINT [FK_Maraton_Usuario_Usuario]
GO


