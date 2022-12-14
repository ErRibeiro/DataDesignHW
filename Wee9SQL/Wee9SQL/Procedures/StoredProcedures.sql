USE [PROG260FA22]
GO
/****** Object:  StoredProcedure [dbo].[spReport4]    Script Date: 11/12/2022 6:08:29 PM ******/
DROP PROCEDURE [dbo].[spReport4]
GO
/****** Object:  StoredProcedure [dbo].[spReport3]    Script Date: 11/12/2022 6:08:29 PM ******/
DROP PROCEDURE [dbo].[spReport3]
GO
/****** Object:  StoredProcedure [dbo].[spReport2]    Script Date: 11/12/2022 6:08:29 PM ******/
DROP PROCEDURE [dbo].[spReport2]
GO
/****** Object:  StoredProcedure [dbo].[spReport1]    Script Date: 11/12/2022 6:08:29 PM ******/
DROP PROCEDURE [dbo].[spReport1]
GO
/****** Object:  StoredProcedure [dbo].[InsertTable4]    Script Date: 11/12/2022 6:08:29 PM ******/
DROP PROCEDURE [dbo].[InsertTable4]
GO
/****** Object:  StoredProcedure [dbo].[InsertTable3]    Script Date: 11/12/2022 6:08:29 PM ******/
DROP PROCEDURE [dbo].[InsertTable3]
GO
/****** Object:  StoredProcedure [dbo].[InsertTable2]    Script Date: 11/12/2022 6:08:29 PM ******/
DROP PROCEDURE [dbo].[InsertTable2]
GO
/****** Object:  StoredProcedure [dbo].[InsertTable1]    Script Date: 11/12/2022 6:08:29 PM ******/
DROP PROCEDURE [dbo].[InsertTable1]
GO
/****** Object:  StoredProcedure [dbo].[InsertTable1]    Script Date: 11/12/2022 6:08:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[InsertTable1]
@StudentID nvarchar(50),
@FullName nvarchar(50),
@SSN nvarchar(50),
@FullAddress nvarchar(500),
@Phone nvarchar(50)
AS
BEGIN
SET NOCOUNT ON;
INSERT INTO [dbo].[Table_1]
([ID], [Full_Name], [SSN], [Full_Address], [Phone])
VALUES (@StudentID, @FullName, @SSN, @FullAddress, @Phone)
END
GO
/****** Object:  StoredProcedure [dbo].[InsertTable2]    Script Date: 11/12/2022 6:08:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[InsertTable2]
@StudentID nvarchar(50),
@FullName nvarchar(50),
@Total nvarchar(50),
@Incomplete nvarchar(50),
@Complete nvarchar(50),
@Progress nvarchar(50)
AS
BEGIN
SET NOCOUNT ON;
INSERT INTO [dbo].[Table_2]
([ID], [Full_Name],[CoursesCompleted],[CoursesIncompleted] ,[CoursesInprogress], [TotalCorses])
VALUES (@StudentID, @FullName, @Complete, @Incomplete, @Progress, @Total)
END
GO
/****** Object:  StoredProcedure [dbo].[InsertTable3]    Script Date: 11/12/2022 6:08:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[InsertTable3]
@Code nvarchar(50),
@Complete nvarchar(50),
@Failed nvarchar(50),
@Enrolled nvarchar(50)
AS
BEGIN
SET NOCOUNT ON;
INSERT INTO [dbo].[Table_3]
([Course Code], NumberCompleted, [NumberFailed/Dropped], NumberCurrentlyEnrolled)
VALUES (@Code, @Complete,@Failed,@Enrolled)
END
GO
/****** Object:  StoredProcedure [dbo].[InsertTable4]    Script Date: 11/12/2022 6:08:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[InsertTable4] 
@Code nvarchar(50),
@IDs nvarchar(50),
@State nvarchar(50)
AS
BEGIN
SET NOCOUNT ON;
INSERT INTO Table_4
(CourseCode, EnrolledStudentIDs,MostState)
VALUES (@Code, @IDs, @State)
END
GO
/****** Object:  StoredProcedure [dbo].[spReport1]    Script Date: 11/12/2022 6:08:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spReport1]
AS
BEGIN
SELECT s.id as 'ID',
CONCAT(s.first_name,' ',s.last_name) as Full_Name,
CASE
WHEN ssn  is null then 'N/A'
WHEN ssn IS NOT NULL then SUBSTRING(CAST(si.ssn as nvarchar(40)), 8, 10)
else ssn
END as SSN,
CASE
WHEN address  is null then 'N/A'
WHEN address IS NOT NULL then CONCAT(si.address,', ',si.city,', ',SUBSTRING(CAST(si.state as nvarchar(2)), 1, 2))
END as Full__Address,
CASE
WHEN phone  is null then '000-000-0000'
ELSE phone
END as Phone
FROM [Student_Info] AS si
LEFT JOIN [Student] AS s
ON s.id=si.student_id

END
GO
/****** Object:  StoredProcedure [dbo].[spReport2]    Script Date: 11/12/2022 6:08:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spReport2]

AS
BEGIN
SELECT s.id,
CONCAT(s.first_name, ' ',s.last_name) as 'Full_Name',
COUNT(se.student_id) as TotalCourses,
COUNT(CASE WHEN se.completed = 1 THEN 1 END) as CompletedCourses,
COUNT(CASE WHEN se.completed = 0 THEN 1 END) as IncompleteCourses,
COUNT(CASE WHEN se.completed IS NULL THEN 1 END) as InProgressCourses
FROM Student as s LEFT OUTER JOIN Student_Enrollment as se ON s.id = se.student_id
GROUP BY s.id,s.first_name, s.last_name
END
GO
/****** Object:  StoredProcedure [dbo].[spReport3]    Script Date: 11/12/2022 6:08:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spReport3]

AS
BEGIN
SELECT DISTINCT(course_code),
COUNT(CASE WHEN se.completed IS NULL THEN 1 END) as CurrentlyEnrolled,
COUNT(CASE WHEN se.completed = 0 THEN 1 END) as FailedDropped,
COUNT(CASE WHEN se.completed = 1 THEN 1 END) as Completed
FROM Student_Enrollment as se
GROUP BY course_code
END
GO
/****** Object:  StoredProcedure [dbo].[spReport4]    Script Date: 11/12/2022 6:08:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spReport4]
AS
BEGIN
SELECT se.course_code, STRING_AGG(se.student_id, ',') as StudentIDsEnrolled, Max(si.state) as CommonState
FROM Student_Info as si
LEFT JOIN  Student_Enrollment as se ON se.student_id = si.student_id
GROUP BY se.course_code
END
GO
