USE [PROG260FA22]
GO
/****** Object:  StoredProcedure [dbo].[spInsertTableDataFlight]    Script Date: 12/12/2022 5:32:34 PM ******/
DROP PROCEDURE [dbo].[spInsertTableDataFlight]
GO
/****** Object:  StoredProcedure [dbo].[spInsertTableData]    Script Date: 12/12/2022 5:32:34 PM ******/
DROP PROCEDURE [dbo].[spInsertTableData]
GO
/****** Object:  Table [dbo].[PassangerFlightData]    Script Date: 12/12/2022 5:32:34 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PassangerFlightData]') AND type in (N'U'))
DROP TABLE [dbo].[PassangerFlightData]
GO
/****** Object:  Table [dbo].[PassangerData]    Script Date: 12/12/2022 5:32:34 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PassangerData]') AND type in (N'U'))
DROP TABLE [dbo].[PassangerData]
GO
/****** Object:  Table [dbo].[PassangerData]    Script Date: 12/12/2022 5:32:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PassangerData](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](max) NOT NULL,
	[LastName] [nvarchar](max) NOT NULL,
	[email] [nvarchar](max) NULL,
 CONSTRAINT [PK_PassangerData] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PassangerFlightData]    Script Date: 12/12/2022 5:32:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PassangerFlightData](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PassangerID] [int] NOT NULL,
	[ContinentDeparture] [nvarchar](50) NULL,
	[ContinentArrival] [nvarchar](50) NULL,
	[flightNumber] [int] NULL,
	[flightDuration] [float] NULL,
 CONSTRAINT [PK_PassangerFlightData] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[PassangerData] ON 

INSERT [dbo].[PassangerData] ([ID], [FirstName], [LastName], [email]) VALUES (51, N'Nerty', N'Luce', N'nluce0@economist.com')
INSERT [dbo].[PassangerData] ([ID], [FirstName], [LastName], [email]) VALUES (52, N'Antonella', N'Birkmyre', N'abirkmyre1@pagesperso-orange.fr')
INSERT [dbo].[PassangerData] ([ID], [FirstName], [LastName], [email]) VALUES (53, N'Kean', N'Toseland', N'ktoseland2@abc.net.au')
INSERT [dbo].[PassangerData] ([ID], [FirstName], [LastName], [email]) VALUES (54, N'Cathee', N'Burgh', N'cburgh3@unicef.org')
INSERT [dbo].[PassangerData] ([ID], [FirstName], [LastName], [email]) VALUES (55, N'Jasmin', N'Blethin', N'jblethin4@networkadvertising.org')
INSERT [dbo].[PassangerData] ([ID], [FirstName], [LastName], [email]) VALUES (56, N'Georgy', N'Sellen', N'gsellen5@telegraph.co.uk')
INSERT [dbo].[PassangerData] ([ID], [FirstName], [LastName], [email]) VALUES (57, N'Kaylil', N'Casaroli', N'kcasaroli6@globo.com')
INSERT [dbo].[PassangerData] ([ID], [FirstName], [LastName], [email]) VALUES (58, N'Bernita', N'Bartles', N'bbartles7@sun.com')
INSERT [dbo].[PassangerData] ([ID], [FirstName], [LastName], [email]) VALUES (59, N'Fae', N'Alford', N'falford8@usnews.com')
INSERT [dbo].[PassangerData] ([ID], [FirstName], [LastName], [email]) VALUES (60, N'Bren', N'Oakman', N'boakman9@oakley.com')
INSERT [dbo].[PassangerData] ([ID], [FirstName], [LastName], [email]) VALUES (61, N'Morley', N'Curthoys', N'mcurthoysa@liveinternet.ru')
INSERT [dbo].[PassangerData] ([ID], [FirstName], [LastName], [email]) VALUES (62, N'Shannon', N'Feaster', N'sfeasterb@360.cn')
INSERT [dbo].[PassangerData] ([ID], [FirstName], [LastName], [email]) VALUES (63, N'Melicent', N'Bardey', N'mbardeyc@amazon.co.jp')
INSERT [dbo].[PassangerData] ([ID], [FirstName], [LastName], [email]) VALUES (64, N'Brigit', N'Hyde-Chambers', N'bhydechambersd@auda.org.au')
INSERT [dbo].[PassangerData] ([ID], [FirstName], [LastName], [email]) VALUES (65, N'Penny', N'Kibbey', N'')
INSERT [dbo].[PassangerData] ([ID], [FirstName], [LastName], [email]) VALUES (66, N'Erin', N'Woolger', N'ewoolgerf@fotki.com')
INSERT [dbo].[PassangerData] ([ID], [FirstName], [LastName], [email]) VALUES (67, N'Ivor', N'Charman', N'')
INSERT [dbo].[PassangerData] ([ID], [FirstName], [LastName], [email]) VALUES (68, N'Goldarina', N'Steere', N'gsteereh@hud.gov')
INSERT [dbo].[PassangerData] ([ID], [FirstName], [LastName], [email]) VALUES (69, N'Zea', N'Eckh', N'zeckhi@china.com.cn')
INSERT [dbo].[PassangerData] ([ID], [FirstName], [LastName], [email]) VALUES (70, N'Inge', N'Carwithen', N'icarwithenj@constantcontact.com')
INSERT [dbo].[PassangerData] ([ID], [FirstName], [LastName], [email]) VALUES (71, N'Nils', N'Beyn', N'nbeynk@lulu.com')
INSERT [dbo].[PassangerData] ([ID], [FirstName], [LastName], [email]) VALUES (72, N'Graehme', N'Moynihan', N'gmoynihanl@google.com.hk')
INSERT [dbo].[PassangerData] ([ID], [FirstName], [LastName], [email]) VALUES (73, N'Hartwell', N'Helbeck', N'hhelbeckm@list-manage.com')
INSERT [dbo].[PassangerData] ([ID], [FirstName], [LastName], [email]) VALUES (74, N'Josh', N'Zukierman', N'jzukiermann@1und1.de')
INSERT [dbo].[PassangerData] ([ID], [FirstName], [LastName], [email]) VALUES (75, N'Tabbi', N'Grevatt', N'tgrevatto@goo.ne.jp')
INSERT [dbo].[PassangerData] ([ID], [FirstName], [LastName], [email]) VALUES (76, N'Westley', N'Chomiszewski', N'wchomiszewskip@huffingtonpost.com')
INSERT [dbo].[PassangerData] ([ID], [FirstName], [LastName], [email]) VALUES (77, N'Rollie', N'Dobble', N'rdobbleq@barnesandnoble.com')
INSERT [dbo].[PassangerData] ([ID], [FirstName], [LastName], [email]) VALUES (78, N'Domenico', N'Sykora', N'dsykorar@hatena.ne.jp')
INSERT [dbo].[PassangerData] ([ID], [FirstName], [LastName], [email]) VALUES (79, N'Myrwyn', N'Manuele', N'mmanueles@meetup.com')
INSERT [dbo].[PassangerData] ([ID], [FirstName], [LastName], [email]) VALUES (80, N'Erik', N'Aldcorne', N'ealdcornet@multiply.com')
INSERT [dbo].[PassangerData] ([ID], [FirstName], [LastName], [email]) VALUES (81, N'Shelley', N'Hinkins', N'shinkinsu@wikispaces.com')
INSERT [dbo].[PassangerData] ([ID], [FirstName], [LastName], [email]) VALUES (82, N'Salomi', N'Blomfield', N'sblomfieldv@alibaba.com')
INSERT [dbo].[PassangerData] ([ID], [FirstName], [LastName], [email]) VALUES (83, N'Lisle', N'Auchinleck', N'')
INSERT [dbo].[PassangerData] ([ID], [FirstName], [LastName], [email]) VALUES (84, N'Taylor', N'Mardling', N'tmardlingx@photobucket.com')
INSERT [dbo].[PassangerData] ([ID], [FirstName], [LastName], [email]) VALUES (85, N'Vito', N'Morgan', N'vmorgany@umich.edu')
INSERT [dbo].[PassangerData] ([ID], [FirstName], [LastName], [email]) VALUES (86, N'Rex', N'Saggers', N'rsaggersz@yandex.ru')
INSERT [dbo].[PassangerData] ([ID], [FirstName], [LastName], [email]) VALUES (87, N'Clarence', N'Pesek', N'cpesek10@deviantart.com')
INSERT [dbo].[PassangerData] ([ID], [FirstName], [LastName], [email]) VALUES (88, N'Jeane', N'Clemanceau', N'jclemanceau11@msu.edu')
INSERT [dbo].[PassangerData] ([ID], [FirstName], [LastName], [email]) VALUES (89, N'Lynnelle', N'Hinksen', N'lhinksen12@imgur.com')
INSERT [dbo].[PassangerData] ([ID], [FirstName], [LastName], [email]) VALUES (90, N'Egon', N'Bannell', N'ebannell13@intel.com')
INSERT [dbo].[PassangerData] ([ID], [FirstName], [LastName], [email]) VALUES (91, N'Daune', N'Belden', N'dbelden14@chicagotribune.com')
INSERT [dbo].[PassangerData] ([ID], [FirstName], [LastName], [email]) VALUES (92, N'Gabriel', N'Eastcott', N'geastcott15@dailymail.co.uk')
INSERT [dbo].[PassangerData] ([ID], [FirstName], [LastName], [email]) VALUES (93, N'Ole', N'Hardison', N'ohardison16@nymag.com')
INSERT [dbo].[PassangerData] ([ID], [FirstName], [LastName], [email]) VALUES (94, N'Ansel', N'Addams', N'aaddams17@apache.org')
INSERT [dbo].[PassangerData] ([ID], [FirstName], [LastName], [email]) VALUES (95, N'Alain', N'Gray', N'agray18@marketwatch.com')
INSERT [dbo].[PassangerData] ([ID], [FirstName], [LastName], [email]) VALUES (96, N'Tamqrah', N'Lovell', N'tlovell19@fema.gov')
INSERT [dbo].[PassangerData] ([ID], [FirstName], [LastName], [email]) VALUES (97, N'Priscilla', N'Musgrave', N'pmusgrave1a@free.fr')
INSERT [dbo].[PassangerData] ([ID], [FirstName], [LastName], [email]) VALUES (98, N'Giacomo', N'Capaldo', N'gcapaldo1b@topsy.com')
INSERT [dbo].[PassangerData] ([ID], [FirstName], [LastName], [email]) VALUES (99, N'Nonna', N'Tanner', N'')
INSERT [dbo].[PassangerData] ([ID], [FirstName], [LastName], [email]) VALUES (100, N'Gabbey', N'Barstowk', N'gbarstowk1d@friendfeed.com')
SET IDENTITY_INSERT [dbo].[PassangerData] OFF
GO
SET IDENTITY_INSERT [dbo].[PassangerFlightData] ON 

INSERT [dbo].[PassangerFlightData] ([ID], [PassangerID], [ContinentDeparture], [ContinentArrival], [flightNumber], [flightDuration]) VALUES (51, 1, N'NA', N'NA', 375, 1.73)
INSERT [dbo].[PassangerFlightData] ([ID], [PassangerID], [ContinentDeparture], [ContinentArrival], [flightNumber], [flightDuration]) VALUES (52, 2, N'EU', N'EU', 1140, 4.76)
INSERT [dbo].[PassangerFlightData] ([ID], [PassangerID], [ContinentDeparture], [ContinentArrival], [flightNumber], [flightDuration]) VALUES (53, 3, N'AS', N'AS', 228, 3.83)
INSERT [dbo].[PassangerFlightData] ([ID], [PassangerID], [ContinentDeparture], [ContinentArrival], [flightNumber], [flightDuration]) VALUES (54, 4, N'NA', N'EU', 490, 1.08)
INSERT [dbo].[PassangerFlightData] ([ID], [PassangerID], [ContinentDeparture], [ContinentArrival], [flightNumber], [flightDuration]) VALUES (55, 5, N'AF', N'AF', 661, 4.99)
INSERT [dbo].[PassangerFlightData] ([ID], [PassangerID], [ContinentDeparture], [ContinentArrival], [flightNumber], [flightDuration]) VALUES (56, 6, N'AF', N'AS', 1451, 2.61)
INSERT [dbo].[PassangerFlightData] ([ID], [PassangerID], [ContinentDeparture], [ContinentArrival], [flightNumber], [flightDuration]) VALUES (57, 7, N'EU', N'SA', 241, 1.01)
INSERT [dbo].[PassangerFlightData] ([ID], [PassangerID], [ContinentDeparture], [ContinentArrival], [flightNumber], [flightDuration]) VALUES (58, 8, N'NA', N'NA', 789, 1.69)
INSERT [dbo].[PassangerFlightData] ([ID], [PassangerID], [ContinentDeparture], [ContinentArrival], [flightNumber], [flightDuration]) VALUES (59, 9, N'AF', N'NA', 881, 4.26)
INSERT [dbo].[PassangerFlightData] ([ID], [PassangerID], [ContinentDeparture], [ContinentArrival], [flightNumber], [flightDuration]) VALUES (60, 10, N'EU', N'AS', 804, 2.49)
INSERT [dbo].[PassangerFlightData] ([ID], [PassangerID], [ContinentDeparture], [ContinentArrival], [flightNumber], [flightDuration]) VALUES (61, 11, N'NA', N'NA', 681, 4.35)
INSERT [dbo].[PassangerFlightData] ([ID], [PassangerID], [ContinentDeparture], [ContinentArrival], [flightNumber], [flightDuration]) VALUES (62, 12, N'AS', N'SA', 234, 3.72)
INSERT [dbo].[PassangerFlightData] ([ID], [PassangerID], [ContinentDeparture], [ContinentArrival], [flightNumber], [flightDuration]) VALUES (63, 13, N'NA', N'AS', 838, 1.21)
INSERT [dbo].[PassangerFlightData] ([ID], [PassangerID], [ContinentDeparture], [ContinentArrival], [flightNumber], [flightDuration]) VALUES (64, 14, N'SA', N'SA', 1474, 4.38)
INSERT [dbo].[PassangerFlightData] ([ID], [PassangerID], [ContinentDeparture], [ContinentArrival], [flightNumber], [flightDuration]) VALUES (65, 15, N'AS', N'NA', 443, 4.75)
INSERT [dbo].[PassangerFlightData] ([ID], [PassangerID], [ContinentDeparture], [ContinentArrival], [flightNumber], [flightDuration]) VALUES (66, 16, N'AS', N'AS', 1354, 2.94)
INSERT [dbo].[PassangerFlightData] ([ID], [PassangerID], [ContinentDeparture], [ContinentArrival], [flightNumber], [flightDuration]) VALUES (67, 17, N'OC', N'AF', 512, 4.63)
INSERT [dbo].[PassangerFlightData] ([ID], [PassangerID], [ContinentDeparture], [ContinentArrival], [flightNumber], [flightDuration]) VALUES (68, 18, N'AS', N'NA', 807, 2)
INSERT [dbo].[PassangerFlightData] ([ID], [PassangerID], [ContinentDeparture], [ContinentArrival], [flightNumber], [flightDuration]) VALUES (69, 19, N'NA', N'NA', 353, 3.12)
INSERT [dbo].[PassangerFlightData] ([ID], [PassangerID], [ContinentDeparture], [ContinentArrival], [flightNumber], [flightDuration]) VALUES (70, 20, N'AF', N'AF', 513, 3.76)
INSERT [dbo].[PassangerFlightData] ([ID], [PassangerID], [ContinentDeparture], [ContinentArrival], [flightNumber], [flightDuration]) VALUES (71, 21, N'AS', N'AS', 1262, 3.5)
INSERT [dbo].[PassangerFlightData] ([ID], [PassangerID], [ContinentDeparture], [ContinentArrival], [flightNumber], [flightDuration]) VALUES (72, 22, N'AS', N'AS', 278, 4.76)
INSERT [dbo].[PassangerFlightData] ([ID], [PassangerID], [ContinentDeparture], [ContinentArrival], [flightNumber], [flightDuration]) VALUES (73, 23, N'EU', N'NA', 386, 3.74)
INSERT [dbo].[PassangerFlightData] ([ID], [PassangerID], [ContinentDeparture], [ContinentArrival], [flightNumber], [flightDuration]) VALUES (74, 24, N'OC', N'NA', 671, 2.84)
INSERT [dbo].[PassangerFlightData] ([ID], [PassangerID], [ContinentDeparture], [ContinentArrival], [flightNumber], [flightDuration]) VALUES (75, 25, N'NA', N'NA', 1122, 2.46)
INSERT [dbo].[PassangerFlightData] ([ID], [PassangerID], [ContinentDeparture], [ContinentArrival], [flightNumber], [flightDuration]) VALUES (76, 26, N'NA', N'NA', 1385, 3.18)
INSERT [dbo].[PassangerFlightData] ([ID], [PassangerID], [ContinentDeparture], [ContinentArrival], [flightNumber], [flightDuration]) VALUES (77, 27, N'AS', N'OC', 480, 3.01)
INSERT [dbo].[PassangerFlightData] ([ID], [PassangerID], [ContinentDeparture], [ContinentArrival], [flightNumber], [flightDuration]) VALUES (78, 28, N'OC', N'SA', 311, 4.78)
INSERT [dbo].[PassangerFlightData] ([ID], [PassangerID], [ContinentDeparture], [ContinentArrival], [flightNumber], [flightDuration]) VALUES (79, 29, N'EU', N'NA', 576, 1.49)
INSERT [dbo].[PassangerFlightData] ([ID], [PassangerID], [ContinentDeparture], [ContinentArrival], [flightNumber], [flightDuration]) VALUES (80, 30, N'AS', N'NA', 1080, 2.1)
INSERT [dbo].[PassangerFlightData] ([ID], [PassangerID], [ContinentDeparture], [ContinentArrival], [flightNumber], [flightDuration]) VALUES (81, 31, N'AF', N'NA', 593, 2.54)
INSERT [dbo].[PassangerFlightData] ([ID], [PassangerID], [ContinentDeparture], [ContinentArrival], [flightNumber], [flightDuration]) VALUES (82, 32, N'SA', N'AS', 1486, 2.39)
INSERT [dbo].[PassangerFlightData] ([ID], [PassangerID], [ContinentDeparture], [ContinentArrival], [flightNumber], [flightDuration]) VALUES (83, 33, N'AF', N'NA', 562, 2.1)
INSERT [dbo].[PassangerFlightData] ([ID], [PassangerID], [ContinentDeparture], [ContinentArrival], [flightNumber], [flightDuration]) VALUES (84, 34, N'OC', N'EU', 640, 4.78)
INSERT [dbo].[PassangerFlightData] ([ID], [PassangerID], [ContinentDeparture], [ContinentArrival], [flightNumber], [flightDuration]) VALUES (85, 35, N'NA', N'AS', 1001, 1.65)
INSERT [dbo].[PassangerFlightData] ([ID], [PassangerID], [ContinentDeparture], [ContinentArrival], [flightNumber], [flightDuration]) VALUES (86, 36, N'OC', N'AS', 995, 4.98)
INSERT [dbo].[PassangerFlightData] ([ID], [PassangerID], [ContinentDeparture], [ContinentArrival], [flightNumber], [flightDuration]) VALUES (87, 37, N'EU', N'SA', 1330, 2.15)
INSERT [dbo].[PassangerFlightData] ([ID], [PassangerID], [ContinentDeparture], [ContinentArrival], [flightNumber], [flightDuration]) VALUES (88, 38, N'EU', N'AF', 741, 2.72)
INSERT [dbo].[PassangerFlightData] ([ID], [PassangerID], [ContinentDeparture], [ContinentArrival], [flightNumber], [flightDuration]) VALUES (89, 39, N'AS', N'AS', 691, 3.15)
INSERT [dbo].[PassangerFlightData] ([ID], [PassangerID], [ContinentDeparture], [ContinentArrival], [flightNumber], [flightDuration]) VALUES (90, 40, N'NA', N'NA', 930, 3)
INSERT [dbo].[PassangerFlightData] ([ID], [PassangerID], [ContinentDeparture], [ContinentArrival], [flightNumber], [flightDuration]) VALUES (91, 41, N'NA', N'NA', 535, 4.41)
INSERT [dbo].[PassangerFlightData] ([ID], [PassangerID], [ContinentDeparture], [ContinentArrival], [flightNumber], [flightDuration]) VALUES (92, 42, N'AS', N'NA', 882, 4.14)
INSERT [dbo].[PassangerFlightData] ([ID], [PassangerID], [ContinentDeparture], [ContinentArrival], [flightNumber], [flightDuration]) VALUES (93, 43, N'EU', N'NA', 1025, 2.78)
INSERT [dbo].[PassangerFlightData] ([ID], [PassangerID], [ContinentDeparture], [ContinentArrival], [flightNumber], [flightDuration]) VALUES (94, 44, N'NA', N'NA', 421, 3.8)
INSERT [dbo].[PassangerFlightData] ([ID], [PassangerID], [ContinentDeparture], [ContinentArrival], [flightNumber], [flightDuration]) VALUES (95, 45, N'OC', N'OC', 552, 3.28)
INSERT [dbo].[PassangerFlightData] ([ID], [PassangerID], [ContinentDeparture], [ContinentArrival], [flightNumber], [flightDuration]) VALUES (96, 46, N'OC', N'AF', 551, 3.29)
INSERT [dbo].[PassangerFlightData] ([ID], [PassangerID], [ContinentDeparture], [ContinentArrival], [flightNumber], [flightDuration]) VALUES (97, 47, N'SA', N'NA', 1408, 1.29)
INSERT [dbo].[PassangerFlightData] ([ID], [PassangerID], [ContinentDeparture], [ContinentArrival], [flightNumber], [flightDuration]) VALUES (98, 48, N'OC', N'AS', 1402, 2.36)
INSERT [dbo].[PassangerFlightData] ([ID], [PassangerID], [ContinentDeparture], [ContinentArrival], [flightNumber], [flightDuration]) VALUES (99, 49, N'AS', N'NA', 1340, 2.58)
INSERT [dbo].[PassangerFlightData] ([ID], [PassangerID], [ContinentDeparture], [ContinentArrival], [flightNumber], [flightDuration]) VALUES (100, 50, N'AS', N'NA', 1236, 3.36)
SET IDENTITY_INSERT [dbo].[PassangerFlightData] OFF
GO
/****** Object:  StoredProcedure [dbo].[spInsertTableData]    Script Date: 12/12/2022 5:32:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spInsertTableData]
@FirstName nvarchar(max),
@LastName nvarchar(max),
@email nvarchar(max)
AS
BEGIN
Insert into PassangerData ( FirstName, LastName, email)
Values ( @FirstName, @LastName, @email)
END
GO
/****** Object:  StoredProcedure [dbo].[spInsertTableDataFlight]    Script Date: 12/12/2022 5:32:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spInsertTableDataFlight]	
@PassangerID int,
@ContinentDeparture nvarchar(50),
@ContinentArrival nvarchar(50),
@flightNumber int,
@flightDuration float
AS
BEGIN
Insert into PassangerFlightData (PassangerID, ContinentDeparture, ContinentArrival, flightNumber, flightDuration)
Values(@PassangerID, @ContinentDeparture, @ContinentArrival, @flightNumber, @flightDuration)
END
GO
