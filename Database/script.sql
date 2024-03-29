USE [CoachingMS]
GO
/****** Object:  Table [dbo].[Class]    Script Date: 9/5/2019 4:33:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Class](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Class] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Students]    Script Date: 9/5/2019 4:33:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Students](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[StudentId] [nvarchar](max) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Contact] [nvarchar](max) NOT NULL,
	[Gender] [nvarchar](50) NOT NULL,
	[Institute] [nvarchar](max) NOT NULL,
	[Class] [nvarchar](50) NOT NULL,
	[Groups] [nvarchar](50) NOT NULL,
	[Subjects] [nvarchar](max) NOT NULL,
	[Address] [nvarchar](max) NOT NULL,
	[Father] [nvarchar](50) NOT NULL,
	[Nid] [nvarchar](50) NOT NULL,
	[Fees] [decimal](18, 2) NOT NULL,
	[Images] [nvarchar](max) NOT NULL,
	[Date] [date] NOT NULL,
 CONSTRAINT [PK_Students] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tuitionFees]    Script Date: 9/5/2019 4:33:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tuitionFees](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[StudentId] [nvarchar](max) NULL,
	[Fees] [decimal](18, 2) NULL,
	[Due] [decimal](18, 2) NULL,
	[Date] [date] NULL,
 CONSTRAINT [PK_tuitionFees] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
