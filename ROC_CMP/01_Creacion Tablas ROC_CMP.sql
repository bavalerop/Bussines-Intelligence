IF NOT EXISTS(select 1 from sys.databases where name = 'Business_Intelligence')
BEGIN
 CREATE DATABASE Business_Intelligence
END
GO

USE Business_intelligence
IF NOT EXISTS (select 1 from dbo.sysobjects where id = object_id(N'[Tab01]') )
BEGIN
CREATE TABLE Tab01 
    (
     Tab01C1 INTEGER NOT NULL , 
     Tab01C2 NVARCHAR (500) NOT NULL , 
     Tab01C3 INTEGER NOT NULL , 
     Tab01C4 INTEGER NOT NULL , 
     Tab01C5 DATETIME NOT NULL , 
     Tab01C6 INTEGER NOT NULL , 
     Tab01C7 DATETIME , 
     Tab01C8 INTEGER 
    )
    ON "default"


ALTER TABLE Tab01 ADD CONSTRAINT Tab01_PK1 PRIMARY KEY CLUSTERED (Tab01C1)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
     ON "default" 

ALTER TABLE Tab01 ADD CONSTRAINT Tab01__UN UNIQUE NONCLUSTERED (Tab01C3)
     ON "default" 

END
GO 

IF NOT EXISTS (select 1 from dbo.sysobjects where id = object_id(N'[Tab02]') )
BEGIN
CREATE TABLE Tab02 
    (
     Tab02C1 INTEGER NOT NULL IDENTITY(1,1) , 
     Tab01C3 INTEGER NOT NULL , 
     Tab02C2 INTEGER NOT NULL , 
     Tab02C3 INTEGER NOT NULL , 
     Tab02C4 INTEGER NOT NULL , 
     Tab02C5 INTEGER NOT NULL , 
     Tab02C6 DATETIME NOT NULL , 
     Tab02C7 INTEGER NOT NULL , 
     Tab02C8 DATETIME , 
     Tab02C9 INTEGER 
    )
    ON "default"

	ALTER TABLE Tab02 ADD CONSTRAINT Tab02_PK PRIMARY KEY CLUSTERED (Tab01C3, Tab02C2, Tab02C3)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
     ON "default" 

	ALTER TABLE Tab02 ADD CONSTRAINT Tab02__UN UNIQUE NONCLUSTERED (Tab01C3, Tab02C2, Tab02C3)
	ON "default" 
END
GO

IF NOT EXISTS (select 1 from dbo.sysobjects where id = object_id(N'[Tab03]') )
BEGIN

CREATE TABLE Tab03 
    (
     Tab01C1 INTEGER NOT NULL , 
     Tab03C1 INTEGER NOT NULL , 
     Tab03C2 DATETIME NOT NULL , 
     Tab03C3 INTEGER NOT NULL 
    )
    ON "default"

ALTER TABLE Tab03 ADD CONSTRAINT Tab03_PK PRIMARY KEY CLUSTERED (Tab01C1,Tab03C1)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
     ON "default" 

END
GO

IF NOT EXISTS (select 1 from dbo.sysobjects where id = object_id(N'[Tab04]') )
BEGIN

CREATE TABLE Tab04 
    (
     Tab04C1 NUMERIC (28) NOT NULL ,
     Tab04C2 INTEGER NOT NULL , 
     Tab04C3 INTEGER NOT NULL ,
     Tab04C4 NVARCHAR (128) NOT NULL , 
     Tab04C5 INTEGER NOT NULL ,
     Tab04C6 INTEGER , 
     Tab04C7 NVARCHAR(128) , 
     Tab04C8 INTEGER , 
     Tab04C9 NVARCHAR(128) , 
     Tab04C10 CHAR (1) NOT NULL , 
     Tab04C11 VARCHAR(200) , 
     Tab04C12 NVARCHAR(200) , 
     Tab04C13 DATETIME NOT NULL , 
     Tab04C14 BIT , 
     Tab04C15 DATETIME ,
	 Tab04C16 INTEGER , 
     Tab04C17 INTEGER NOT NULL , 
     Tab04C18 DATETIME NOT NULL  
    )
    ON "default"

END
GO

IF NOT EXISTS (select 1 from dbo.sysobjects where id = object_id(N'[Tab05]') )
BEGIN
CREATE TABLE Tab05 
    (
     Tab05C1 INTEGER NOT NULL , 
     Tab05C2 NVARCHAR (50) NOT NULL , 
     Tab05C3 INTEGER NOT NULL , 
     Tab05C4 INTEGER NOT NULL , 
     Tab05C5 INTEGER , 
     Tab05C6 INTEGER , 
     Tab05C7 INTEGER , 
     Tab05C8 INTEGER , 
     Tab05C9 INTEGER , 
     Tab05C10 VARCHAR (50) NOT NULL , 
     Tab05C11 VARCHAR (20) NOT NULL , 
     Tab05C12 DATETIME NOT NULL , 
     Tab05C13 INTEGER NOT NULL , 
     Tab05C14 DATETIME , 
     Tab05C15 INTEGER 
    )
    ON "default"

ALTER TABLE Tab05 ADD CONSTRAINT Tab05_PK PRIMARY KEY CLUSTERED (Tab05C1)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
     ON "default" 
END
GO

IF NOT EXISTS (select 1 from dbo.sysobjects where id = object_id(N'[Tab06]') )
BEGIN
CREATE TABLE Tab06 
    (
     Tab06C1 INTEGER NOT NULL , 
     Tab06C2 NVARCHAR (128) NOT NULL , 
     Tab06C3 INTEGER NOT NULL , 
     Tab06C4 NVARCHAR (50) NOT NULL , 
     Tab06C5 INTEGER NOT NULL , 
     Tab06C6 INTEGER NOT NULL , 
     Tab06C7 INTEGER NOT NULL , 
     Tab06C8 INTEGER NOT NULL , 
     Tab06C9 DATETIME NOT NULL ,
    )
    ON "default" 

END
GO

IF NOT EXISTS (select 1 from dbo.sysobjects where id = object_id(N'[Tab07]') )
BEGIN

CREATE TABLE Tab07 
    (
     Tab07C1 INTEGER NOT NULL , 
     Tab07C2 NVARCHAR (500) NOT NULL , 
     Tab07C3 INTEGER NOT NULL , 
     Tab07C4 INTEGER NOT NULL , 
     Tab07C5 DATETIME NOT NULL , 
     Tab07C6 INTEGER NOT NULL , 
     Tab07C7 DATETIME , 
     Tab07C8 INTEGER 
    )
    ON "default"

ALTER TABLE Tab07 ADD CONSTRAINT Tab07_PK PRIMARY KEY CLUSTERED (Tab07C1)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
     ON "default" 

ALTER TABLE Tab07 ADD CONSTRAINT Tab07_UN UNIQUE NONCLUSTERED (Tab07C3)
     ON "default" 
END
GO

IF NOT EXISTS (select 1 from dbo.sysobjects where id = object_id(N'[Tab08]') )
BEGIN

CREATE TABLE Tab08 
    (
     Tab08C1 INTEGER NOT NULL IDENTITY(1,1) , 
     Tab07C3 INTEGER NOT NULL , 
     Tab08C2 INTEGER NOT NULL , 
     Tab08C3 INTEGER NOT NULL , 
     Tab08C4 INTEGER NOT NULL , 
     Tab08C5 INTEGER NOT NULL , 
     Tab08C6 DATETIME NOT NULL , 
     Tab08C7 INTEGER NOT NULL , 
     Tab08C8 DATETIME , 
     Tab08C9 INTEGER 
    )
    ON "default"

ALTER TABLE Tab08 ADD CONSTRAINT Tab08_PK PRIMARY KEY CLUSTERED (Tab07C3, Tab08C2, Tab08C3)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
     ON "default" 

    ALTER TABLE Tab08 ADD CONSTRAINT Tab08_UN UNIQUE NONCLUSTERED (Tab07C3, Tab08C2, Tab08C3)
     ON "default" 
END
GO

IF NOT EXISTS (select 1 from dbo.sysobjects where id = object_id(N'[Tab09]') )
BEGIN

CREATE TABLE Tab09 
    (
     Tab07C1 INTEGER NOT NULL , 
     Tab09C1 INTEGER NOT NULL , 
     Tab09C2 DATETIME NOT NULL , 
     Tab09C3 INTEGER NOT NULL 
    )
    ON "default"

