USE [PROG260FA22]
GO
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPaneCount' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'view_SuppliersPerFood'
GO
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPane1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'view_SuppliersPerFood'
GO
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPaneCount' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'view_Managers'
GO
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPane1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'view_Managers'
GO
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPaneCount' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'view_FoodsPerSupplier'
GO
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPane1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'view_FoodsPerSupplier'
GO
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPaneCount' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'view_EmployeePins'
GO
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPane1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'view_EmployeePins'
GO
ALTER TABLE [dbo].[SupplierANDFoods] DROP CONSTRAINT [FK_Supplier_Foods_Suppliers]
GO
ALTER TABLE [dbo].[SupplierANDFoods] DROP CONSTRAINT [FK_Supplier_Foods_PetFoods]
GO
ALTER TABLE [dbo].[Employee_Pins] DROP CONSTRAINT [FK_EmployeePins_Employees]
GO
ALTER TABLE [dbo].[Employee_Pins] DROP CONSTRAINT [FK_EmployeePins_EmployeePins]
GO
ALTER TABLE [dbo].[Employee] DROP CONSTRAINT [FK_Employees_Employees]
GO
/****** Object:  View [dbo].[view_SuppliersPerFood]    Script Date: 12/5/2022 10:50:14 AM ******/
DROP VIEW [dbo].[view_SuppliersPerFood]
GO
/****** Object:  View [dbo].[view_Managers]    Script Date: 12/5/2022 10:50:14 AM ******/
DROP VIEW [dbo].[view_Managers]
GO
/****** Object:  View [dbo].[view_EmployeePins]    Script Date: 12/5/2022 10:50:14 AM ******/
DROP VIEW [dbo].[view_EmployeePins]
GO
/****** Object:  Table [dbo].[Employee_Pins]    Script Date: 12/5/2022 10:50:14 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Employee_Pins]') AND type in (N'U'))
DROP TABLE [dbo].[Employee_Pins]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 12/5/2022 10:50:14 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Employee]') AND type in (N'U'))
DROP TABLE [dbo].[Employee]
GO
/****** Object:  View [dbo].[view_FoodsPerSupplier]    Script Date: 12/5/2022 10:50:14 AM ******/
DROP VIEW [dbo].[view_FoodsPerSupplier]
GO
/****** Object:  Table [dbo].[Suppliers]    Script Date: 12/5/2022 10:50:14 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Suppliers]') AND type in (N'U'))
DROP TABLE [dbo].[Suppliers]
GO
/****** Object:  Table [dbo].[SupplierANDFoods]    Script Date: 12/5/2022 10:50:14 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SupplierANDFoods]') AND type in (N'U'))
DROP TABLE [dbo].[SupplierANDFoods]
GO
/****** Object:  Table [dbo].[PetFood]    Script Date: 12/5/2022 10:50:14 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PetFood]') AND type in (N'U'))
DROP TABLE [dbo].[PetFood]
GO
/****** Object:  Table [dbo].[PetFood]    Script Date: 12/5/2022 10:50:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PetFood](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[food_Name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_PetFoods] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SupplierANDFoods]    Script Date: 12/5/2022 10:50:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SupplierANDFoods](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[supplier_ID] [int] NOT NULL,
	[food_ID] [int] NOT NULL,
 CONSTRAINT [PK_Supplier_Foods] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Suppliers]    Script Date: 12/5/2022 10:50:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Suppliers](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[supplier_Name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Suppliers] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  View [dbo].[view_FoodsPerSupplier]    Script Date: 12/5/2022 10:50:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[view_FoodsPerSupplier]
AS
SELECT dbo.Suppliers.supplier_Name AS Supplier, STRING_AGG(dbo.PetFood.food_Name, ', ') AS PetFood
FROM     dbo.SupplierANDFoods INNER JOIN
                  dbo.Suppliers ON dbo.Suppliers.ID = dbo.SupplierANDFoods.supplier_ID INNER JOIN
                  dbo.PetFood ON dbo.PetFood.ID = dbo.SupplierANDFoods.food_ID
GROUP BY dbo.Suppliers.supplier_Name
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 12/5/2022 10:50:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[employee_ID] [int] NOT NULL,
	[employee_Name] [nvarchar](50) NOT NULL,
	[manager_ID] [int] NULL,
 CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED 
(
	[employee_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee_Pins]    Script Date: 12/5/2022 10:50:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee_Pins](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[employee_ID] [int] NOT NULL,
	[employee_Pin] [int] NOT NULL,
 CONSTRAINT [PK_EmployeePins] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[view_EmployeePins]    Script Date: 12/5/2022 10:50:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[view_EmployeePins]
AS
SELECT dbo.Employee.employee_Name, dbo.Employee_Pins.employee_Pin
FROM     dbo.Employee_Pins INNER JOIN
                  dbo.Employee ON dbo.Employee_Pins.employee_ID = dbo.Employee.employee_ID
GO
/****** Object:  View [dbo].[view_Managers]    Script Date: 12/5/2022 10:50:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[view_Managers]
AS
SELECT t1.employee_ID, t1.employee_Name AS 'Employee', t2.employee_Name AS 'Manager'
FROM     dbo.Employee AS t1 INNER JOIN
                  dbo.Employee AS t2 ON t1.manager_ID = t2.employee_ID
GO
/****** Object:  View [dbo].[view_SuppliersPerFood]    Script Date: 12/5/2022 10:50:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[view_SuppliersPerFood]
AS
SELECT dbo.PetFood.food_Name AS PetFood, STRING_AGG(dbo.Suppliers.supplier_Name, ', ') AS Supplier
FROM     dbo.SupplierANDFoods INNER JOIN
                  dbo.PetFood ON dbo.PetFood.ID = dbo.SupplierANDFoods.food_ID INNER JOIN
                  dbo.Suppliers ON dbo.Suppliers.ID = dbo.SupplierANDFoods.supplier_ID
GROUP BY dbo.PetFood.food_Name
GO
INSERT [dbo].[Employee] ([employee_ID], [employee_Name], [manager_ID]) VALUES (1, N'Max', 3)
INSERT [dbo].[Employee] ([employee_ID], [employee_Name], [manager_ID]) VALUES (2, N'Josh', 1)
INSERT [dbo].[Employee] ([employee_ID], [employee_Name], [manager_ID]) VALUES (3, N'Link', 3)
INSERT [dbo].[Employee] ([employee_ID], [employee_Name], [manager_ID]) VALUES (4, N'Isaiah', 1)
INSERT [dbo].[Employee] ([employee_ID], [employee_Name], [manager_ID]) VALUES (5, N'Kensly', 1)
INSERT [dbo].[Employee] ([employee_ID], [employee_Name], [manager_ID]) VALUES (6, N'Mark', 3)
INSERT [dbo].[Employee] ([employee_ID], [employee_Name], [manager_ID]) VALUES (7, N'Jona', 1)
INSERT [dbo].[Employee] ([employee_ID], [employee_Name], [manager_ID]) VALUES (8, N'Lux', 3)
GO
SET IDENTITY_INSERT [dbo].[Employee_Pins] ON 

INSERT [dbo].[Employee_Pins] ([ID], [employee_ID], [employee_Pin]) VALUES (1, 1, 100)
INSERT [dbo].[Employee_Pins] ([ID], [employee_ID], [employee_Pin]) VALUES (2, 2, 101)
INSERT [dbo].[Employee_Pins] ([ID], [employee_ID], [employee_Pin]) VALUES (3, 3, 102)
INSERT [dbo].[Employee_Pins] ([ID], [employee_ID], [employee_Pin]) VALUES (4, 4, 103)
INSERT [dbo].[Employee_Pins] ([ID], [employee_ID], [employee_Pin]) VALUES (5, 5, 104)
INSERT [dbo].[Employee_Pins] ([ID], [employee_ID], [employee_Pin]) VALUES (6, 6, 105)
INSERT [dbo].[Employee_Pins] ([ID], [employee_ID], [employee_Pin]) VALUES (7, 7, 106)
INSERT [dbo].[Employee_Pins] ([ID], [employee_ID], [employee_Pin]) VALUES (8, 8, 107)
SET IDENTITY_INSERT [dbo].[Employee_Pins] OFF
GO
SET IDENTITY_INSERT [dbo].[PetFood] ON 

INSERT [dbo].[PetFood] ([ID], [food_Name]) VALUES (1, N'Meat')
INSERT [dbo].[PetFood] ([ID], [food_Name]) VALUES (2, N'Chicken')
INSERT [dbo].[PetFood] ([ID], [food_Name]) VALUES (3, N'Vegie')
INSERT [dbo].[PetFood] ([ID], [food_Name]) VALUES (4, N'Rice')
INSERT [dbo].[PetFood] ([ID], [food_Name]) VALUES (5, N'Beans')
INSERT [dbo].[PetFood] ([ID], [food_Name]) VALUES (6, N'Grains')
SET IDENTITY_INSERT [dbo].[PetFood] OFF
GO
SET IDENTITY_INSERT [dbo].[SupplierANDFoods] ON 

INSERT [dbo].[SupplierANDFoods] ([ID], [supplier_ID], [food_ID]) VALUES (1, 1, 1)
INSERT [dbo].[SupplierANDFoods] ([ID], [supplier_ID], [food_ID]) VALUES (2, 1, 2)
INSERT [dbo].[SupplierANDFoods] ([ID], [supplier_ID], [food_ID]) VALUES (3, 1, 3)
INSERT [dbo].[SupplierANDFoods] ([ID], [supplier_ID], [food_ID]) VALUES (4, 2, 3)
INSERT [dbo].[SupplierANDFoods] ([ID], [supplier_ID], [food_ID]) VALUES (5, 2, 5)
INSERT [dbo].[SupplierANDFoods] ([ID], [supplier_ID], [food_ID]) VALUES (6, 3, 1)
INSERT [dbo].[SupplierANDFoods] ([ID], [supplier_ID], [food_ID]) VALUES (7, 3, 2)
INSERT [dbo].[SupplierANDFoods] ([ID], [supplier_ID], [food_ID]) VALUES (8, 3, 4)
INSERT [dbo].[SupplierANDFoods] ([ID], [supplier_ID], [food_ID]) VALUES (9, 4, 4)
INSERT [dbo].[SupplierANDFoods] ([ID], [supplier_ID], [food_ID]) VALUES (10, 4, 1)
INSERT [dbo].[SupplierANDFoods] ([ID], [supplier_ID], [food_ID]) VALUES (11, 4, 2)
INSERT [dbo].[SupplierANDFoods] ([ID], [supplier_ID], [food_ID]) VALUES (12, 5, 1)
INSERT [dbo].[SupplierANDFoods] ([ID], [supplier_ID], [food_ID]) VALUES (13, 5, 2)
INSERT [dbo].[SupplierANDFoods] ([ID], [supplier_ID], [food_ID]) VALUES (14, 5, 4)
INSERT [dbo].[SupplierANDFoods] ([ID], [supplier_ID], [food_ID]) VALUES (15, 5, 3)
INSERT [dbo].[SupplierANDFoods] ([ID], [supplier_ID], [food_ID]) VALUES (16, 6, 1)
INSERT [dbo].[SupplierANDFoods] ([ID], [supplier_ID], [food_ID]) VALUES (17, 6, 3)
INSERT [dbo].[SupplierANDFoods] ([ID], [supplier_ID], [food_ID]) VALUES (18, 6, 6)
SET IDENTITY_INSERT [dbo].[SupplierANDFoods] OFF
GO
SET IDENTITY_INSERT [dbo].[Suppliers] ON 

INSERT [dbo].[Suppliers] ([ID], [supplier_Name]) VALUES (1, N'PetCare')
INSERT [dbo].[Suppliers] ([ID], [supplier_Name]) VALUES (2, N'PetMall')
INSERT [dbo].[Suppliers] ([ID], [supplier_Name]) VALUES (3, N'PetWorld')
INSERT [dbo].[Suppliers] ([ID], [supplier_Name]) VALUES (4, N'PetCenter')
INSERT [dbo].[Suppliers] ([ID], [supplier_Name]) VALUES (5, N'PetsUnited')
INSERT [dbo].[Suppliers] ([ID], [supplier_Name]) VALUES (6, N'PetSmart')
SET IDENTITY_INSERT [dbo].[Suppliers] OFF
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employees_Employees] FOREIGN KEY([manager_ID])
REFERENCES [dbo].[Employee] ([employee_ID])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employees_Employees]
GO
ALTER TABLE [dbo].[Employee_Pins]  WITH CHECK ADD  CONSTRAINT [FK_EmployeePins_EmployeePins] FOREIGN KEY([ID])
REFERENCES [dbo].[Employee_Pins] ([ID])
GO
ALTER TABLE [dbo].[Employee_Pins] CHECK CONSTRAINT [FK_EmployeePins_EmployeePins]
GO
ALTER TABLE [dbo].[Employee_Pins]  WITH CHECK ADD  CONSTRAINT [FK_EmployeePins_Employees] FOREIGN KEY([employee_ID])
REFERENCES [dbo].[Employee] ([employee_ID])
GO
ALTER TABLE [dbo].[Employee_Pins] CHECK CONSTRAINT [FK_EmployeePins_Employees]
GO
ALTER TABLE [dbo].[SupplierANDFoods]  WITH CHECK ADD  CONSTRAINT [FK_Supplier_Foods_PetFoods] FOREIGN KEY([food_ID])
REFERENCES [dbo].[PetFood] ([ID])
GO
ALTER TABLE [dbo].[SupplierANDFoods] CHECK CONSTRAINT [FK_Supplier_Foods_PetFoods]
GO
ALTER TABLE [dbo].[SupplierANDFoods]  WITH CHECK ADD  CONSTRAINT [FK_Supplier_Foods_Suppliers] FOREIGN KEY([supplier_ID])
REFERENCES [dbo].[Suppliers] ([ID])
GO
ALTER TABLE [dbo].[SupplierANDFoods] CHECK CONSTRAINT [FK_Supplier_Foods_Suppliers]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Employee"
            Begin Extent = 
               Top = 7
               Left = 290
               Bottom = 148
               Right = 497
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Employee_Pins"
            Begin Extent = 
               Top = 7
               Left = 48
               Bottom = 148
               Right = 242
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'view_EmployeePins'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'view_EmployeePins'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Suppliers"
            Begin Extent = 
               Top = 7
               Left = 48
               Bottom = 126
               Right = 242
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "SupplierANDFoods"
            Begin Extent = 
               Top = 7
               Left = 290
               Bottom = 148
               Right = 500
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "PetFood"
            Begin Extent = 
               Top = 7
               Left = 548
               Bottom = 126
               Right = 758
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 12
         Column = 1440
         Alias = 900
         Table = 1176
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1356
         SortOrder = 1416
         GroupBy = 1356
         Filter = 1356
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'view_FoodsPerSupplier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'view_FoodsPerSupplier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "t1"
            Begin Extent = 
               Top = 7
               Left = 48
               Bottom = 148
               Right = 255
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "t2"
            Begin Extent = 
               Top = 9
               Left = 348
               Bottom = 150
               Right = 555
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1176
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1356
         SortOrder = 1416
         GroupBy = 1350
         Filter = 1356
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'view_Managers'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'view_Managers'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Suppliers"
            Begin Extent = 
               Top = 7
               Left = 48
               Bottom = 126
               Right = 242
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "PetFood"
            Begin Extent = 
               Top = 7
               Left = 290
               Bottom = 126
               Right = 484
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "SupplierANDFoods"
            Begin Extent = 
               Top = 7
               Left = 532
               Bottom = 148
               Right = 726
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 12
         Column = 1440
         Alias = 900
         Table = 1176
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1356
         SortOrder = 1416
         GroupBy = 1350
         Filter = 1356
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'view_SuppliersPerFood'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'view_SuppliersPerFood'
GO
