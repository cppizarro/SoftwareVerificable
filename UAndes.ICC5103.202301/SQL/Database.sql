Create Database InscripcionesBrDb
GO

USE [InscripcionesBrDb]
GO

CREATE TABLE [dbo].[Persona](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Rut] [nvarchar](10) NULL,
	[Nombre] [nvarchar](50) NOT NULL,
	[FechaNacimiento] [date] NOT NULL,
	[Email] [nchar](50) NOT NULL,
	[Dirección] [nchar](50) NULL,
 CONSTRAINT [PK_Persona] PRIMARY KEY CLUSTERED(
	[Id] ASC
))
GO

CREATE TABLE [dbo].[RealStateForm] (
    [Id]                INT           NOT NULL,
    [attentionNumber]   INT           NOT NULL,
    [natureOfTheDeed]   BIT           NOT NULL,
    [commune]           VARCHAR (MAX) NOT NULL,
    [block]             VARCHAR (MAX) NOT NULL,
    [property]          VARCHAR (MAX) NOT NULL,
    [sheets]            INT           NOT NULL,
    [inscriptionDate]   DATE          NOT NULL,
    [inscriptionNumber] INT           NOT NULL,
    PRIMARY KEY CLUSTERED ([attentionNumber] ASC))
GO

CREATE TABLE [dbo].[People]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [rut] NCHAR(10) NULL, 
    [ownershipPercentage] FLOAT NULL, 
    [uncreditedOwnership] BIT NULL
)



USE [InscripcionesBrDb]
GO
SET IDENTITY_INSERT [dbo].[Persona] ON 
GO
INSERT [dbo].[Persona] ([Id], [Rut], [Nombre], [FechaNacimiento], [Email], [Dirección]) VALUES (1, N'10915348-6', N'Mario Abellan', CAST(N'1982-01-15' AS Date), N'marioabellan@gmail.com                            ', N'Galvarino Gallardo 1534                           ')
GO
SET IDENTITY_INSERT [dbo].[Persona] OFF
GO




