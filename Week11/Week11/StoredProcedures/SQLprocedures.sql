USE [PROG260FA22]
GO
/****** Object:  StoredProcedure [dbo].[Chart3]    Script Date: 11/20/2022 7:50:53 PM ******/
DROP PROCEDURE [dbo].[Chart3]
GO
/****** Object:  StoredProcedure [dbo].[Chart2]    Script Date: 11/20/2022 7:50:53 PM ******/
DROP PROCEDURE [dbo].[Chart2]
GO
/****** Object:  StoredProcedure [dbo].[Chart1]    Script Date: 11/20/2022 7:50:53 PM ******/
DROP PROCEDURE [dbo].[Chart1]
GO
/****** Object:  StoredProcedure [dbo].[Chart1]    Script Date: 11/20/2022 7:50:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Chart1]
AS
BEGIN
SELECT DISTINCT (Location), COUNT(Location) as 'MonsterCount'
FROM dbo.Monsters
GROUP BY Location
END
GO
/****** Object:  StoredProcedure [dbo].[Chart2]    Script Date: 11/20/2022 7:50:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Chart2]
AS
BEGIN
SELECT DISTINCT(HP), COUNT(HP) as 'count'
FROM dbo.Monsters
GROUP BY HP
END
GO
/****** Object:  StoredProcedure [dbo].[Chart3]    Script Date: 11/20/2022 7:50:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Chart3]
AS
BEGIN
SELECT TOP 10  HP, MP
FROM dbo.Monsters
ORDER BY HP DESC, MP DESC
END
GO
