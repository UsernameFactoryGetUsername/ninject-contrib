/****** Object:  ForeignKey [FK__Posts__BlogId__145C0A3F]    Script Date: 04/17/2008 22:59:40 ******/
ALTER TABLE [dbo].[Posts] DROP CONSTRAINT [FK__Posts__BlogId__145C0A3F]
GO
/****** Object:  Table [dbo].[ModuleVersions]    Script Date: 04/17/2008 22:59:38 ******/
DROP TABLE [dbo].[ModuleVersions]
GO
/****** Object:  Table [dbo].[KeyTable]    Script Date: 04/17/2008 22:59:37 ******/
DROP TABLE [dbo].[KeyTable]
GO
/****** Object:  Table [dbo].[ApplicationEvents]    Script Date: 04/17/2008 22:59:35 ******/
DROP TABLE [dbo].[ApplicationEvents]
GO
/****** Object:  Table [dbo].[Posts]    Script Date: 04/17/2008 22:59:40 ******/
DROP TABLE [dbo].[Posts]
GO
/****** Object:  Table [dbo].[Blogs]    Script Date: 04/17/2008 22:59:37 ******/
DROP TABLE [dbo].[Blogs]
GO
/****** Object:  Table [dbo].[ModuleVersions]    Script Date: 04/17/2008 22:59:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ModuleVersions](
	[ModuleName] [nvarchar](64) NOT NULL,
	[CurrentVersion] [int] NOT NULL DEFAULT ((0)),
PRIMARY KEY CLUSTERED 
(
	[ModuleName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KeyTable]    Script Date: 04/17/2008 22:59:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KeyTable](
	[NextId] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ApplicationEvents]    Script Date: 04/17/2008 22:59:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApplicationEvents](
	[Id] [int] NOT NULL,
	[ApplicationContext] [uniqueidentifier] NULL,
	[EventTime] [datetime] NULL,
	[Exception] [nvarchar](max) NULL,
	[Level] [nvarchar](256) NULL,
	[LoggerName] [nvarchar](max) NULL,
	[Message] [nvarchar](max) NULL,
	[Sequence] [int] NULL,
	[StackTrace] [nvarchar](max) NULL,
	[UserStackFrame] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Blogs]    Script Date: 04/17/2008 22:59:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Blogs](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[LockVersion] [int] NOT NULL DEFAULT ((0)),
	[CreatedOn] [datetime] NULL,
	[UpdatedOn] [datetime] NULL,
	[DeletedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Posts]    Script Date: 04/17/2008 22:59:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Posts](
	[Id] [int] NOT NULL,
	[BlogId] [int] NOT NULL,
	[Title] [nvarchar](255) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[PostDate] [datetime] NOT NULL,
	[LockVersion] [int] NOT NULL DEFAULT ((0)),
	[CreatedOn] [datetime] NULL,
	[UpdatedOn] [datetime] NULL,
	[DeletedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  ForeignKey [FK__Posts__BlogId__145C0A3F]    Script Date: 04/17/2008 22:59:40 ******/
ALTER TABLE [dbo].[Posts]  WITH CHECK ADD FOREIGN KEY([BlogId])
REFERENCES [dbo].[Blogs] ([Id])
GO
Insert into KeyTable(NextId) Values(1)
GO