ALTER TABLE Tab09 ADD CONSTRAINT Tab109_PK PRIMARY KEY CLUSTERED (Tab07C1,Tab09C1)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
     ON "default" 

END
GO

IF NOT EXISTS (select 1 from dbo.sysobjects where id = object_id(N'[Tab10]') )
BEGIN

CREATE TABLE Tab10 
    (
     Tab10C1 NUMERIC (28) NOT NULL , 
     Tab10C2 INTEGER NOT NULL , 
     Tab10C3 INTEGER NOT NULL , 
     Tab10C4 VARCHAR (128) NOT NULL , 
     Tab10C5 INTEGER NOT NULL , 
     Tab10C6 VARCHAR(64) , 
     Tab10C7 NVARCHAR (50) , 
     Tab10C8 INTEGER , 
     Tab10C9 NVARCHAR (128) , 
     Tab10C10 CHAR (1) NOT NULL , 
     Tab10C11 VARCHAR (200) , 
     Tab10C12 DATETIME NOT NULL , 
     Tab10C13 BIT , 
     Tab10C14 DATETIME , 
     Tab10C15 INTEGER , 
     Tab10C16 INTEGER NOT NULL , 
     Tab10C17 DATETIME NOT NULL 
    )
    ON "default"

END
GO

IF NOT EXISTS (select 1 from dbo.sysobjects where id = object_id(N'[Tab11]') )
BEGIN

CREATE TABLE Tab11 
    (
     Tab11C1 INTEGER NOT NULL , 
     Tab11C2 VARCHAR (500) NOT NULL , 
     Tab11C3 INTEGER NOT NULL , 
     Tab11C4 INTEGER NOT NULL , 
     Tab11C5 DATETIME NOT NULL , 
     Tab11C6 INTEGER NOT NULL , 
     Tab11C7 DATETIME , 
     Tab11C8 INTEGER 
    )
    ON "default"

ALTER TABLE Tab11 ADD CONSTRAINT Tab11_PK PRIMARY KEY CLUSTERED (Tab11C1)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
     ON "default" 

    ALTER TABLE Tab11 ADD CONSTRAINT Tab11__UN UNIQUE NONCLUSTERED (Tab11C3)
     ON "default" 

END
GO

IF NOT EXISTS (select 1 from dbo.sysobjects where id = object_id(N'[Tab12]') )
BEGIN

CREATE TABLE Tab12 
    (
     Tab12C1 INTEGER NOT NULL IDENTITY(1,1), 
     Tab11C3 INTEGER NOT NULL , 
     Tab12C2 INTEGER NOT NULL , 
     Tab12C3 INTEGER NOT NULL , 
     Tab12C4 INTEGER NOT NULL , 
     Tab12C5 INTEGER NOT NULL , 
     Tab12C6 DATETIME NOT NULL , 
     Tab12C7 INTEGER NOT NULL , 
     Tab12C8 DATETIME , 
     Tab12C9 INTEGER 
    )
    ON "default"

ALTER TABLE Tab12 ADD CONSTRAINT Tab12_PK PRIMARY KEY CLUSTERED (Tab11C3,Tab12C2, Tab12C3)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
     ON "default" 

    ALTER TABLE Tab12 ADD CONSTRAINT Tab12__UN UNIQUE NONCLUSTERED (Tab11C3, Tab12C2, Tab12C3)
     ON "default" 

END
GO

IF NOT EXISTS (select 1 from dbo.sysobjects where id = object_id(N'[Tab13]') )
BEGIN

CREATE TABLE Tab13 
    (
     Tab11C1 INTEGER NOT NULL , 
     Tab13C1 INTEGER NOT NULL , 
     Tab13C2 DATETIME NOT NULL , 
     Tab13C3 INTEGER NOT NULL ,
	 Tab13C4 BIT NOT NULL
    )
    ON "default"

ALTER TABLE Tab13 ADD CONSTRAINT Tab13_PK PRIMARY KEY CLUSTERED (Tab11C1,Tab13C1)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
     ON "default" 

END
GO

IF NOT EXISTS (select 1 from dbo.sysobjects where id = object_id(N'[Tab14]') )
BEGIN

CREATE TABLE Tab14 
    (
     Tab11C1 INTEGER NOT NULL , 
     Tab14C1 INTEGER NOT NULL , 
     Tab14C2 DATETIME NOT NULL , 
     Tab14C3 INTEGER NOT NULL 
    )
    ON "default"

ALTER TABLE Tab14 ADD CONSTRAINT Tab14_PK PRIMARY KEY CLUSTERED (Tab11C1,Tab14C1)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
     ON "default" 

END
GO

IF NOT EXISTS (select 1 from dbo.sysobjects where id = object_id(N'[Tab15]') )
BEGIN

CREATE TABLE Tab15 
    (
     Tab15C1 INTEGER NOT NULL IDENTITY(1,1), 
     Tab15C2 VARCHAR (50) NOT NULL , 
     Tab11C1 INTEGER NOT NULL , 
     Tab15C3 DATETIME NOT NULL , 
     Tab15C4 INTEGER NOT NULL 
    )
    ON "default"

ALTER TABLE Tab15 ADD CONSTRAINT Tab15_PK PRIMARY KEY CLUSTERED (Tab15C1)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
     ON "default" 

END
GO

IF NOT EXISTS (select 1 from dbo.sysobjects where id = object_id(N'[Tab16]') )
BEGIN

CREATE TABLE Tab16 
    (
     Tab16C1 NUMERIC (28) NOT NULL , 
     Tab16C2 INTEGER NOT NULL , 
     Tab16C3 INTEGER NOT NULL , 
     Tab16C4 VARCHAR (128) NOT NULL , 
     Tab16C5 INTEGER NOT NULL , 
     Tab16C6 VARCHAR (64) NOT NULL , 
     Tab16C7 VARCHAR (50) NOT NULL , 
     Tab16C8 INTEGER NOT NULL , 
     Tab16C9 VARCHAR (128) NOT NULL , 
     Tab16C10 INTEGER NOT NULL , 
     Tab16C11 VARCHAR (50) NOT NULL , 
     Tab16C12 CHAR (1) NOT NULL , 
     Tab16C13 VARCHAR (200) NOT NULL , 
     Tab16C14 DATETIME NOT NULL , 
     Tab16C15 BIT NOT NULL , 
     Tab16C16 DATETIME NULL , 
     Tab16C17 DATETIME NULL , 
     Tab16C18 INTEGER NOT NULL , 
     Tab16C19 INTEGER NOT NULL , 
     Tab16C20 DATETIME NOT NULL 
    )
    ON "default"

END
GO

IF NOT EXISTS (select 1 from dbo.sysobjects where id = object_id(N'[Tab17]') )
BEGIN
CREATE TABLE Tab17 
    (
     Tab15C1 INTEGER NOT NULL , 
     Tab13C1 INTEGER NOT NULL 
    )
    ON "default"

ALTER TABLE Tab17 ADD CONSTRAINT Tab17_PK PRIMARY KEY CLUSTERED (Tab15C1,Tab13C1)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
     ON "default" 

END
GO

IF NOT EXISTS (select 1 from dbo.sysobjects where id = object_id(N'[Tab18]') )
BEGIN
CREATE TABLE Tab18 
    (
     Tab18C1 INTEGER NOT NULL , 
     Tab18C2 VARCHAR (50) NOT NULL , 
     Tab18C3 INTEGER NOT NULL , 
     Tab18C4 VARCHAR (50) NOT NULL , 
     Tab18C5 DATETIME NOT NULL , 
     Tab18C6 INTEGER NOT NULL , 
     Tab18C7 DATETIME , 
     Tab18C8 INTEGER 
    )
    ON "default"

    ALTER TABLE Tab18 ADD CONSTRAINT Tab18_PK PRIMARY KEY CLUSTERED (Tab18C1)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
     ON "default" 

    ALTER TABLE Tab18 ADD CONSTRAINT Tab18__UN UNIQUE NONCLUSTERED (Tab18C3)
     ON "default" 

END
GO

IF NOT EXISTS (select 1 from dbo.sysobjects where id = object_id(N'[Tab19]') )
BEGIN
CREATE TABLE Tab19 
    (
     Tab18C1 INTEGER NOT NULL , 
     Tab19C1 INTEGER NOT NULL , 
     Tab19C2 DATETIME NOT NULL , 
     Tab19C3 INTEGER NOT NULL 
    )
    ON "default"

END
GO

