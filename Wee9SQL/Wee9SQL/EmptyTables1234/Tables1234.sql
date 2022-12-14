USE [PROG260FA22]
GO
/****** Object:  Table [dbo].[Table_4]    Script Date: 11/12/2022 6:11:33 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Table_4]') AND type in (N'U'))
DROP TABLE [dbo].[Table_4]
GO
/****** Object:  Table [dbo].[Table_3]    Script Date: 11/12/2022 6:11:33 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Table_3]') AND type in (N'U'))
DROP TABLE [dbo].[Table_3]
GO
/****** Object:  Table [dbo].[Table_2]    Script Date: 11/12/2022 6:11:33 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Table_2]') AND type in (N'U'))
DROP TABLE [dbo].[Table_2]
GO
/****** Object:  Table [dbo].[Table_1]    Script Date: 11/12/2022 6:11:33 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Table_1]') AND type in (N'U'))
DROP TABLE [dbo].[Table_1]
GO
/****** Object:  Table [dbo].[Table_1]    Script Date: 11/12/2022 6:11:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table_1](
	[ID] [nvarchar](50) NULL,
	[Full_Name] [nvarchar](50) NULL,
	[SSN] [nvarchar](50) NULL,
	[Full_Address] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Table_2]    Script Date: 11/12/2022 6:11:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table_2](
	[ID] [nvarchar](50) NULL,
	[Full_Name] [nvarchar](50) NULL,
	[CoursesCompleted] [nvarchar](50) NULL,
	[CoursesIncompleted] [nvarchar](50) NULL,
	[CoursesInprogress] [nvarchar](50) NULL,
	[TotalCorses] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Table_3]    Script Date: 11/12/2022 6:11:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table_3](
	[Course Code] [nvarchar](50) NULL,
	[NumberCurrentlyEnrolled] [nvarchar](50) NULL,
	[NumberCompleted] [nvarchar](50) NULL,
	[NumberFailed/Dropped] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Table_4]    Script Date: 11/12/2022 6:11:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table_4](
	[CourseCode] [nvarchar](50) NULL,
	[EnrolledStudentIDs] [nvarchar](100) NULL,
	[MostState] [nvarchar](50) NULL
) ON [PRIMARY]
GO
