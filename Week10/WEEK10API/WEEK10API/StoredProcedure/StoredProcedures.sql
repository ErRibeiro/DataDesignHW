USE [PROG260FA22]
GO
/****** Object:  StoredProcedure [dbo].[spUpdateByID]    Script Date: 11/13/2022 4:55:27 AM ******/
DROP PROCEDURE [dbo].[spUpdateByID]
GO
/****** Object:  StoredProcedure [dbo].[spGetByID]    Script Date: 11/13/2022 4:55:27 AM ******/
DROP PROCEDURE [dbo].[spGetByID]
GO
/****** Object:  StoredProcedure [dbo].[spGetAllMonsters]    Script Date: 11/13/2022 4:55:27 AM ******/
DROP PROCEDURE [dbo].[spGetAllMonsters]
GO
/****** Object:  StoredProcedure [dbo].[spDeleteByID]    Script Date: 11/13/2022 4:55:27 AM ******/
DROP PROCEDURE [dbo].[spDeleteByID]
GO
/****** Object:  StoredProcedure [dbo].[spDeleteByID]    Script Date: 11/13/2022 4:55:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spDeleteByID]
@ID int
AS
BEGIN
SET NOCOUNT ON;
DELETE FROM [dbo].[Monsters]
WHERE [dbo].[Monsters].id = @ID
END
GO
/****** Object:  StoredProcedure [dbo].[spGetAllMonsters]    Script Date: 11/13/2022 4:55:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spGetAllMonsters]
AS
BEGIN
SET NOCOUNT ON;
SELECT * 
FROM [dbo].[Monsters]
ORDER BY [id]
END
GO
/****** Object:  StoredProcedure [dbo].[spGetByID]    Script Date: 11/13/2022 4:55:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spGetByID]
@ID int
AS
BEGIN
SET NOCOUNT ON;
SELECT * 
FROM [dbo].[Monsters]
WHERE [dbo].[Monsters].id = @ID
END
GO
/****** Object:  StoredProcedure [dbo].[spUpdateByID]    Script Date: 11/13/2022 4:55:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spUpdateByID]
@ID int,
@Name varchar(50) = null,
@Type varchar(50) = null,
@HP int = null,
@MP int = null,
@Location varchar(50) = null
AS
BEGIN

UPDATE [dbo].[Monsters]
SET [Name] = (CASE WHEN @Name is not null THEN @Name ELSE [Name] END), 
[Type] = (CASE WHEN @Type is not null THEN @Type ELSE [Type] END), 
[HP] = (CASE WHEN @HP is not null THEN @HP ELSE [HP] END), 
[MP] = (CASE WHEN @MP is not null THEN @MP ELSE [MP] END), 
[Location] = (CASE WHEN @Location is not null THEN @Location ELSE [Location] END)
WHERE [id] = @ID
END
GO