IF NOT EXISTS (select 1 from dbo.sysobjects where id = object_id(N'[Tab20]') )
BEGIN
CREATE TABLE Tab20 
    (
     Tab20C1 INTEGER NOT NULL , 
     Tab20C2 INTEGER NOT NULL , 
     Tab20C3 INTEGER NOT NULL , 
     Tab20C4 VARCHAR (20) NOT NULL , 
     Tab20C5 INTEGER NOT NULL , 
     Tab20C6 DATETIME NOT NULL 
    )
    ON "default"
END
GO

-----------------------------Tablas Cubo Estadistico-----------------------------------------------
IF NOT EXISTS (select 1 from dbo.sysobjects where id = object_id(N'[Tab21]') )
BEGIN
    SET ANSI_NULLS ON
    
    SET QUOTED_IDENTIFIER ON
    
    SET ANSI_PADDING ON
    
    CREATE TABLE [dbo].[Tab21](
	    [Tab21C1] [int] NOT NULL,
	    [Tab21C2] [varchar](50) NOT NULL,
	    [Tab21C3] [varchar](64) NOT NULL,
	    [Tab21C4] [varchar](64) NOT NULL,
	    [Tab21C5] [varchar](50) NOT NULL,
	    [Tab21C6] [varchar](50) NULL,
	    [Tab21C7] [varchar](50) NULL,
	    [Tab21C8] [varchar](178) NOT NULL,
	    [Tab21C9] [varchar](50) NULL,
	    [Tab21C10] [varchar](178) NULL,
	    [TipoDoc_Cod] [varchar](50) NULL,
	    [TipoDoc] [varchar](500) NULL,
	    [Telefono_Cod] [varchar](50) NULL,
	    [Telefono] [varchar](500) NULL,
	    [Afiliacion_Cod] [varchar](50) NULL,
	    [Afiliacion] [varchar](500) NULL,
	    [Estrato_Cod] [varchar](50) NULL,
	    [Estrato] [varchar](500) NULL,
	    [Correo_Cod] [varchar](50) NULL,
	    [Correo] [varchar](500) NULL,
        [Capita_Cod] [varchar](50) NULL,
	    [Capita] [varchar](500) NULL,
	    [Eps_Cod] [varchar](50) NULL,
	    [Eps] [varchar](500) NULL,
	    [Parentesco_Cod] [varchar](50) NULL,
	    [Parentesco] [varchar](500) NULL
     CONSTRAINT [PK_Tab21] PRIMARY KEY CLUSTERED 
    (
	    [Tab21C1] ASC
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    ) ON [PRIMARY]

    
    SET ANSI_PADDING OFF
END
GO

IF NOT EXISTS (select 1 from dbo.sysobjects where id = object_id(N'[Tab22]') )
BEGIN
    SET ANSI_NULLS ON
    
    SET QUOTED_IDENTIFIER ON
    
    SET ANSI_PADDING ON
    
    CREATE TABLE [dbo].[Tab22](
	    [Tab22C1] [bigint] NOT NULL,
	    [Tab22C2] [varchar](50) NOT NULL,
	    [Tab22C3] [int] NOT NULL,
	    [Tab22C4] [varchar](50) NULL,
	    [Tab22C5] [varchar](178) NOT NULL,
	    [Tab22C6] [varchar](50) NULL,
	    [Tab22C7] [varchar](178) NULL,
	    [Tab22C8] [varchar](50) NULL,
	    [Tab22C9] [varchar](50) NULL,
	    [Tab22C10] [varchar](10) NULL,
	    [Medico_Obser] [varchar](256) NULL,
	    [Medico_Cod] [varchar](50) NULL,
	    [Medico] [varchar](500) NULL,
	    [Sede_Cod] [varchar](50) NULL,
	    [Sede] [varchar](500) NULL,
	    [Servicio_Cod] [varchar](50) NULL,
	    [Servicio] [varchar](500) NULL,
	    [Convenio_Cod] [varchar](50) NULL,
	    [Convenio] [varchar](500) NULL,
	    [NumIngreso_Cod] [varchar](50) NULL,
	    [NumIngreso] [varchar](500) NULL,
	    [Cama_Cod] [varchar](50) NULL,
	    [Cama] [varchar](500) NULL,
	    [PromPreven_Cod] [varchar](50) NULL,
	    [PromPreven] [varchar](500) NULL,
	    [Turno_Cod] [varchar](50) NULL,
	    [Turno] [varchar](500) NULL,
	    [CausaExterna_Cod] [varchar](50) NULL,
	    [CausaExterna] [varchar](500) NULL,
	    [TiempoEmbarazo_Cod] [varchar](50) NULL,
	    [TiempoEmbarazo] [varchar](500) NULL,
	    [SistemaCentral_Cod] [varchar](50) NULL,
	    [SistemaCentral] [varchar](500) NULL,
	    [HisServinte_Cod] [varchar](50) NULL,
	    [HisServinte] [varchar](500) NULL,
	    [Episodio_Cod] [varchar](50) NULL,
	    [Episodio] [varchar](500) NULL,
	    [FechaLabsys_Cod] [varchar](50) NULL,
	    [FechaLabsys] [varchar](500) NULL,
	    [Direccion_Cod] [varchar](50) NULL,
	    [Direccion] [varchar](500) NULL,
	    [Detalle_Cod] [varchar](50) NULL,
	    [Detalle] [varchar](500) NULL,
	    [PID_Cod] [varchar](50) NULL,
	    [PID] [varchar](500) NULL,
	    [EpisodioSap_Cod] [varchar](50) NULL,
	    [EpisodioSap] [varchar](500) NULL
     CONSTRAINT [PK_Ordenes] PRIMARY KEY CLUSTERED 
    (
	    [Tab22C1] ASC
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    ) ON [PRIMARY]

    
    SET ANSI_PADDING OFF
    
END
GO

IF NOT EXISTS (select 1 from dbo.sysobjects where id = object_id(N'[Tab23]') )
BEGIN
    SET ANSI_NULLS ON
    
    SET QUOTED_IDENTIFIER ON
    
    SET ANSI_PADDING ON
    
    CREATE TABLE [dbo].[Tab23](
		[Tab23C1] [bigint] NOT NULL,
		[Tab23C2] [varchar](50) NOT NULL,
		[Tab23C3] [int] NOT NULL,
		[Tab23C4] [varchar](16) NOT NULL,
		[Tab23C5] [varchar](256) NULL,
		[Tab23C6] [varchar](50) NULL,
		[Tab23C7] [varchar](50) NULL,
		[Tab23C8] [varchar](178) NULL,
		[Tab23C9] [varchar](50) NULL,
		[Tab23C10] [varchar](50) NULL,
		[Tab23C11] [varchar](50) NULL,
		[Tab23C12] [varchar](178) NULL,
		[Tab23C13] [tinyint] NULL,
		[Tab23C14] [tinyint] NULL,
		[Tab23C15] [tinyint] NULL,
		[Tab23C16] [varchar](50) NULL,
		[Tab23C17] [varchar](178) NULL,
		[Tab23C18] [varchar](50) NULL,
		[Tab23C19] [varchar](50) NULL,
		[Tab23C20] [varchar](178) NULL,
		[Tab23C21] [tinyint] NULL,
		[Tab23C22] [tinyint] NULL,
		[Tab23C23] [varchar](128) NULL,
		[Tab23C24] [varchar](50) NULL,
		[Tab23C25] [varchar](50) NULL,
		[Tab23C26] [varchar](50) NULL,
		[Tab23C27] [tinyint] NULL,
		[Tab23C28] INT NULL,
		[Tab23C29] [varchar](178) NULL,
		[Tab23C30] [varchar](16)  NULL,
		[Tab23C31] [varchar](100) NULL,
		[Tab23C32] [SMALLINT] NULL,
		[Tab23C33] [tinyint] NULL,
		[Tab23C34] [varchar](50) NULL,
		[Tab23C35] [int] NULL,
		[Tab23C36] [varchar](256) NULL,
		[Tab23C37] [varchar](50) NULL,
		[Tab23C38] [float] NULL,
		[Tab23C39] [float] NULL,
		[Tab23C40] [varchar](64) NULL,
		[Tab23C41] [int] NULL,
		[Tab23C42] [varchar](50) NULL,
		[Tab23C43] [varchar](250) NULL,
		[Tab23C44] [varchar](250) NULL,
		[Tab23C45] [tinyint] NULL,
		[Tab23C46] [tinyint] NULL,
		[Tab23C47] [float] NULL,
		[Tab23C48] [float] NULL,
		[Tab23C49] [float] NULL,
		[Tab23C50] [int] NULL,
		[Tab23C51] [varchar](16) NULL,
		[Tab23C52] [varchar](7000) NULL,
		[Tab23C53] [int] NOT NULL,
		[Tab23C54] [varchar](100) NULL,
		[Tab23C55] [varchar](50) NULL,
		[Tab23C56] [varchar](50) NULL,
		[Tab23C57] [varchar](178) NULL,
		[Tab23C58] [varchar](50) NULL,
		[Tab23C59] [varchar](50) NULL,
		[Tab23C60] [varchar](50) NULL
	 CONSTRAINT [PK_Resultados] PRIMARY KEY CLUSTERED 
	(
		[Tab23C53] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY]

    SET ANSI_PADDING OFF    

END 
GO

IF NOT EXISTS (select 1 from dbo.sysobjects where id = object_id(N'[Tab24]') )
BEGIN
    SET ANSI_NULLS ON
    
    SET QUOTED_IDENTIFIER ON
    
    SET ANSI_PADDING ON

	CREATE TABLE [dbo].[Tab24](
		[Tab24C1] [int] IDENTITY(1,1) NOT NULL,
		[Tab21C1] [int] NULL,
		[Tab22C1] [bigint] NULL,
		[Tab23C53] [int] NULL,
		[Tab24C2] [float] NULL,
		[Tab24C3] [float] NULL,
	 CONSTRAINT [PK_Tab24] PRIMARY KEY CLUSTERED 
	(
		[Tab24C1] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY]

	ALTER TABLE [dbo].[Tab24]  WITH CHECK ADD  CONSTRAINT [FK_Tab24_Tab21] FOREIGN KEY([Tab21C1])
	REFERENCES [dbo].[Tab21] ([Tab21C1])

	ALTER TABLE [dbo].[Tab24] CHECK CONSTRAINT [FK_Tab24_Tab21]

	ALTER TABLE [dbo].[Tab24]  WITH CHECK ADD  CONSTRAINT [FK_Tab24_Tab22] FOREIGN KEY([Tab22C1])
	REFERENCES [dbo].[Tab22] ([Tab22C1])

	ALTER TABLE [dbo].[Tab24] CHECK CONSTRAINT [FK_Tab24_Tab22]

	ALTER TABLE [dbo].[Tab24]  WITH CHECK ADD  CONSTRAINT [FK_Tab24_Tab23] FOREIGN KEY([Tab23C53])
	REFERENCES [dbo].[Tab23] ([Tab23C53])

	ALTER TABLE [dbo].[Tab24] CHECK CONSTRAINT [FK_Tab24_Tab23]

END 
GO


IF NOT EXISTS (select 1 from dbo.sysobjects where id = object_id(N'[Tab30]') )
BEGIN
    SET ANSI_NULLS ON
    
    SET QUOTED_IDENTIFIER ON
    
    SET ANSI_PADDING ON
    
    CREATE TABLE [dbo].[Tab30](
	    [Tab30C1] [int] IDENTITY(1,1) NOT NULL,
	    [Tab30C2] [int] NOT NULL,
	    [Tab30C3] [varchar](64) NULL,
	    [Tab30C4] [varchar](500) NULL,
	    [Tab30C5] [int] NOT NULL,
	    [Tab30C6] [varchar](128) NULL,
	    [Tab30C7] [varchar](50) NULL,
	    [Tab30C8] [varchar](16) NULL,
	    [Tab30C9] [varchar](50) NULL,
	    [Tab30C10] [varchar](256) NULL,
	    [Tab30C11] [varchar](50) NULL,
	    [Tab30C12] [varchar](10) NULL,
	    [Tab30C13] [int] NOT NULL,
	    [Tab30C14] [varchar](16) NULL,
	    [Tab30C15] [varchar](7000) NULL,
	    [Tab30C16] [varchar](50) NULL,
	    [Tab30C17] [varchar](64) NULL,
	    [Tab30C18] [varchar](100) NULL,
	    [Tab30C19] [int] NOT NULL,
		[Tab30C20] [bigint] NOT NULL
	CONSTRAINT [PK_Tab30] PRIMARY KEY CLUSTERED 
	(
		[Tab30C1] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY]

	ALTER TABLE [dbo].[Tab30]  WITH CHECK ADD  CONSTRAINT [FK_Tab30_Tab23] FOREIGN KEY([Tab30C13])
	REFERENCES [dbo].[Tab23] ([Tab23C53])

	ALTER TABLE [dbo].[Tab30] CHECK CONSTRAINT [FK_Tab30_Tab23]

END 
GO


IF NOT EXISTS (select 1 from dbo.sysobjects where id = object_id(N'[Tab31]') )
BEGIN
    SET ANSI_NULLS ON
    
    SET QUOTED_IDENTIFIER ON
    
    SET ANSI_PADDING ON
    
    CREATE TABLE [dbo].[Tab31](
	    [Tab31C1] [int] IDENTITY(1,1) NOT NULL,
	    [Tab31C2] [int] NOT NULL,
		[Tab31C3] [int] NULL,
	    [Tab31C4] [varchar](1000) NULL,
		[Tab31C5] [int] NULL,
	    [Tab31C6] [varchar](2000) NULL,
		[Tab31C7] [varchar](2000) NULL,
	    [Tab31C8] [varchar](256) NULL,
	    [Tab31C9] [varchar](50) NULL,
	    [Tab31C10] [varchar](50) NULL,
	    [Tab31C11] [varchar](16) NULL,
	    [Tab31C12] [varchar](64) NULL,
	    [Tab31C13] [varchar](16) NULL,
		[Tab31C14] [varchar](50) NULL,
		[Tab31C15] [varchar](20) NULL,
		[Tab31C16] [int] NOT NULL,
		[Tab31C17] [bigint] NOT NULL
	CONSTRAINT [PK_Tab31] PRIMARY KEY CLUSTERED 
	(
		[Tab31C1] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY]

	ALTER TABLE [dbo].[Tab31]  WITH CHECK ADD  CONSTRAINT [FK_Tab31_Tab23] FOREIGN KEY([Tab31C16])
	REFERENCES [dbo].[Tab23] ([Tab23C53])

	ALTER TABLE [dbo].[Tab31] CHECK CONSTRAINT [FK_Tab31_Tab23]

END 
GO


IF NOT EXISTS (select 1 from dbo.sysobjects where id = object_id(N'[Tab32]') )
BEGIN
    SET ANSI_NULLS ON
    
    SET QUOTED_IDENTIFIER ON
    
    SET ANSI_PADDING ON
    
    CREATE TABLE [dbo].[Tab32](
	    [Tab32C1] [int] IDENTITY(1,1) NOT NULL,
	    [Tab32C2] [bigint] NOT NULL,
		[Tab32C3] [int] NOT NULL,
	    [Tab32C4] [int] NULL,
		[Tab32C5] [varchar](2000) NULL,
	    [Tab32C6] [int] NULL,
		[Tab32C7] [varchar](126) NULL,
	    [Tab32C8] [varchar](2000) NULL,
	    [Tab32C9]  [varchar](256) NULL,
	    [Tab32C10] [varchar](50) NULL,
	    [Tab32C11] [varchar](50) NULL
	CONSTRAINT [PK_Tab32] PRIMARY KEY CLUSTERED 
	(
		[Tab32C1] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY]

	ALTER TABLE [dbo].[Tab32]  WITH CHECK ADD  CONSTRAINT [FK_Tab32_Tab22] FOREIGN KEY([Tab32C2])
	REFERENCES [dbo].[Tab22] ([Tab22C1])

	ALTER TABLE [dbo].[Tab32] CHECK CONSTRAINT [FK_Tab32_Tab22]

END 
GO



IF NOT EXISTS (select 1 from dbo.sysobjects where id = object_id(N'[Tab33]') )
BEGIN
    SET ANSI_NULLS ON
    
    SET QUOTED_IDENTIFIER ON
    
    SET ANSI_PADDING ON
    
    CREATE TABLE [dbo].[Tab33](
	    [Tab33C1] [int] IDENTITY(1,1) NOT NULL,
	    [Tab33C2] [int] NOT NULL,
		[Tab33C3] [int] NOT NULL,
	    [Tab33C4] [varchar](64) NULL,
		[Tab33C5] [int] NOT NULL,
	    [Tab33C6] [int] NULL,
		[Tab33C7] [varchar](50) NULL,
	    [Tab33C8] [varchar](50) NULL,
	    [Tab33C9] [varchar](10) NULL,
	    [Tab33C10] [int] NOT NULL,
	    [Tab33C11] [varchar](256) NULL,
		[Tab33C12] [bigint] NOT NULL
	CONSTRAINT [PK_Tab33] PRIMARY KEY CLUSTERED 
	(
		[Tab33C1] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY]

	ALTER TABLE [dbo].[Tab33]  WITH CHECK ADD  CONSTRAINT [FK_Tab33_Tab23] FOREIGN KEY([Tab33C2])
	REFERENCES [dbo].[Tab23] ([Tab23C53])

	ALTER TABLE [dbo].[Tab33] CHECK CONSTRAINT [FK_Tab33_Tab23]

END 
GO

--*********************************************************************************************************************
IF NOT EXISTS (select 1 from dbo.sysobjects where id = object_id(N'[TabControlBI]') )
BEGIN

CREATE TABLE TabControlBI (
     TabConC1 BIGINT NOT NULL PRIMARY KEY  
);
    
END
GO
--*********************************************************************************************************************
IF exists (select * from dbo.sysobjects where id = object_id(N'[TabBI_DEL]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
	drop procedure [TabBI_DEL]
GO

CREATE PROCEDURE [dbo].[TabBI_DEL]  

WITH ENCRYPTION
AS
BEGIN

SET NOCOUNT ON
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED

PRINT 'Tab24Ini '+ CAST(GETDATE() AS VARCHAR);
DELETE A FROM Tab24 A JOIN TabControlBI B ON(A.Tab22C1=B.TabConC1);
PRINT 'Tab24Fin '+ CAST(GETDATE() AS VARCHAR);
PRINT 'Tab30Ini '+ CAST(GETDATE() AS VARCHAR);
DELETE A FROM Tab30 A JOIN TabControlBI B ON(A.Tab30C20=B.TabConC1);			
PRINT 'Tab30Fin '+ CAST(GETDATE() AS VARCHAR);
PRINT 'Tab31Ini '+ CAST(GETDATE() AS VARCHAR);
DELETE A FROM Tab31 A JOIN TabControlBI B ON(A.Tab31C17=B.TabConC1);			
PRINT 'Tab31Fin '+ CAST(GETDATE() AS VARCHAR);
PRINT 'Tab32Ini '+ CAST(GETDATE() AS VARCHAR);
DELETE A FROM Tab32 A JOIN TabControlBI B ON(A.Tab32C2=B.TabConC1);	
PRINT 'Tab32Fin '+ CAST(GETDATE() AS VARCHAR);
PRINT 'Tab33Ini '+ CAST(GETDATE() AS VARCHAR);
DELETE A FROM Tab33 A JOIN TabControlBI B ON(A.Tab33C12=B.TabConC1);			
PRINT 'Tab33Fin '+ CAST(GETDATE() AS VARCHAR);
PRINT 'Tab23Ini '+ CAST(GETDATE() AS VARCHAR);
DELETE A FROM Tab23 A JOIN TabControlBI B ON (A.Tab23C1=B.TabConC1);
PRINT 'Tab23Fin '+ CAST(GETDATE() AS VARCHAR);
PRINT 'Tab21Ini '+ CAST(GETDATE() AS VARCHAR);
DELETE FROM Tab21 WHERE Tab21C1 IN(SELECT A.Tab22C3 FROM Tab22 A JOIN TabControlBI B ON (A.Tab22C1=B.TabConC1)) AND Tab21C1 NOT IN(SELECT Tab21C1 FROM Tab24);
PRINT 'Tab21Fin '+ CAST(GETDATE() AS VARCHAR);
PRINT 'Tab22Ini '+ CAST(GETDATE() AS VARCHAR);
DELETE A FROM Tab22 A JOIN TabControlBI B ON(A.Tab22C1=B.TabConC1);
PRINT 'Tab22Fin '+ CAST(GETDATE() AS VARCHAR);


SET NOCOUNT OFF

END
GO
--*****************************************************************************************************************
if exists (select * from dbo.sysobjects where id = object_id(N'[fSplit]') and xtype in (N'FN', N'IF', N'TF'))
drop function [fSplit]
GO

CREATE FUNCTION dbo.fSplit (@Text varchar(max), @Delimiter char(1))
RETURNS @Table table(Code int, strName varchar(max))
WITH ENCRYPTION
AS
BEGIN

	IF (RIGHT(@Text, 2)) = @Delimiter + @Delimiter
		SET @Text = LEFT(@Text, LEN(@Text) - 2) + @Delimiter + '-*-' +  @Delimiter

    IF (RIGHT(@Text, 1) = @Delimiter)
    BEGIN
        SET @Text = LEFT(@Text, LEN(@Text) -1)
    END
    
	DECLARE @I AS integer
	DECLARE @Start AS integer
	DECLARE @End AS integer
	DECLARE @C AS char(1)
	DECLARE @Count AS integer
	SET @I = 1
	SET @Start = 1
	SET @End = 0
	SET @Count = 1
	
	WHILE @I < len(@Text)
	BEGIN
		SET @C = substring(@Text, @I, 1)
		IF @C = @Delimiter
		BEGIN
			SET @End = @I
		END
		IF @End > 0
		BEGIN
			INSERT INTO @Table values(@Count, substring(@Text, @Start, @I - @Start))
			SET @Start = @I + 1
			SET @End = 0
			SET @Count = @Count + 1
		END
		SET @I = @I + 1
	END
	IF len(@Text) > 0
	    INSERT INTO @Table values(@Count, REPLACE(substring(@Text, @Start, @I - @Start + 1), '-*-', ''))
	RETURN 
END
GO
--*****************************************************************************************************************
if exists (select * from dbo.sysobjects where id = object_id(N'FilteredIndexFragmentation'))
    DROP FUNCTION FilteredIndexFragmentation
GO

CREATE FUNCTION [dbo].[FilteredIndexFragmentation](
      @DatabaseID                INT
    , @ObjectID                    INT
    , @IndexID                        INT
    , @PartitionNumber        INT=NULL
    , @AverageFragmentation INT=0 
    , @FragmentCount        BIGINT=0)

-- Author:                         Javier Loria, Solid Quality Mentors 
-- Create date:                    5/Dic/2008 
-- Description:                    Funcion que lista los indices con un porcentaje de fragmentacion LOGICA mayor al indicado, 
-- y con una cantidad mayor de fragmentos. 
-- Encapsula dm_db_index_physical_stats., se requiere para poder hacer CROSS APPLY. 
-- No reporta fragmentacion de tablas sin indices, indices XML o Geograficos. 
-- Emplea el modo limitado 'LIMITED', por el alto costo y mal desempeno del modo 'DETAILED' 

RETURNS @IndexStats TABLE(
      DatabaseID            SMALLINT 
    , ObjectID              INT 
    , IndexID               INT 
    , PartitionNumber            INT 
    , IndexDepth                    TINYINT 
    , FragmentationRate        FLOAT 
    , FragmentCount            BIGINT 
    , AverageFragmentSize FLOAT 
    ,PageCount                    BIGINT)
BEGIN
    INSERT INTO @IndexStats(DatabaseID, ObjectID, IndexID, PartitionNumber, IndexDepth,FragmentationRate 
        , FragmentCount, AverageFragmentSize,PageCount)
    SELECT database_id,object_id, index_id, partition_number,
         index_depth, avg_fragmentation_in_percent, fragment_count, avg_fragment_size_in_pages, page_count 
    FROM sys.dm_db_index_physical_stats(@DatabaseID, @ObjectID, @IndexID, @PartitionNumber,'LIMITED')
    WHERE index_type_desc IN('CLUSTERED INDEX','NONCLUSTERED INDEX')
    AND avg_fragmentation_in_percent > @AverageFragmentation 
    AND fragment_count>@FragmentCount 
    RETURN 
END
GO

-- Author:              Javier Loria, Solid Quality Mentors 
-- Create date:         5/Dic/2008 
-- Description:         Procedimiento que defragmenta indices, de una base de datos, de acuerdo al tamaño del indices. 
-- Indices Grandes:     10 Indices de cualquier tamaño, con mas de 30% de Fragmentacion y 10 o más segmentos 
-- Indices Medianos:    10 Indices entre 8192 y 32 páginas, mas del 20% de Fragmentacion y 3 o más segmentos 
-- Indices Pequenos:    100 Indices entre 256 y 32 páginas, , mas del 20% de Fragmentacion y 3 o más segmentos 
-- Parametros:          @Tipo= Grandes, Medianos y Pequenos. Default=Grandes

if exists (select * from dbo.sysobjects where id = object_id(N'DefragmentaIndices'))
    DROP PROCEDURE DefragmentaIndices
GO


CREATE PROCEDURE [dbo].[DefragmentaIndices]( @Tipo    VARCHAR(10)='Grandes')        -- Medianos, Pequenos 
AS
BEGIN
    DECLARE @NumPages     BIGINT; 
    DECLARE @NumIndexes INT; 
    DECLARE @Comando NVARCHAR(MAX); 
    DECLARE @DB INT 
    SET NOCOUNT ON;
    SET @DB=DB_ID(N'Business_Intelligence')        --Requerido por modo de compatibilidad 80. 

    IF (@Tipo NOT IN('Grandes','Medianos','Pequenos')) 
    BEGIN 
        RAISERROR('Parametro @Tipo Invalido, use: Grandes, Medianos o Pequenos', 16,1); 
        RETURN; 
    END 
    
    SET @Comando='';
    IF @Tipo='Grandes' 
    BEGIN 
        -- Reindexa las 10 mas grandes sin importar el tamano 
        SELECT TOP 10 @Comando=@Comando+CHAR(13)+CHAR(10)+'ALTER INDEX ' 
        +Indexes.Name 
        +' ON '+OBJECT_NAME(ObjectID)+' REBUILD;'
        FROM FilteredIndexFragmentation(@DB,NULL,NULL,NULL, 30,10)AS FIF 
        JOIN SYS.INDEXES AS Indexes ON INDEXES.OBJECT_ID=ObjectID 
        AND INDEXES.INDEX_ID=IndexID 
        ORDER BY (IndexDepth*IndexDepth*FragmentationRate*FragmentCount/100)DESC
    END 
    ELSE
    BEGIN 
        -- Reindexa las 10 si es Medianos, 50 si es Pequenos 
        SELECT TOP (CASE WHEN @Tipo='Medianos'THEN 10 ELSE 50 END) 
        @Comando=@Comando+CHAR(13)+CHAR(10)+'ALTER INDEX ' 
        + IndexPages.Name 
        +' ON '+OBJECT_NAME(ObjectID)+' REBUILD;'
        FROM (SELECT indexes.object_id 
                ,indexes.index_id 
                ,Indexes.Name 
                ,sum(allocation_units.total_pages)as totalPages 
                FROM sys.indexes AS indexes 
                JOIN sys.partitions AS partitions 
                ON indexes.object_id=partitions.object_id 
                and indexes.index_id =partitions.index_id 
                JOIN sys.allocation_units AS allocation_units 
                ON partitions.partition_id =allocation_units.container_id 
                WHERE indexes.index_id >0 
                AND allocation_units.total_pages>0 
                GROUP BY indexes.object_id,indexes.index_id,Indexes.Name 
                HAVING sum(allocation_units.total_pages)BETWEEN 32 AND
                (CASE WHEN @Tipo='Medianos'THEN 8192 ELSE 256 END)         
            -- Medianos si tienen menos de 8192 paginas, Pequenos si tienen menos de 256 paginas 
            )AS IndexPages 

        -- No se emplea el CROSS APPLY por compatibilidad con nivel de compatibilidad 80 (SQL 2000), 
        -- es posible que tenga un importante impacto en desempeno usar el CROSS APPLY. 
        -- se recomienda usar CROSS APPLY para compatibilidad 90 o 100. 
        --    CROSS APPLY FilteredIndexFragmentation(@DB, IndexPages.object_id, IndexPages.index_id, NULL, 20,3) AS FIF 
        JOIN FilteredIndexFragmentation(@DB,NULL,NULL,NULL, 20,3)AS FIF 
        ON IndexPages.object_id=FIF.ObjectID 
        AND IndexPages.index_id=FIF.IndexID 
        -- La columna IndexDepth esta deliberadamente 2 veces, para dar prioridad a indices mas profundos. 
        ORDER BY (IndexDepth*IndexDepth*FragmentationRate*FragmentCount/100)DESC
    END 
    PRINT 'Intrucciones a ejecutar: '
	PRINT @Comando
	EXEC sp_executesql @Comando 
	PRINT 'Proceso terminado.'
END
GO
if exists (select * from dbo.sysobjects where id = object_id(N'FilteredIndexFragmentation'))
    DROP FUNCTION FilteredIndexFragmentation
GO

CREATE FUNCTION [dbo].[FilteredIndexFragmentation](
      @DatabaseID                INT
    , @ObjectID                    INT
    , @IndexID                        INT
    , @PartitionNumber        INT=NULL
    , @AverageFragmentation INT=0 
    , @FragmentCount        BIGINT=0)

-- Author:                         Javier Loria, Solid Quality Mentors 
-- Create date:                    5/Dic/2008 
-- Description:                    Funcion que lista los indices con un porcentaje de fragmentacion LOGICA mayor al indicado, 
-- y con una cantidad mayor de fragmentos. 
-- Encapsula dm_db_index_physical_stats., se requiere para poder hacer CROSS APPLY. 
-- No reporta fragmentacion de tablas sin indices, indices XML o Geograficos. 
-- Emplea el modo limitado 'LIMITED', por el alto costo y mal desempeno del modo 'DETAILED' 

RETURNS @IndexStats TABLE(
      DatabaseID            SMALLINT 
    , ObjectID              INT 
    , IndexID               INT 
    , PartitionNumber            INT 
    , IndexDepth                    TINYINT 
    , FragmentationRate        FLOAT 
    , FragmentCount            BIGINT 
    , AverageFragmentSize FLOAT 
    ,PageCount                    BIGINT)
BEGIN
    INSERT INTO @IndexStats(DatabaseID, ObjectID, IndexID, PartitionNumber, IndexDepth,FragmentationRate 
        , FragmentCount, AverageFragmentSize,PageCount)
    SELECT database_id,object_id, index_id, partition_number,
         index_depth, avg_fragmentation_in_percent, fragment_count, avg_fragment_size_in_pages, page_count 
    FROM sys.dm_db_index_physical_stats(@DatabaseID, @ObjectID, @IndexID, @PartitionNumber,'LIMITED')
    WHERE index_type_desc IN('CLUSTERED INDEX','NONCLUSTERED INDEX')
    AND avg_fragmentation_in_percent > @AverageFragmentation 
    AND fragment_count>@FragmentCount 
    RETURN 
END
GO

-- Author:              Javier Loria, Solid Quality Mentors 
-- Create date:         5/Dic/2008 
-- Description:         Procedimiento que defragmenta indices, de una base de datos, de acuerdo al tamaño del indices. 
-- Indices Grandes:     10 Indices de cualquier tamaño, con mas de 30% de Fragmentacion y 10 o más segmentos 
-- Indices Medianos:    10 Indices entre 8192 y 32 páginas, mas del 20% de Fragmentacion y 3 o más segmentos 
-- Indices Pequenos:    100 Indices entre 256 y 32 páginas, , mas del 20% de Fragmentacion y 3 o más segmentos 
-- Parametros:          @Tipo= Grandes, Medianos y Pequenos. Default=Grandes

if exists (select * from dbo.sysobjects where id = object_id(N'DefragmentaIndices'))
    DROP PROCEDURE DefragmentaIndices
GO


CREATE PROCEDURE [dbo].[DefragmentaIndices]( @Tipo    VARCHAR(10)='Grandes')        -- Medianos, Pequenos 
AS
BEGIN
    DECLARE @NumPages     BIGINT; 
    DECLARE @NumIndexes INT; 
    DECLARE @Comando NVARCHAR(MAX); 
    DECLARE @DB INT 
    SET NOCOUNT ON;
    SET @DB=DB_ID(N'Business_Intelligence')        --Requerido por modo de compatibilidad 80. 

    IF (@Tipo NOT IN('Grandes','Medianos','Pequenos')) 
    BEGIN 
        RAISERROR('Parametro @Tipo Invalido, use: Grandes, Medianos o Pequenos', 16,1); 
        RETURN; 
    END 
    
    SET @Comando='';
    IF @Tipo='Grandes' 
    BEGIN 
        -- Reindexa las 10 mas grandes sin importar el tamano 
        SELECT TOP 10 @Comando=@Comando+CHAR(13)+CHAR(10)+'ALTER INDEX ' 
        +Indexes.Name 
        +' ON '+OBJECT_NAME(ObjectID)+' REBUILD;'
        FROM FilteredIndexFragmentation(@DB,NULL,NULL,NULL, 30,10)AS FIF 
        JOIN SYS.INDEXES AS Indexes ON INDEXES.OBJECT_ID=ObjectID 
        AND INDEXES.INDEX_ID=IndexID 
        ORDER BY (IndexDepth*IndexDepth*FragmentationRate*FragmentCount/100)DESC
    END 
    ELSE
    BEGIN 
        -- Reindexa las 10 si es Medianos, 50 si es Pequenos 
        SELECT TOP (CASE WHEN @Tipo='Medianos'THEN 10 ELSE 50 END) 
        @Comando=@Comando+CHAR(13)+CHAR(10)+'ALTER INDEX ' 
        + IndexPages.Name 
        +' ON '+OBJECT_NAME(ObjectID)+' REBUILD;'
        FROM (SELECT indexes.object_id 
                ,indexes.index_id 
                ,Indexes.Name 
                ,sum(allocation_units.total_pages)as totalPages 
                FROM sys.indexes AS indexes 
                JOIN sys.partitions AS partitions 
                ON indexes.object_id=partitions.object_id 
                and indexes.index_id =partitions.index_id 
                JOIN sys.allocation_units AS allocation_units 
                ON partitions.partition_id =allocation_units.container_id 
                WHERE indexes.index_id >0 
                AND allocation_units.total_pages>0 
                GROUP BY indexes.object_id,indexes.index_id,Indexes.Name 
                HAVING sum(allocation_units.total_pages)BETWEEN 32 AND
                (CASE WHEN @Tipo='Medianos'THEN 8192 ELSE 256 END)         
            -- Medianos si tienen menos de 8192 paginas, Pequenos si tienen menos de 256 paginas 
            )AS IndexPages 

        -- No se emplea el CROSS APPLY por compatibilidad con nivel de compatibilidad 80 (SQL 2000), 
        -- es posible que tenga un importante impacto en desempeno usar el CROSS APPLY. 
        -- se recomienda usar CROSS APPLY para compatibilidad 90 o 100. 
        --    CROSS APPLY FilteredIndexFragmentation(@DB, IndexPages.object_id, IndexPages.index_id, NULL, 20,3) AS FIF 
        JOIN FilteredIndexFragmentation(@DB,NULL,NULL,NULL, 20,3)AS FIF 
        ON IndexPages.object_id=FIF.ObjectID 
        AND IndexPages.index_id=FIF.IndexID 
        -- La columna IndexDepth esta deliberadamente 2 veces, para dar prioridad a indices mas profundos. 
        ORDER BY (IndexDepth*IndexDepth*FragmentationRate*FragmentCount/100)DESC
    END 
    PRINT 'Intrucciones a ejecutar: '
	PRINT @Comando
	EXEC sp_executesql @Comando 
	PRINT 'Proceso terminado.'
END
GO

--*****************************************************************************************************************

IF exists (select * from dbo.sysobjects where id = object_id(N'[LabFn05B]') and xtype in (N'FN', N'IF', N'TF'))
    DROP FUNCTION [LabFn05B]
GO

CREATE FUNCTION dbo.LabFn05B(@Lab21C10 DATETIME, @Lab21C10E DATETIME)
RETURNS VARCHAR(9)
WITH ENCRYPTION
AS
BEGIN
    DECLARE @Result VARCHAR(9)
    DECLARE @Part1 AS INT , @Part2 AS INT, @Part3 AS INT; 

    SET @Part1 = datediff("yy", @Lab21C10, @Lab21C10E)
    IF dateadd("yy", @Part1, @Lab21C10) > @Lab21C10E set @Part1 = @Part1 - 1
        SET @Lab21C10 = dateadd("yy", @Part1, @Lab21C10)
    SET @Part2 = datediff("mm", @Lab21C10, @Lab21C10E)
    IF dateadd("mm", @Part2, @Lab21C10) > @Lab21C10E set @Part2 = @Part2 - 1
        SET @Lab21C10 = dateadd("mm", @Part2, @Lab21C10)
    SET @Part3 = datediff("dd", @Lab21C10, @Lab21C10E)

    IF @Part1 > 0
    BEGIN
        IF @Part1 = 1
            SET @Result = CAST(@Part1 AS VARCHAR)
        ELSE
            SET @Result = CAST(@Part1 AS VARCHAR)
    END
    ELSE
    BEGIN
        IF @Part1 = 0 AND @Part2 > 0
        BEGIN
            IF @Part2 = 1
                SET @Result = CAST(@Part2 AS VARCHAR) 
            ELSE
                SET @Result = CAST(@Part2 AS VARCHAR) 
        END
        ELSE
        BEGIN
            IF @Part3 = 1
			    SET @Result = CAST(@Part3 AS VARCHAR) 
		    ELSE
			    SET @Result = CAST(@Part3 AS VARCHAR) 
        END
    END

    RETURN @Result
END
GO
--*****************************************************************************************************************

IF EXISTS (select * from dbo.sysobjects where id = object_id(N'[LabFn46]'))
    DROP FUNCTION [LabFn46]
GO

CREATE FUNCTION dbo.LabFn46 (  
    @num VARCHAR(64)  
)  
RETURNS BIT  
BEGIN  
    IF LEFT(@num, 1) = '-'  
        SET @num = SUBSTRING(@num, 2, LEN(@num))  

    DECLARE @pos TINYINT  

    SET @pos = 1 + LEN(@num) - CHARINDEX('.', REVERSE(@num))  

    RETURN CASE  
    WHEN PATINDEX('%[^0-9.-]%', @num) = 0  
        AND @num NOT IN ('.', '-', '+', '^') 
        AND LEN(@num)>0  
        AND @num NOT LIKE '%-%' 
        AND  
        (  
            ((@pos = LEN(@num)+1)  
            OR @pos = CHARINDEX('.', @num))  
        )  
    THEN  
        1  
    ELSE  
    0  
    END  
END  
GO 
--*****************************************************************************************************************
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create function [dbo].[SedesArray](@sede varchar(max), @delimiter char(1), @trimSpace bit)
returns @table table(val varchar(4000))
as
begin
	declare @val varchar(4000)
	while len(@sede) > 0 
	begin
		set @val=left(@sede, isnull(nullif(charindex(@delimiter, @sede)-1, -1),len(@sede)))
		set @sede = substring(@sede,isnull(nullif(charindex(@delimiter, @sede),0),len(@sede))+1,len(@sede))
	
	if @trimSpace = 1 set @val= ltrim(rtrim(@val))
	insert into @table(val)
		values(@val)
	end
	return
end
GO
--*****************************************************************************************************************
IF exists (select * from dbo.sysobjects where id = object_id(N'[Tab24_FK_DEL]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
	drop procedure [Tab24_FK_DEL]
GO

CREATE PROCEDURE [dbo].[Tab24_FK_DEL]  

WITH ENCRYPTION
AS
BEGIN

SET NOCOUNT ON
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED

--******************************
--Borrar Foreing Key de Tab21
IF EXISTS (SELECT  1 FROM dbo.sysobjects where id = object_id(N'[FK_Tab24_Tab21]'))
BEGIN
  ALTER TABLE dbo.Tab24   
  DROP CONSTRAINT FK_Tab24_Tab21 
END

--Borrar Foreing Key de Tab22
IF EXISTS (SELECT  1 FROM dbo.sysobjects where id = object_id('FK_Tab24_Tab22'))
BEGIN
ALTER TABLE dbo.Tab24   
DROP CONSTRAINT FK_Tab24_Tab22
END  

--Borrar Foreing Key de Tab23
IF EXISTS (SELECT  1 FROM dbo.sysobjects where id = object_id('FK_Tab24_Tab23'))
BEGIN
ALTER TABLE dbo.Tab24   
DROP CONSTRAINT FK_Tab24_Tab23
END

--******************************

SET NOCOUNT OFF

END
GO
--*****************************************************************************************************************
IF exists (select * from dbo.sysobjects where id = object_id(N'[Tab24_FK_INS]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
	drop procedure [Tab24_FK_INS]
GO

CREATE PROCEDURE [dbo].[Tab24_FK_INS]  

WITH ENCRYPTION
AS
BEGIN

SET NOCOUNT ON
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED

--******************************
--Añadir Foreing Key de Tab21
IF NOT EXISTS (SELECT  1 FROM dbo.sysobjects where id = object_id(N'[FK_Tab24_Tab21]'))
BEGIN
ALTER TABLE [dbo].[Tab24]  WITH CHECK ADD  CONSTRAINT [FK_Tab24_Tab21] FOREIGN KEY([Tab21C1])
REFERENCES [dbo].[Tab21] ([Tab21C1])
END

--Añadir Foreing Key de Tab22
IF NOT EXISTS (SELECT  1 FROM dbo.sysobjects where id = object_id(N'[FK_Tab24_Tab22]'))
BEGIN
ALTER TABLE [dbo].[Tab24]  WITH CHECK ADD  CONSTRAINT [FK_Tab24_Tab22] FOREIGN KEY([Tab22C1])
REFERENCES [dbo].[Tab22] ([Tab22C1])
END

--Añadir Foreing Key de Tab23
IF NOT EXISTS (SELECT  1 FROM dbo.sysobjects where id = object_id(N'[FK_Tab24_Tab23]'))
BEGIN
ALTER TABLE [dbo].[Tab24]  WITH CHECK ADD  CONSTRAINT [FK_Tab24_Tab23] FOREIGN KEY([Tab23C53])
REFERENCES [dbo].[Tab23] ([Tab23C53])
END
--******************************

SET NOCOUNT OFF

END
GO
--*****************************************************************************************************************
----------------------------------------FIN Tablas Cubo Estadistico-----------------------------------------------------------------------------------------------

IF NOT EXISTS (select 1 from dbo.sysobjects where id = object_id(N'[Tab25]') )
BEGIN
    SET ANSI_NULLS ON
	SET QUOTED_IDENTIFIER ON
	SET ANSI_PADDING ON

	CREATE TABLE [dbo].[Tab25](
		[Tab25C1] [int] NOT NULL,
		[Tab25C2] [varchar](500) NOT NULL,
		[Tab25C3] [int] NOT NULL,
		[Tab25C4] [int] NOT NULL,
		[Tab25C5] [datetime] NOT NULL,
		[Tab25C6] [int] NOT NULL,
		[Tab25C7] [datetime] NULL,
		[Tab25C8] [int] NULL,
		[Tab25C9] [int] NULL,
		[Tab25C10] [int] NULL
	 CONSTRAINT [PK_Tab25] PRIMARY KEY CLUSTERED 
	(
		[Tab25C1] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
	 CONSTRAINT [Tab25_UN] UNIQUE NONCLUSTERED 
	(
		[Tab25C3] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY]

	SET ANSI_PADDING OFF

	ALTER TABLE [dbo].[Tab25] ADD  DEFAULT ((0)) FOR [Tab25C9]

END 
GO

IF NOT EXISTS (select 1 from dbo.sysobjects where id = object_id(N'[Tab26]') )
BEGIN
	SET ANSI_NULLS ON
	SET QUOTED_IDENTIFIER ON

	CREATE TABLE [dbo].[Tab26](
		[Tab25C1] [int] NOT NULL,
		[Tab26C1] [int] NOT NULL,
		[Tab26C2] [datetime] NULL,
		[Tab26C3] [int] NULL,
	 CONSTRAINT [PK_Tab26] PRIMARY KEY CLUSTERED 
	(
		[Tab25C1] ASC,
		[Tab26C1] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY]

END
GO

IF NOT EXISTS (select 1 from dbo.sysobjects where id = object_id(N'[Tab27]') )
BEGIN
	SET ANSI_NULLS ON
	SET QUOTED_IDENTIFIER ON

	CREATE TABLE [dbo].[Tab27](
		[Tab27C1] [int] NOT NULL IDENTITY(1,1),
		[Tab25C3] [int] NOT NULL,
		[Tab27C2] [int] NOT NULL,
		[Tab27C3] [datetime] NULL,
		[Tab27C4] [int] NULL
	 CONSTRAINT [PK_Tab27] PRIMARY KEY CLUSTERED 
	(
		[Tab25C3] ASC,
		[Tab27C2] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY]

END
GO

IF NOT EXISTS (select 1 from dbo.sysobjects where id = object_id(N'[Tab28]') )
BEGIN
	SET ANSI_NULLS ON
	SET QUOTED_IDENTIFIER ON

	CREATE TABLE [dbo].[Tab28](
		[Tab28C1] [numeric](28, 0) NOT NULL,
		[Tab28C2] [int] NOT NULL,
		[Tab28C3] [int] NOT NULL,
		[Tab28C4] [varchar](128) NOT NULL,
		[Tab28C5] [int] NOT NULL,
		[Tab28C6] [varchar](64) NULL,
		[Tab28C7] [varchar](50) NULL,
		[Tab28C8] [int] NULL,
		[Tab28C9] [varchar](128) NULL,
		[Tab28C10] [char](1) NOT NULL,
		[Tab28C11] [varchar](32) NULL,
		[Tab28C12] [varchar](200) NULL,
		[Tab28C13] [datetime] NOT NULL,
		[Tab28C14] [int] NULL,
		[Tab28C15] [varchar](50) NULL,
		[Tab28C16] [datetime] NOT NULL
	) ON [PRIMARY]

END
GO

IF NOT EXISTS (select 1 from dbo.sysobjects where id = object_id(N'[Tab29]') )
BEGIN
	SET ANSI_NULLS ON
	SET QUOTED_IDENTIFIER ON

	CREATE TABLE [dbo].[Tab29](
		[Tab29C1] [int] NOT NULL IDENTITY(1,1),
		[Tab25C1] [int] NOT NULL,
		[Tab29C2] [int] NOT NULL,
		[Tab29C3] [datetime] NULL,
		[Tab29C4] [int] NULL
	 CONSTRAINT [PK_Tab29] PRIMARY KEY CLUSTERED 
	(
		[Tab25C1] ASC,
		[Tab29C2] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY]

END
GO

IF NOT EXISTS (select 1 from dbo.sysobjects where id = object_id(N'[Tab34]') )
BEGIN
CREATE TABLE Tab34 
    (
     Tab34C1 INTEGER NOT NULL , 
     Tab34C2 NVARCHAR (50) NOT NULL , 
     Tab34C3 INTEGER NOT NULL , 
     Tab34C4 NVARCHAR(500) NOT NULL , 
     Tab34C5 INTEGER NOT NULL, 
     Tab34C6 DATETIME NOT NULL , 
     Tab34C7 INTEGER NOT NULL , 
     Tab34C8 DATETIME , 
     Tab34C9 INTEGER ,
	 Tab34C10 NVARCHAR(500) NOT NULL,
	 Tab34C11 NVARCHAR(500) NOT NULL,
	 Tab34C12 INTEGER NOT NULL
    )
    ON "default"

ALTER TABLE Tab34 ADD CONSTRAINT Tab34_PK PRIMARY KEY CLUSTERED (Tab34C1)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )
     ON "default" 
END
GO
GO


IF NOT EXISTS (SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tab01' AND COLUMN_NAME = 'Tab01C9')
BEGIN
	Alter Table Tab01 ADD Tab01C9 int not null default 0
END
GO

IF NOT EXISTS (SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tab05' AND COLUMN_NAME = 'Tab05C16')
BEGIN
	Alter Table Tab05 ADD Tab05C16 int not null default 0
END
GO

IF NOT EXISTS (SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tab05' AND COLUMN_NAME = 'Tab05C16')
BEGIN
	Alter Table Tab05 ADD Tab05C17 VARCHAR(10)
END
GO

IF NOT EXISTS (SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tab07' AND COLUMN_NAME = 'Tab07C9')
BEGIN
	Alter Table Tab07 ADD Tab07C9 int not null default 0
END
GO

IF NOT EXISTS (SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tab18' AND COLUMN_NAME = 'Tab18C9')
BEGIN
	Alter Table Tab18 ADD Tab18C9 int not null default 0
END
GO

IF NOT EXISTS (SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tab25' AND COLUMN_NAME = 'Tab25C11')
BEGIN
	Alter Table Tab25 ADD Tab25C11 int
END
GO

IF NOT EXISTS (SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tab28' AND COLUMN_NAME = 'Tab28C17')
BEGIN
	Alter Table Tab28 ADD Tab28C17 DateTime
END
GO

ALTER TABLE Tab04 ALTER COLUMN Tab04C3 varchar(50);
go

ALTER TABLE Tab10 ALTER COLUMN Tab10C3 varchar(50);
go

ALTER TABLE Tab16 ALTER COLUMN Tab16C3 varchar(50);
go

ALTER TABLE Tab28 ALTER COLUMN Tab28C3 varchar(50);
go