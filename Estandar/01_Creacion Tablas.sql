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
	    [Tab21C1] [INT] NOT NULL,
	    [Tab21C2] [varchar](50) NOT NULL,
		[Tab21C3] [BIGINT] NOT NULL,
		[Tab21C4] [INT] NOT NULL,
		[Tab21C5] [varchar](256) NOT NULL,
	    [Tab21C6] [varchar](64) NOT NULL,
	    [Tab21C7] [varchar](64) NOT NULL,
	    [Tab21C8] [varchar](50) NOT NULL,
	    [Tab21C9] [varchar](50) NULL,
	    [Tab21C10] [varchar](50) NULL,
	    [Tab21C11] [varchar](50) NOT NULL,
	    [Tab21C12] [varchar](50) NULL,
	    [Tab21C13] [varchar](50) NULL,
	    [Tab21C14] [varchar](10) NULL,
	    [Tab21C15] [varchar](256) NULL
     CONSTRAINT [PK_Tab21] PRIMARY KEY CLUSTERED (
	    [Tab21C3] ASC
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
	    [Tab22C1] [BIGINT] NOT NULL,
	    [Tab21C1] [INT] NOT NULL,
	    [Tab21C2] [varchar](50) NOT NULL,
		[Tab21C3] [BIGINT] NOT NULL,
	    [Tab22C2] [varchar](50) NULL,
	    [Tab22C3] [varchar](50) NOT NULL,
	    [Tab22C4] [varchar](50) NULL,
	    [Tab22C5] [varchar](50) NULL,
	    [Tab22C6] [varchar](50) NULL,
	    [Tab22C7] [varchar](50) NULL,
	    [Tab22C8] [varchar](10) NULL,
	    [Tab22C9] [INT] NOT NULL,
	    [Tab22C10] [varchar](256) NULL,
	    [Tab22C11] [BIGINT] NOT NULL,
	    [Tab22C12] [varchar](10) NULL,
		[Tab22C13] [varchar](256) NULL
     CONSTRAINT [PK_Ordenes] PRIMARY KEY CLUSTERED 
    (
	    [Tab22C11] ASC
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
		[Tab23C1] [BIGINT] NOT NULL,
		[Tab22C11] [BIGINT] NOT NULL,
		[Tab22C1] [BIGINT] NOT NULL,
		[Tab21C1] [INT] NOT NULL,
		[Tab21C2] [varchar](50) NOT NULL,
		[Tab21C3] [BIGINT] NOT NULL,
		[Tab23C2] [INT] NOT NULL,
		[Tab23C3] [varchar](256) NULL,
		[Tab23C4] [varchar](16) NOT NULL,
		[Tab23C5] [varchar](256) NULL,
		[Tab23C6] [varchar](50) NULL,
		[Tab23C7] [varchar](50) NULL,
		[Tab23C8] [varchar](50) NULL,
		[Tab23C9] [varchar](50) NULL,
		[Tab23C10] [varchar](50) NULL,
		[Tab23C11] [varchar](50) NULL,
		[Tab23C12] [varchar](50) NULL,
		[Tab23C13] [tinyint] NULL,
		[Tab23C14] [tinyint] NULL,
		[Tab23C15] [tinyint] NULL,
		[Tab23C16] [varchar](50) NULL,
		[Tab23C17] [varchar](50) NULL,
		[Tab23C18] [varchar](50) NULL,
		[Tab23C19] [varchar](50) NULL,
		[Tab23C20] [varchar](50) NULL,
		[Tab23C21] [tinyint] NULL,
		[Tab23C22] [tinyint] NULL,
		[Tab23C23] [varchar](128) NULL,
		[Tab23C24] [varchar](50) NULL,
		[Tab23C25] [varchar](50) NULL,
		[Tab23C26] [varchar](50) NULL,
		[Tab23C27] [int] NULL,
		[Tab23C28] [varchar](50) NULL,
		[Tab23C29] [varchar](50) NULL,
		[Tab23C30] [int] NULL,
		[Tab23C31] [varchar](100) NULL,
		[Tab23C32] [tinyint] NULL,
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
		[Tab23C54] [varchar](50) NULL,
		[Tab23C55] [varchar](50) NULL,
		[Tab23C56] [varchar](50) NULL,
		[Tab23C57] [varchar](50) NULL,
		[Tab23C58] [varchar](50) NULL,
		[Tab23C59] [varchar](50) NULL
	 CONSTRAINT [PK_Resultados] PRIMARY KEY CLUSTERED 
	(
		[Tab23C1] ASC
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
		[Tab24C1] [INT] IDENTITY(1,1) NOT NULL,
		[Tab21C3] [BIGINT] NOT NULL,
		[Tab22C11] [BIGINT] NOT NULL,
		[Tab23C1] [BIGINT] NOT NULL,
		[Tab24C2] [INT] NULL,
		[Tab24C3] [float] NULL,
		[Tab24C4] [float] NULL,
	 CONSTRAINT [PK_Tab24] PRIMARY KEY CLUSTERED 
	(
		[Tab24C1] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY]

	ALTER TABLE [dbo].[Tab24]  WITH CHECK ADD  CONSTRAINT [FK_Tab24_Tab21] FOREIGN KEY([Tab21C3])
	REFERENCES [dbo].[Tab21] ([Tab21C3])

	ALTER TABLE [dbo].[Tab24] CHECK CONSTRAINT [FK_Tab24_Tab21]

	ALTER TABLE [dbo].[Tab24]  WITH CHECK ADD  CONSTRAINT [FK_Tab24_Tab22] FOREIGN KEY([Tab22C11])
	REFERENCES [dbo].[Tab22] ([Tab22C11])

	ALTER TABLE [dbo].[Tab24] CHECK CONSTRAINT [FK_Tab24_Tab22]

	ALTER TABLE [dbo].[Tab24]  WITH CHECK ADD  CONSTRAINT [FK_Tab24_Tab23] FOREIGN KEY([Tab23C1])
	REFERENCES [dbo].[Tab23] ([Tab23C1])

	ALTER TABLE [dbo].[Tab24] CHECK CONSTRAINT [FK_Tab24_Tab23]

END 
GO


IF NOT EXISTS (select 1 from dbo.sysobjects where id = object_id(N'[Tab30]') )
BEGIN
    SET ANSI_NULLS ON
    
    SET QUOTED_IDENTIFIER ON
    
    SET ANSI_PADDING ON
    
    CREATE TABLE [dbo].[Tab30](
	    [Tab30C1] [INT] IDENTITY(1,1) NOT NULL,
	    [Tab23C1] [BIGINT] NULL,
		[Tab30C2] [INT] NOT NULL,
		[Tab30C3] [INT] NOT NULL,
	    [Tab30C4] [varchar](64) NULL,
	    [Tab30C5] [varchar](500) NULL,
	    [Tab30C6] [int] NOT NULL,
	    [Tab30C7] [varchar](128) NULL,
	    [Tab30C8] [varchar](50) NULL,
	    [Tab30C9] [varchar](16) NULL,
	    [Tab30C10] [varchar](50) NULL,
	    [Tab30C11] [varchar](256) NULL,
	    [Tab30C12] [varchar](50) NULL,
	    [Tab30C13] [varchar](10) NULL,
		[Tab30C14] [int] NOT NULL,
	    [Tab30C15] [varchar](16) NULL,
	    [Tab30C16] [varchar](7000) NULL,
	    [Tab30C17] [varchar](50) NULL,
	    [Tab30C18] [varchar](64) NULL,
	    [Tab30C19] [varchar](100) NULL,
	    [Tab30C20] [int] NOT NULL
	CONSTRAINT [PK_Tab30] PRIMARY KEY CLUSTERED 
	(
		[Tab30C1] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY]

	ALTER TABLE [dbo].[Tab30]  WITH CHECK ADD  CONSTRAINT [FK_Tab30_Tab23] FOREIGN KEY([Tab23C1])
	REFERENCES [dbo].[Tab23] ([Tab23C1])

	ALTER TABLE [dbo].[Tab30] CHECK CONSTRAINT [FK_Tab30_Tab23]

END 
GO


IF NOT EXISTS (select 1 from dbo.sysobjects where id = object_id(N'[Tab31]') )
BEGIN
    SET ANSI_NULLS ON
    
    SET QUOTED_IDENTIFIER ON
    
    SET ANSI_PADDING ON
    
    CREATE TABLE [dbo].[Tab31](
	    [Tab31C1] [INT] IDENTITY(1,1) NOT NULL,
		[Tab23C1] [BIGINT] NULL,
	    [Tab31C2] [INT] NOT NULL,
		[Tab31C3] [int] NOT NULL,
		[Tab31C4] [int] NULL,
	    [Tab31C5] [varchar](1000) NULL,
		[Tab31C6] [int] NULL,
	    [Tab31C7] [varchar](2000) NULL,
		[Tab31C8] [varchar](2000) NULL,
	    [Tab31C9] [varchar](256) NULL,
	    [Tab31C10] [varchar](50) NULL,
	    [Tab31C11] [varchar](10) NULL,
	    [Tab31C12] [varchar](16) NULL,
	    [Tab31C13] [varchar](64) NULL,
	    [Tab31C14] [varchar](16) NULL,
		[Tab31C15] [varchar](30) NULL,
		[Tab31C16] [varchar](20) NULL,
		[Tab31C17] [int] NOT NULL
	CONSTRAINT [PK_Tab31] PRIMARY KEY CLUSTERED 
	(
		[Tab31C1] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY]

	ALTER TABLE [dbo].[Tab31]  WITH CHECK ADD  CONSTRAINT [FK_Tab31_Tab23] FOREIGN KEY([Tab23C1])
	REFERENCES [dbo].[Tab23] ([Tab23C1])

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
	    [Tab22C1] [bigint] NOT NULL,
		[Tab22C11] [BIGINT] NOT NULL,
		[Tab32C2] [int] NOT NULL,
		[Tab32C3] [int] NOT NULL,
	    [Tab32C4] [int] NULL,
		[Tab32C5] [varchar](1000) NULL,
	    [Tab32C6] [int] NULL,
		[Tab32C7] [varchar](126) NULL,
	    [Tab32C8] [varchar](2000) NULL,
	    [Tab32C9]  [varchar](256) NULL,
	    [Tab32C10] [varchar](50) NULL,
	    [Tab32C11] [varchar](10) NULL
	CONSTRAINT [PK_Tab32] PRIMARY KEY CLUSTERED (
		[Tab32C1] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY]

	ALTER TABLE [dbo].[Tab32]  WITH CHECK ADD  CONSTRAINT [FK_Tab32_Tab22] FOREIGN KEY([Tab22C11])
	REFERENCES [dbo].[Tab22] ([Tab22C11])

	ALTER TABLE [dbo].[Tab32] CHECK CONSTRAINT [FK_Tab32_Tab22]

END 
GO



IF NOT EXISTS (select 1 from dbo.sysobjects where id = object_id(N'[Tab33]') )
BEGIN
    SET ANSI_NULLS ON
    
    SET QUOTED_IDENTIFIER ON
    
    SET ANSI_PADDING ON
    
    CREATE TABLE [dbo].[Tab33](
	    [Tab33C1] [INT] IDENTITY(1,1) NOT NULL,
		[Tab23C1] [BIGINT] NOT NULL,
	    [Tab33C2] [int] NOT NULL,
		[Tab33C3] [int] NOT NULL,
		[Tab33C4] [int] NOT NULL,
	    [Tab33C5] [varchar](64) NULL,
		[Tab33C6] [int] NOT NULL,
	    [Tab33C7] [int] NULL,
		[Tab33C8] [varchar](50) NULL,
	    [Tab33C9] [varchar](50) NULL,
	    [Tab33C10] [varchar](10) NULL,
	    [Tab33C11] [int] NOT NULL,
	    [Tab33C12] [varchar](256) NULL
	CONSTRAINT [PK_Tab33] PRIMARY KEY CLUSTERED 
	(
		[Tab33C1] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY]

	ALTER TABLE [dbo].[Tab33]  WITH CHECK ADD  CONSTRAINT [FK_Tab33_Tab23] FOREIGN KEY([Tab23C1])
	REFERENCES [dbo].[Tab23] ([Tab23C1])

	ALTER TABLE [dbo].[Tab33] CHECK CONSTRAINT [FK_Tab33_Tab23]

END 
GO
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

IF NOT EXISTS (SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Tab05' AND COLUMN_NAME = 'Tab05C17')
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