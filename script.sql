USE [TelecomNevaSvyaz]
GO
/****** Object:  Table [dbo].[AbonentEqupment]    Script Date: 03.01.2023 22:54:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbonentEqupment](
	[SerialNumber] [nchar](20) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_AbonentEqupment] PRIMARY KEY CLUSTERED 
(
	[SerialNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Abonents]    Script Date: 03.01.2023 22:54:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Abonents](
	[NumberAbonent] [nvarchar](50) NOT NULL,
	[FIO] [nvarchar](50) NOT NULL,
	[IDGender] [int] NOT NULL,
	[DateOfBirth] [date] NOT NULL,
	[Phone] [nchar](40) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[AdressPropiski] [nvarchar](150) NOT NULL,
	[Adress] [nvarchar](100) NOT NULL,
	[SerialAndNumber] [nchar](50) NOT NULL,
	[Code] [nchar](10) NOT NULL,
	[Issue] [nvarchar](100) NOT NULL,
	[DateOfIssue] [date] NOT NULL,
	[NumberOfDogovor] [nvarchar](50) NOT NULL,
	[DateOfStart] [date] NOT NULL,
	[IDTypeOfDogovor] [int] NOT NULL,
	[Reason] [nvarchar](150) NULL,
	[PersonalAccount] [int] NOT NULL,
	[Services] [nvarchar](50) NOT NULL,
	[DateOfEnd] [date] NULL,
	[IDAbonentEqupment] [nchar](20) NOT NULL,
 CONSTRAINT [PK_Abonents] PRIMARY KEY CLUSTERED 
(
	[NumberAbonent] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 03.01.2023 22:54:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[ID] [int] NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[Patronymic] [nvarchar](150) NOT NULL,
	[IDRole] [int] NOT NULL,
	[Code] [nchar](10) NOT NULL,
	[Login] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EqupmentMagistral]    Script Date: 03.01.2023 22:54:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EqupmentMagistral](
	[SerialNumber] [nchar](20) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_EqupmentMagistral] PRIMARY KEY CLUSTERED 
(
	[SerialNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Gender]    Script Date: 03.01.2023 22:54:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gender](
	[ID] [int] NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Gender] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Request]    Script Date: 03.01.2023 22:54:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Request](
	[ID] [int] NOT NULL,
	[NumberRequest] [nvarchar](50) NOT NULL,
	[DateOfCreate] [date] NOT NULL,
	[PersonalAccount] [int] NOT NULL,
	[IDVidOfServices] [int] NOT NULL,
	[IDTypeOfServices] [int] NOT NULL,
	[IDStatus] [int] NOT NULL,
	[TypeOfEqupment] [nvarchar](50) NULL,
	[DescriptionProblem] [nvarchar](100) NULL,
	[DateOfEnd] [date] NULL,
	[IDTypeOfProblem] [int] NOT NULL,
 CONSTRAINT [PK_Request] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 03.01.2023 22:54:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[ID] [int] NOT NULL,
	[Role] [nvarchar](50) NOT NULL,
	[Information] [nvarchar](500) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SetiDostupa]    Script Date: 03.01.2023 22:54:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SetiDostupa](
	[SerialNumber] [nchar](20) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_SetiDostupa] PRIMARY KEY CLUSTERED 
(
	[SerialNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SPB]    Script Date: 03.01.2023 22:54:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SPB](
	[ID] [int] NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
	[Ploshad] [decimal](12, 6) NOT NULL,
	[Naselenie] [int] NOT NULL,
	[CountOfAnderground] [int] NOT NULL,
	[IDTypeOfBuilding] [int] NOT NULL,
 CONSTRAINT [PK_SPB] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Status]    Script Date: 03.01.2023 22:54:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Status](
	[ID] [int] NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Status] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypeOfBuilding]    Script Date: 03.01.2023 22:54:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeOfBuilding](
	[ID] [int] NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_TypeOfBuilding] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypeOfDogovor]    Script Date: 03.01.2023 22:54:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeOfDogovor](
	[ID] [int] NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_TypeOfDogovor] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypeOfProblem]    Script Date: 03.01.2023 22:54:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeOfProblem](
	[ID] [int] NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_TypeOfProblem] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypeOfServices]    Script Date: 03.01.2023 22:54:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeOfServices](
	[ID] [int] NOT NULL,
	[Title] [nvarchar](50) NULL,
 CONSTRAINT [PK_TypeOfServices] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VidOfServices]    Script Date: 03.01.2023 22:54:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VidOfServices](
	[ID] [int] NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_VidOfServices] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[AbonentEqupment] ([SerialNumber], [Title]) VALUES (N'АО567-ТНС-11        ', N'Точка доступа HP ProCurve ')
INSERT [dbo].[AbonentEqupment] ([SerialNumber], [Title]) VALUES (N'АО567-ТНС-12        ', N'Точка доступа TP-Link TL-WA701ND ')
INSERT [dbo].[AbonentEqupment] ([SerialNumber], [Title]) VALUES (N'АО567-ТНС-13        ', N'Точка доступа Sitecom WLX-2000 ')
INSERT [dbo].[AbonentEqupment] ([SerialNumber], [Title]) VALUES (N'АО567-ТНС-14        ', N'Точка доступа Buffalo AirStation N300 Dual Band ')
GO
INSERT [dbo].[Abonents] ([NumberAbonent], [FIO], [IDGender], [DateOfBirth], [Phone], [Email], [AdressPropiski], [Adress], [SerialAndNumber], [Code], [Issue], [DateOfIssue], [NumberOfDogovor], [DateOfStart], [IDTypeOfDogovor], [Reason], [PersonalAccount], [Services], [DateOfEnd], [IDAbonentEqupment]) VALUES (N'78А000001', N'Маслака Жанна Петровна', 1, CAST(N'1981-10-22' AS Date), N'+7 (969) 681-71-93                      ', N'janna22101981@mail.ru', N'Россия, г. Ставрополь, ЯнкиКупалы ул., д. 16 кв.118', N'1077:10:18', N'4282-450721                                       ', N'610-512   ', N'ОВД России по г. Артем', CAST(N'2021-05-11' AS Date), N'78А000001-1 - 2018', CAST(N'2018-01-01' AS Date), 1, N'', 785493417, N'Интернет', NULL, N'АО567-ТНС-11        ')
INSERT [dbo].[Abonents] ([NumberAbonent], [FIO], [IDGender], [DateOfBirth], [Phone], [Email], [AdressPropiski], [Adress], [SerialAndNumber], [Code], [Issue], [DateOfIssue], [NumberOfDogovor], [DateOfStart], [IDTypeOfDogovor], [Reason], [PersonalAccount], [Services], [DateOfEnd], [IDAbonentEqupment]) VALUES (N'78А000003', N'Янов Игнатий Тимофеевич', 2, CAST(N'1987-09-04' AS Date), N'+7 (907) 675-91-40                      ', N'ignatiy1987@yandex.ru', N'Россия, г. Дербент, Речной пер., д. 16 кв.51', N'1155:11:12', N'4439-706015                                       ', N'200-608   ', N'Отделением УФМС России в г. Тольятти', CAST(N'2013-01-01' AS Date), N'78А000003-3 - 2018', CAST(N'2018-03-03' AS Date), 1, N'', 785493419, N'Интернет', NULL, N'АО567-ТНС-13        ')
INSERT [dbo].[Abonents] ([NumberAbonent], [FIO], [IDGender], [DateOfBirth], [Phone], [Email], [AdressPropiski], [Adress], [SerialAndNumber], [Code], [Issue], [DateOfIssue], [NumberOfDogovor], [DateOfStart], [IDTypeOfDogovor], [Reason], [PersonalAccount], [Services], [DateOfEnd], [IDAbonentEqupment]) VALUES (N'78А000006', N'Быкова Ольга Герасимовна', 1, CAST(N'1971-04-28' AS Date), N'+7 (980) 165-72-86                      ', N'olga21@yandex.ru', N'Россия, г. Люберцы, Максима Горького ул., д. 4 кв.144', N'1155:0:19', N'4774-849631                                       ', N'770-592   ', N'Управление внутренних дел по г. Пушкино', CAST(N'2020-08-05' AS Date), N'78А000006-6 - 2019', CAST(N'2019-06-06' AS Date), 1, N'', 785493422, N'Интернет', NULL, N'АО567-ТНС-12        ')
INSERT [dbo].[Abonents] ([NumberAbonent], [FIO], [IDGender], [DateOfBirth], [Phone], [Email], [AdressPropiski], [Adress], [SerialAndNumber], [Code], [Issue], [DateOfIssue], [NumberOfDogovor], [DateOfStart], [IDTypeOfDogovor], [Reason], [PersonalAccount], [Services], [DateOfEnd], [IDAbonentEqupment]) VALUES (N'78А000008', N'Илюшин Тимофей Савванович', 2, CAST(N'1965-09-05' AS Date), N'+7 (927) 221-17-95                      ', N'timofey05091965@yandex.ru', N'Россия, г. Щёлково, Дружбы ул., д. 17 кв.19', N'8007:45:20', N'4085-748295                                       ', N'170-522   ', N'Отделом УФМС России по г. Брянск', CAST(N'2019-04-25' AS Date), N'78А000008-8 - 2019', CAST(N'2019-08-08' AS Date), 2, N'', 785493424, N'Интернет', NULL, N'АО567-ТНС-14        ')
INSERT [dbo].[Abonents] ([NumberAbonent], [FIO], [IDGender], [DateOfBirth], [Phone], [Email], [AdressPropiski], [Adress], [SerialAndNumber], [Code], [Issue], [DateOfIssue], [NumberOfDogovor], [DateOfStart], [IDTypeOfDogovor], [Reason], [PersonalAccount], [Services], [DateOfEnd], [IDAbonentEqupment]) VALUES (N'78А000010', N'Левковича Василиса Вячеславовна', 1, CAST(N'1988-11-16' AS Date), N'+7 (938) 249-10-91                      ', N'vasilisa1988@yandex.ru', N'Россия, г. Владимир, Чапаева ул., д. 7 кв.212', N'7507:0:26', N'4071-593651                                       ', N'250-758   ', N'Отделением УФМС России по г. Йошкар-Ола', CAST(N'2014-08-04' AS Date), N'78А000010-10 - 2019', CAST(N'2019-10-10' AS Date), 1, N'Переезд', 785493426, N'Интернет', CAST(N'2020-10-12' AS Date), N'АО567-ТНС-12        ')
INSERT [dbo].[Abonents] ([NumberAbonent], [FIO], [IDGender], [DateOfBirth], [Phone], [Email], [AdressPropiski], [Adress], [SerialAndNumber], [Code], [Issue], [DateOfIssue], [NumberOfDogovor], [DateOfStart], [IDTypeOfDogovor], [Reason], [PersonalAccount], [Services], [DateOfEnd], [IDAbonentEqupment]) VALUES (N'78А000013', N'Шеляпин Роман Викторович', 2, CAST(N'1968-05-10' AS Date), N'+7 (933) 954-75-29                      ', N'roman10051968@hotmail.com', N'Россия, г. Ярославль, Первомайская ул., д. 19 кв.122', N'1088:10:61', N'4148-271134                                       ', N'570-755   ', N'Отделением УФМС России по г. Москва', CAST(N'2012-09-02' AS Date), N'78А000013-5 - 2019', CAST(N'2019-05-13' AS Date), 1, N'Переезд', 785493429, N'Интернет', CAST(N'2021-07-22' AS Date), N'АО567-ТНС-11        ')
INSERT [dbo].[Abonents] ([NumberAbonent], [FIO], [IDGender], [DateOfBirth], [Phone], [Email], [AdressPropiski], [Adress], [SerialAndNumber], [Code], [Issue], [DateOfIssue], [NumberOfDogovor], [DateOfStart], [IDTypeOfDogovor], [Reason], [PersonalAccount], [Services], [DateOfEnd], [IDAbonentEqupment]) VALUES (N'78А000016', N'Стукалов Яков Ильич', 2, CAST(N'1966-05-21' AS Date), N'+7 (940) 476-89-72                      ', N'yakov2699@outlook.com', N'Россия, г. Пушкино, Радужная ул., д. 20 кв.100', N'1006:4:5', N'4098-479713                                       ', N'900-684   ', N'Управление внутренних дел по г. Йошкар-Ола', CAST(N'2012-05-27' AS Date), N'78А000016-8 - 2019', CAST(N'2019-08-16' AS Date), 1, N'', 785493432, N'Интернет', NULL, N'АО567-ТНС-14        ')
INSERT [dbo].[Abonents] ([NumberAbonent], [FIO], [IDGender], [DateOfBirth], [Phone], [Email], [AdressPropiski], [Adress], [SerialAndNumber], [Code], [Issue], [DateOfIssue], [NumberOfDogovor], [DateOfStart], [IDTypeOfDogovor], [Reason], [PersonalAccount], [Services], [DateOfEnd], [IDAbonentEqupment]) VALUES (N'78А000020', N'Золотова Рада Юлиановна', 1, CAST(N'1984-07-01' AS Date), N'+7 (982) 913-95-79                      ', N'rada29@rambler.ru', N'Россия, г. Нальчик, Гагарина ул., д. 12 кв.155', N'1622:6:60', N'4438-240819                                       ', N'720-540   ', N'ОУФМС России по г. Долгопрудный', CAST(N'2019-09-03' AS Date), N'78А000020-8 - 2018', CAST(N'2018-08-20' AS Date), 1, N'Переезд', 785493436, N'Интернет', CAST(N'2019-06-17' AS Date), N'АО567-ТНС-14        ')
INSERT [dbo].[Abonents] ([NumberAbonent], [FIO], [IDGender], [DateOfBirth], [Phone], [Email], [AdressPropiski], [Adress], [SerialAndNumber], [Code], [Issue], [DateOfIssue], [NumberOfDogovor], [DateOfStart], [IDTypeOfDogovor], [Reason], [PersonalAccount], [Services], [DateOfEnd], [IDAbonentEqupment]) VALUES (N'78А000024', N'Ярмоленко Ева Серафимовна', 1, CAST(N'1992-02-17' AS Date), N'+7 (954) 426-46-81                      ', N'eva1992@ya.ru', N'Россия, г. Екатеринбург, Октябрьский пер., д. 12 кв.21', N'1657:0:73', N'4677-708908                                       ', N'880-626   ', N'Отделением УФМС России по г. Элиста', CAST(N'2015-08-05' AS Date), N'78А000024-4 - 2020', CAST(N'2020-04-24' AS Date), 1, N'', 785493440, N'Интернет', NULL, N'АО567-ТНС-14        ')
INSERT [dbo].[Abonents] ([NumberAbonent], [FIO], [IDGender], [DateOfBirth], [Phone], [Email], [AdressPropiski], [Adress], [SerialAndNumber], [Code], [Issue], [DateOfIssue], [NumberOfDogovor], [DateOfStart], [IDTypeOfDogovor], [Reason], [PersonalAccount], [Services], [DateOfEnd], [IDAbonentEqupment]) VALUES (N'78А000027', N'Тизенгаузена Светлана Георгьевна', 1, CAST(N'1973-02-22' AS Date), N'+7 (912) 930-82-23                      ', N'svetlana57@gmail.com', N'Россия, г. Новошахтинск, Гагарина ул., д. 21 кв.101', N'1069:0:30', N'4321-448056                                       ', N'530-343   ', N'Отделом внутренних дел России по г. Брянск', CAST(N'2014-04-27' AS Date), N'78А000027-2 - 2020', CAST(N'2020-02-27' AS Date), 1, N'', 785493443, N'Интернет', NULL, N'АО567-ТНС-13        ')
INSERT [dbo].[Abonents] ([NumberAbonent], [FIO], [IDGender], [DateOfBirth], [Phone], [Email], [AdressPropiski], [Adress], [SerialAndNumber], [Code], [Issue], [DateOfIssue], [NumberOfDogovor], [DateOfStart], [IDTypeOfDogovor], [Reason], [PersonalAccount], [Services], [DateOfEnd], [IDAbonentEqupment]) VALUES (N'78А000030', N'Ёжиков Валерий Давидович', 2, CAST(N'1982-09-03' AS Date), N'+7 (947) 786-92-96                      ', N'valeriy77@yandex.ru', N'Россия, г. Коломна, Ленина В.И.ул., д. 14 кв.87', N'1094:0:29', N'4716-277897                                       ', N'110-284   ', N'Отделом УФМС России по г. Орёл', CAST(N'2012-05-06' AS Date), N'78А000030-5 - 2020', CAST(N'2020-05-02' AS Date), 1, N'', 785493446, N'Интернет', NULL, N'АО567-ТНС-12        ')
INSERT [dbo].[Abonents] ([NumberAbonent], [FIO], [IDGender], [DateOfBirth], [Phone], [Email], [AdressPropiski], [Adress], [SerialAndNumber], [Code], [Issue], [DateOfIssue], [NumberOfDogovor], [DateOfStart], [IDTypeOfDogovor], [Reason], [PersonalAccount], [Services], [DateOfEnd], [IDAbonentEqupment]) VALUES (N'78В00011', N'Жванецкий Савва Феоктистович', 2, CAST(N'1984-11-13' AS Date), N'+7 (907) 504-86-73                      ', N'savva.jvaneckiy@mail.ru', N'Россия, г. Курган, Спортивная ул., д. 18 кв.63', N'8006:0:16', N'4315-284633                                       ', N'250-607   ', N'Отделом УФМС России по г. Северск', CAST(N'2019-09-29' AS Date), N'78В00011-1 - 2020', CAST(N'2020-01-18' AS Date), 1, N'', 785493487, N'Интернет', NULL, N'АО567-ТНС-13        ')
INSERT [dbo].[Abonents] ([NumberAbonent], [FIO], [IDGender], [DateOfBirth], [Phone], [Email], [AdressPropiski], [Adress], [SerialAndNumber], [Code], [Issue], [DateOfIssue], [NumberOfDogovor], [DateOfStart], [IDTypeOfDogovor], [Reason], [PersonalAccount], [Services], [DateOfEnd], [IDAbonentEqupment]) VALUES (N'78В00012', N'Оборин Петр Нифонтович', 2, CAST(N'1979-12-18' AS Date), N'+7 (968) 813-14-51                      ', N'petr.oborin@yandex.ru', N'Россия, г. Саранск, Парковая ул., д. 18 кв.92', N'8006:0:24', N'4042-735498                                       ', N'160-536   ', N'Управление внутренних дел по г. Санкт-Петербург', CAST(N'2018-09-14' AS Date), N'78В00012-2 - 2020', CAST(N'2020-02-19' AS Date), 1, N'', 785493488, N'Интернет', NULL, N'АО567-ТНС-14        ')
INSERT [dbo].[Abonents] ([NumberAbonent], [FIO], [IDGender], [DateOfBirth], [Phone], [Email], [AdressPropiski], [Adress], [SerialAndNumber], [Code], [Issue], [DateOfIssue], [NumberOfDogovor], [DateOfStart], [IDTypeOfDogovor], [Reason], [PersonalAccount], [Services], [DateOfEnd], [IDAbonentEqupment]) VALUES (N'78В00013', N'Мичурина Маргарита Феоктистовна', 1, CAST(N'1980-09-02' AS Date), N'+7 (926) 967-88-84                      ', N'margarita26@hotmail.com', N'Россия, г. Рыбинск, Интернациональная ул., д. 12 кв.51', N'8007:0:47', N'4659-666209                                       ', N'770-332   ', N'Отделением УФМС России по г. Старый Оскол', CAST(N'2017-02-21' AS Date), N'78В00013-3 - 2020', CAST(N'2020-03-20' AS Date), 1, N'', 785493489, N'Интернет', NULL, N'АО567-ТНС-11        ')
INSERT [dbo].[Abonents] ([NumberAbonent], [FIO], [IDGender], [DateOfBirth], [Phone], [Email], [AdressPropiski], [Adress], [SerialAndNumber], [Code], [Issue], [DateOfIssue], [NumberOfDogovor], [DateOfStart], [IDTypeOfDogovor], [Reason], [PersonalAccount], [Services], [DateOfEnd], [IDAbonentEqupment]) VALUES (N'78В00015', N'Кожевин Прохор Никанорович', 2, CAST(N'1967-01-05' AS Date), N'+7 (994) 825-60-23                      ', N'prohor1967@hotmail.com', N'Россия, г. Стерлитамак, Молодежный пер., д. 15 кв.115', N'1675:0:46', N'4356-138139                                       ', N'990-733   ', N'ОВД России по г. Бердск', CAST(N'2014-05-29' AS Date), N'78В00015-5 - 2020', CAST(N'2020-05-22' AS Date), 1, N'', 785493491, N'Интернет', NULL, N'АО567-ТНС-13        ')
INSERT [dbo].[Abonents] ([NumberAbonent], [FIO], [IDGender], [DateOfBirth], [Phone], [Email], [AdressPropiski], [Adress], [SerialAndNumber], [Code], [Issue], [DateOfIssue], [NumberOfDogovor], [DateOfStart], [IDTypeOfDogovor], [Reason], [PersonalAccount], [Services], [DateOfEnd], [IDAbonentEqupment]) VALUES (N'78В00016', N'Саврасова Лариса Ефремовна', 1, CAST(N'1992-05-23' AS Date), N'+7 (972) 970-41-38                      ', N'larisa.savrasova@mail.ru', N'Россия, г. Альметьевск, Полевой пер., д. 8 кв.77', N'1676:0:25', N'4982-966896                                       ', N'610-241   ', N'Отделением УФМС России по г. Батайск', CAST(N'2018-05-19' AS Date), N'78В00016-1 - 2020', CAST(N'2020-01-23' AS Date), 1, N'', 785493492, N'Интернет', NULL, N'АО567-ТНС-14        ')
INSERT [dbo].[Abonents] ([NumberAbonent], [FIO], [IDGender], [DateOfBirth], [Phone], [Email], [AdressPropiski], [Adress], [SerialAndNumber], [Code], [Issue], [DateOfIssue], [NumberOfDogovor], [DateOfStart], [IDTypeOfDogovor], [Reason], [PersonalAccount], [Services], [DateOfEnd], [IDAbonentEqupment]) VALUES (N'78В00017', N'Рыбакова Вероника Филипповна', 1, CAST(N'1965-02-26' AS Date), N'+7 (980) 793-71-73                      ', N'veronika1965@hotmail.com', N'Россия, г. Тула, Первомайский пер., д. 20 кв.209', N'1676:0:27', N'4675-570112                                       ', N'470-311   ', N'ОУФМС России по г. Владикавказ', CAST(N'2019-07-18' AS Date), N'78В00017-2 - 2020', CAST(N'2020-02-24' AS Date), 2, N'', 785493493, N'Интернет', NULL, N'АО567-ТНС-11        ')
INSERT [dbo].[Abonents] ([NumberAbonent], [FIO], [IDGender], [DateOfBirth], [Phone], [Email], [AdressPropiski], [Adress], [SerialAndNumber], [Code], [Issue], [DateOfIssue], [NumberOfDogovor], [DateOfStart], [IDTypeOfDogovor], [Reason], [PersonalAccount], [Services], [DateOfEnd], [IDAbonentEqupment]) VALUES (N'78В00020', N'Емельяненко Марина Ивановна', 1, CAST(N'1980-12-25' AS Date), N'+7 (931) 962-20-15                      ', N'marina88@yandex.ru', N'Россия, г. Волжский, Севернаяул., д. 17 кв.20', N'1678:0:16', N'4413-882242                                       ', N'410-299   ', N'Отделом внутренних дел России по г. Ангарск', CAST(N'2017-01-29' AS Date), N'78В00020-5 - 2020', CAST(N'2020-05-27' AS Date), 1, N'', 785493496, N'Интернет', NULL, N'АО567-ТНС-14        ')
INSERT [dbo].[Abonents] ([NumberAbonent], [FIO], [IDGender], [DateOfBirth], [Phone], [Email], [AdressPropiski], [Adress], [SerialAndNumber], [Code], [Issue], [DateOfIssue], [NumberOfDogovor], [DateOfStart], [IDTypeOfDogovor], [Reason], [PersonalAccount], [Services], [DateOfEnd], [IDAbonentEqupment]) VALUES (N'78В00023', N'Савенков Герасим Емельянович', 2, CAST(N'1979-01-12' AS Date), N'+7 (961) 296-50-28                      ', N'gerasim1979@hotmail.com', N'Россия, г. Орехово-Зуево, Пролетарская ул., д. 12 кв.109', N'1155:0:52', N'4748-514770                                       ', N'670-637   ', N'Управление внутренних дел по г. Архангельск', CAST(N'2020-12-31' AS Date), N'78В00023-8 - 2020', CAST(N'2020-08-15' AS Date), 1, N'', 785493499, N'Интернет', NULL, N'АО567-ТНС-13        ')
INSERT [dbo].[Abonents] ([NumberAbonent], [FIO], [IDGender], [DateOfBirth], [Phone], [Email], [AdressPropiski], [Adress], [SerialAndNumber], [Code], [Issue], [DateOfIssue], [NumberOfDogovor], [DateOfStart], [IDTypeOfDogovor], [Reason], [PersonalAccount], [Services], [DateOfEnd], [IDAbonentEqupment]) VALUES (N'78В00028', N'Корявова Марфа Феоктистовна', 1, CAST(N'1981-03-15' AS Date), N'+7 (952) 835-52-37                      ', N'marfa.koryavova@ya.ru', N'Россия, г. Калуга, Дачная ул., д. 6 кв.146', N'1079:9:10', N'4465-579021                                       ', N'960-397   ', N'Отделом УФМС России по г. Ессентуки', CAST(N'2021-06-27' AS Date), N'78В00028-5 - 2021', CAST(N'2021-05-12' AS Date), 1, N'', 785493504, N'Интернет', NULL, N'АО567-ТНС-14        ')
INSERT [dbo].[Abonents] ([NumberAbonent], [FIO], [IDGender], [DateOfBirth], [Phone], [Email], [AdressPropiski], [Adress], [SerialAndNumber], [Code], [Issue], [DateOfIssue], [NumberOfDogovor], [DateOfStart], [IDTypeOfDogovor], [Reason], [PersonalAccount], [Services], [DateOfEnd], [IDAbonentEqupment]) VALUES (N'78П000002', N'Сазонтов Илья Панкратович', 2, CAST(N'1968-10-01' AS Date), N'+7 (939) 963-15-37                      ', N'ilya86@hotmail.com', N'Россия, г. Тюмень, Колхозная ул., д. 16 кв.219', N'1675:1:23', N'4078-955891                                       ', N'430-593   ', N'Отделением УФМС России по г. Улан-Удэ', CAST(N'2019-11-24' AS Date), N'78П000002-7 - 2020', CAST(N'2020-07-04' AS Date), 1, N'', 785493448, N'Интернет', NULL, N'АО567-ТНС-14        ')
INSERT [dbo].[Abonents] ([NumberAbonent], [FIO], [IDGender], [DateOfBirth], [Phone], [Email], [AdressPropiski], [Adress], [SerialAndNumber], [Code], [Issue], [DateOfIssue], [NumberOfDogovor], [DateOfStart], [IDTypeOfDogovor], [Reason], [PersonalAccount], [Services], [DateOfEnd], [IDAbonentEqupment]) VALUES (N'78П000005', N'Корявина Екатерина Васильевна', 1, CAST(N'1968-05-07' AS Date), N'+7 (972) 832-62-78                      ', N'ekaterina2832@outlook.com', N'Россия, г. Подольск, Озерный пер., д. 3 кв.180', N'7507:15:58', N'4674-163981                                       ', N'440-136   ', N'Отделом УФМС России по г. Краснодар', CAST(N'2017-11-21' AS Date), N'78П000005-10 - 2020', CAST(N'2020-10-07' AS Date), 1, N'', 785493451, N'Интернет', NULL, N'АО567-ТНС-13        ')
INSERT [dbo].[Abonents] ([NumberAbonent], [FIO], [IDGender], [DateOfBirth], [Phone], [Email], [AdressPropiski], [Adress], [SerialAndNumber], [Code], [Issue], [DateOfIssue], [NumberOfDogovor], [DateOfStart], [IDTypeOfDogovor], [Reason], [PersonalAccount], [Services], [DateOfEnd], [IDAbonentEqupment]) VALUES (N'78П000008', N'Коровин Прохор Яковеевичевич', 2, CAST(N'1967-06-01' AS Date), N'+7 (976) 211-74-35                      ', N'prohor7239@rambler.ru', N'Россия, г. Саратов, Октябрьская ул., д. 22 кв.205', N'1686:3:5', N'4881-213142                                       ', N'560-494   ', N'Отделением УФМС России по г. Тула', CAST(N'2020-11-11' AS Date), N'78П000008-5 - 2020', CAST(N'2020-05-10' AS Date), 1, N'Переезд', 785493454, N'Интернет', CAST(N'2020-12-25' AS Date), N'АО567-ТНС-12        ')
INSERT [dbo].[Abonents] ([NumberAbonent], [FIO], [IDGender], [DateOfBirth], [Phone], [Email], [AdressPropiski], [Adress], [SerialAndNumber], [Code], [Issue], [DateOfIssue], [NumberOfDogovor], [DateOfStart], [IDTypeOfDogovor], [Reason], [PersonalAccount], [Services], [DateOfEnd], [IDAbonentEqupment]) VALUES (N'78П000010', N'Сотникова Рада Алексеевна', 1, CAST(N'1969-02-08' AS Date), N'+7 (961) 256-78-85                      ', N'rada.sotnikova@outlook.com', N'Россия, г. Петропавловск-Камчатский, Центральный пер., д. 15 кв.55', N'1005:11:9', N'4214-784297                                       ', N'900-632   ', N'Отделением УФМС России в г. Первоуральск', CAST(N'2015-03-03' AS Date), N'78П000010-7 - 2020', CAST(N'2020-07-12' AS Date), 1, N'', 785493456, N'Интернет', NULL, N'АО567-ТНС-14        ')
INSERT [dbo].[Abonents] ([NumberAbonent], [FIO], [IDGender], [DateOfBirth], [Phone], [Email], [AdressPropiski], [Adress], [SerialAndNumber], [Code], [Issue], [DateOfIssue], [NumberOfDogovor], [DateOfStart], [IDTypeOfDogovor], [Reason], [PersonalAccount], [Services], [DateOfEnd], [IDAbonentEqupment]) VALUES (N'78П000014', N'Онипченко Иван Яковлевич', 2, CAST(N'1981-02-17' AS Date), N'+7 (976) 919-27-53                      ', N'ivan8381@hotmail.com', N'Россия, г. Шахты, Мирная ул., д. 2 кв.89', N'1720:3:12', N'4312-568195                                       ', N'310-996   ', N'Отделением УФМС России по г. Петропавловск-Камчатский', CAST(N'2013-01-29' AS Date), N'78П000014-7 - 2020', CAST(N'2020-07-16' AS Date), 1, N'', 785493460, N'Интернет', NULL, N'АО567-ТНС-14        ')
INSERT [dbo].[Abonents] ([NumberAbonent], [FIO], [IDGender], [DateOfBirth], [Phone], [Email], [AdressPropiski], [Adress], [SerialAndNumber], [Code], [Issue], [DateOfIssue], [NumberOfDogovor], [DateOfStart], [IDTypeOfDogovor], [Reason], [PersonalAccount], [Services], [DateOfEnd], [IDAbonentEqupment]) VALUES (N'78П000015', N'Сазонтова Инна Никитьевна', 1, CAST(N'1965-01-20' AS Date), N'+7 (963) 328-58-26                      ', N'inna20011965@mail.ru', N'Россия, г. Улан-Удэ, Озерная ул., д. 22 кв.22', N'1004:5:26', N'4066-999471                                       ', N'450-296   ', N'ОВД России по г. Ноябрьск', CAST(N'2020-03-17' AS Date), N'78П000015-8 - 2020', CAST(N'2020-08-17' AS Date), 1, N'', 785493461, N'Интернет', CAST(N'2020-08-17' AS Date), N'АО567-ТНС-11        ')
INSERT [dbo].[Abonents] ([NumberAbonent], [FIO], [IDGender], [DateOfBirth], [Phone], [Email], [AdressPropiski], [Adress], [SerialAndNumber], [Code], [Issue], [DateOfIssue], [NumberOfDogovor], [DateOfStart], [IDTypeOfDogovor], [Reason], [PersonalAccount], [Services], [DateOfEnd], [IDAbonentEqupment]) VALUES (N'78П000017', N'Викашева Юлиана Прокловна', 1, CAST(N'1965-05-01' AS Date), N'+7 (986) 669-21-71                      ', N'yuliana01051965@outlook.com', N'Россия, г. Реутов, Цветочная ул., д. 22 кв.60', N'1079:0:14', N'4944-608863                                       ', N'520-843   ', N'Отделением УФМС России в г. Мурманск', CAST(N'2015-09-17' AS Date), N'78П000017-2 - 2018', CAST(N'2018-02-19' AS Date), 1, N'', 785493463, N'Интернет', NULL, N'АО567-ТНС-13        ')
INSERT [dbo].[Abonents] ([NumberAbonent], [FIO], [IDGender], [DateOfBirth], [Phone], [Email], [AdressPropiski], [Adress], [SerialAndNumber], [Code], [Issue], [DateOfIssue], [NumberOfDogovor], [DateOfStart], [IDTypeOfDogovor], [Reason], [PersonalAccount], [Services], [DateOfEnd], [IDAbonentEqupment]) VALUES (N'78П000018', N'Забирова Анастасия Ильиновна', 1, CAST(N'1988-01-20' AS Date), N'+7 (920) 761-80-24                      ', N'anastasiya5199@mail.ru', N'Россия, г. Вологда, Севернаяул., д. 23 кв.192', N'1079:0:18', N'4977-360062                                       ', N'320-709   ', N'ОУФМС России по г. Королёв', CAST(N'2018-06-04' AS Date), N'78П000018-3 - 2018', CAST(N'2018-03-20' AS Date), 1, N'', 785493464, N'Интернет', NULL, N'АО567-ТНС-14        ')
INSERT [dbo].[Abonents] ([NumberAbonent], [FIO], [IDGender], [DateOfBirth], [Phone], [Email], [AdressPropiski], [Adress], [SerialAndNumber], [Code], [Issue], [DateOfIssue], [NumberOfDogovor], [DateOfStart], [IDTypeOfDogovor], [Reason], [PersonalAccount], [Services], [DateOfEnd], [IDAbonentEqupment]) VALUES (N'78П000019', N'Чилаев Филипп Власович', 2, CAST(N'1974-11-08' AS Date), N'+7 (953) 968-77-22                      ', N'filipp84@ya.ru', N'Россия, г. Березники, Луговая ул., д. 22 кв.29', N'1616:7:23', N'4764-148660                                       ', N'240-212   ', N'Отделом УФМС России по г. Салават', CAST(N'2019-04-13' AS Date), N'78П000019-4 - 2018', CAST(N'2018-04-21' AS Date), 1, N'', 785493465, N'Интернет', NULL, N'АО567-ТНС-11        ')
INSERT [dbo].[Abonents] ([NumberAbonent], [FIO], [IDGender], [DateOfBirth], [Phone], [Email], [AdressPropiski], [Adress], [SerialAndNumber], [Code], [Issue], [DateOfIssue], [NumberOfDogovor], [DateOfStart], [IDTypeOfDogovor], [Reason], [PersonalAccount], [Services], [DateOfEnd], [IDAbonentEqupment]) VALUES (N'78П000024', N'Типалова Альбина Вениаминовна', 1, CAST(N'1966-02-20' AS Date), N'+7 (922) 357-70-81                      ', N'albina1966@hotmail.com', N'Россия, г. Рыбинск, Первомайский пер., д. 11 кв.87', N'1163:7:17', N'4448-309925                                       ', N'620-263   ', N'Отделом внутренних дел России по г. Красноярск', CAST(N'2012-01-19' AS Date), N'78П000024-4 - 2019', CAST(N'2019-04-26' AS Date), 1, N'', 785493470, N'Интернет', NULL, N'АО567-ТНС-12        ')
INSERT [dbo].[Abonents] ([NumberAbonent], [FIO], [IDGender], [DateOfBirth], [Phone], [Email], [AdressPropiski], [Adress], [SerialAndNumber], [Code], [Issue], [DateOfIssue], [NumberOfDogovor], [DateOfStart], [IDTypeOfDogovor], [Reason], [PersonalAccount], [Services], [DateOfEnd], [IDAbonentEqupment]) VALUES (N'78П000027', N'Унгерн Данила Гаврннлович', 2, CAST(N'1964-07-09' AS Date), N'+7 (968) 529-93-71                      ', N'danila35@gmail.com', N'Россия, г. Омск, Почтовая ул., д. 13 кв.182', N'1720:0:14', N'4558-533085                                       ', N'150-752   ', N'Отделением УФМС России по г. Сызрань', CAST(N'2017-04-28' AS Date), N'78П000027-7 - 2019', CAST(N'2019-07-04' AS Date), 1, N'', 785493473, N'Интернет', NULL, N'АО567-ТНС-11        ')
INSERT [dbo].[Abonents] ([NumberAbonent], [FIO], [IDGender], [DateOfBirth], [Phone], [Email], [AdressPropiski], [Adress], [SerialAndNumber], [Code], [Issue], [DateOfIssue], [NumberOfDogovor], [DateOfStart], [IDTypeOfDogovor], [Reason], [PersonalAccount], [Services], [DateOfEnd], [IDAbonentEqupment]) VALUES (N'78П000029', N'Трохина Антонина Климентьевна', 1, CAST(N'1976-04-26' AS Date), N'+7 (995) 641-58-36                      ', N'antonina8270@mail.ru', N'Россия, г. Владикавказ, Луговой пер., д. 14 кв.211', N'7503:0:29', N'4756-531306                                       ', N'790-365   ', N'Отделом УФМС России по г. Кемерово', CAST(N'2012-05-30' AS Date), N'78П000029-9 - 2019', CAST(N'2019-09-06' AS Date), 1, N'', 785493475, N'Интернет', NULL, N'АО567-ТНС-13        ')
GO
INSERT [dbo].[Employee] ([ID], [FirstName], [LastName], [Patronymic], [IDRole], [Code], [Login], [Password]) VALUES (1, N'Шилов', N'Вольдемар', N'Степанович', 1, N'ID1516    ', N'admin1', N'admin1')
INSERT [dbo].[Employee] ([ID], [FirstName], [LastName], [Patronymic], [IDRole], [Code], [Login], [Password]) VALUES (2, N'Мясников', N'Власий', N'Лаврентьевич', 3, N'ID1517    ', N'', N'')
INSERT [dbo].[Employee] ([ID], [FirstName], [LastName], [Patronymic], [IDRole], [Code], [Login], [Password]) VALUES (3, N'Макаров', N'Овидий', N'Вячеславович', 4, N'ID1518    ', N'', N'')
INSERT [dbo].[Employee] ([ID], [FirstName], [LastName], [Patronymic], [IDRole], [Code], [Login], [Password]) VALUES (4, N'Рябов', N'Валентин', N'Миронович', 4, N'ID1519    ', N'', N'')
INSERT [dbo].[Employee] ([ID], [FirstName], [LastName], [Patronymic], [IDRole], [Code], [Login], [Password]) VALUES (5, N'Архипов', N'Валентин', N'Богуславович', 4, N'ID1520    ', N'', N'')
INSERT [dbo].[Employee] ([ID], [FirstName], [LastName], [Patronymic], [IDRole], [Code], [Login], [Password]) VALUES (6, N'Федосеев', N'Август', N'Аристархович', 4, N'ID1521    ', N'', N'')
INSERT [dbo].[Employee] ([ID], [FirstName], [LastName], [Patronymic], [IDRole], [Code], [Login], [Password]) VALUES (7, N'Козлов', N'Азарий', N'Владимирович', 4, N'ID1522    ', N'', N'')
INSERT [dbo].[Employee] ([ID], [FirstName], [LastName], [Patronymic], [IDRole], [Code], [Login], [Password]) VALUES (8, N'Кондратьев', N'Владислав', N'Агафонович', 4, N'ID1523    ', N'', N'')
INSERT [dbo].[Employee] ([ID], [FirstName], [LastName], [Patronymic], [IDRole], [Code], [Login], [Password]) VALUES (9, N'Лапин', N'Альфред', N'Александрович', 4, N'ID1524    ', N'', N'')
INSERT [dbo].[Employee] ([ID], [FirstName], [LastName], [Patronymic], [IDRole], [Code], [Login], [Password]) VALUES (10, N'Тимофеев', N'Май', N'Филиппович', 4, N'ID1525    ', N'', N'')
INSERT [dbo].[Employee] ([ID], [FirstName], [LastName], [Patronymic], [IDRole], [Code], [Login], [Password]) VALUES (11, N'Сидоров', N'Арсений', N'Богуславович', 6, N'ID1526    ', N'', N'')
INSERT [dbo].[Employee] ([ID], [FirstName], [LastName], [Patronymic], [IDRole], [Code], [Login], [Password]) VALUES (12, N'Самсонов', N'Егор', N'Тимофеевич', 7, N'ID1527    ', N'', N'')
INSERT [dbo].[Employee] ([ID], [FirstName], [LastName], [Patronymic], [IDRole], [Code], [Login], [Password]) VALUES (13, N'Журавлёв', N'Панкрат', N'Валерьянович', 7, N'ID1528    ', N'', N'')
INSERT [dbo].[Employee] ([ID], [FirstName], [LastName], [Patronymic], [IDRole], [Code], [Login], [Password]) VALUES (14, N'Жуков', N'Виталий', N'Проклович', 7, N'ID1529    ', N'', N'')
INSERT [dbo].[Employee] ([ID], [FirstName], [LastName], [Patronymic], [IDRole], [Code], [Login], [Password]) VALUES (15, N'Якушев', N'Гордий', N'Гордеевич', 7, N'ID1530    ', N'', N'')
INSERT [dbo].[Employee] ([ID], [FirstName], [LastName], [Patronymic], [IDRole], [Code], [Login], [Password]) VALUES (16, N'Симонова', N'Сильвия', N'Валерьевна', 5, N'ID1531    ', N'', N'')
INSERT [dbo].[Employee] ([ID], [FirstName], [LastName], [Patronymic], [IDRole], [Code], [Login], [Password]) VALUES (17, N'Дмитриева', N'Вероника', N'Прокловна', 5, N'ID1532    ', N'', N'')
INSERT [dbo].[Employee] ([ID], [FirstName], [LastName], [Patronymic], [IDRole], [Code], [Login], [Password]) VALUES (18, N'Панова', N'Марина', N'Викторовна', 5, N'ID1533    ', N'', N'')
INSERT [dbo].[Employee] ([ID], [FirstName], [LastName], [Patronymic], [IDRole], [Code], [Login], [Password]) VALUES (19, N'Афанасьева', N'Дарина', N'Львовна', 2, N'ID1534    ', N'', N'')
INSERT [dbo].[Employee] ([ID], [FirstName], [LastName], [Patronymic], [IDRole], [Code], [Login], [Password]) VALUES (20, N'Шубина', N'Мелитта', N'Тарасовна', 2, N'ID1535    ', N'', N'')
INSERT [dbo].[Employee] ([ID], [FirstName], [LastName], [Patronymic], [IDRole], [Code], [Login], [Password]) VALUES (21, N'Белякова', N'Элла', N'Игнатьевна', 2, N'ID1536    ', N'', N'')
INSERT [dbo].[Employee] ([ID], [FirstName], [LastName], [Patronymic], [IDRole], [Code], [Login], [Password]) VALUES (22, N'Осипова', N'Индира', N'Оскаровна', 2, N'ID1537    ', N'', N'')
INSERT [dbo].[Employee] ([ID], [FirstName], [LastName], [Patronymic], [IDRole], [Code], [Login], [Password]) VALUES (23, N'Ефремова', N'Анна', N'Николаевна', 2, N'ID1538    ', N'', N'')
INSERT [dbo].[Employee] ([ID], [FirstName], [LastName], [Patronymic], [IDRole], [Code], [Login], [Password]) VALUES (24, N'Симонова', N'Герда', N'Наумовна', 2, N'ID1539    ', N'', N'')
INSERT [dbo].[Employee] ([ID], [FirstName], [LastName], [Patronymic], [IDRole], [Code], [Login], [Password]) VALUES (25, N'Авдеева', N'Нега', N'Евгеньевна', 2, N'ID1540    ', N'', N'')
INSERT [dbo].[Employee] ([ID], [FirstName], [LastName], [Patronymic], [IDRole], [Code], [Login], [Password]) VALUES (26, N'Никифорова', N'Алиса', N'Робертовна', 2, N'ID1541    ', N'', N'')
INSERT [dbo].[Employee] ([ID], [FirstName], [LastName], [Patronymic], [IDRole], [Code], [Login], [Password]) VALUES (27, N'Семёнова', N'Габриэлла', N'Иринеевна', 2, N'ID1542    ', N'', N'')
INSERT [dbo].[Employee] ([ID], [FirstName], [LastName], [Patronymic], [IDRole], [Code], [Login], [Password]) VALUES (28, N'Авдеева', N'Таисия', N'Анатольевна', 2, N'ID1543    ', N'', N'')
INSERT [dbo].[Employee] ([ID], [FirstName], [LastName], [Patronymic], [IDRole], [Code], [Login], [Password]) VALUES (29, N'Мухина', N'Доминика', N'Лукьяновна', 2, N'ID1544    ', N'', N'')
INSERT [dbo].[Employee] ([ID], [FirstName], [LastName], [Patronymic], [IDRole], [Code], [Login], [Password]) VALUES (30, N'Муравьёва', N'Римма', N'Максовна', 2, N'ID1545    ', N'', N'')
GO
INSERT [dbo].[EqupmentMagistral] ([SerialNumber], [Title]) VALUES (N'М0123ТНС312         ', N'Транспондер TS-100E, ')
INSERT [dbo].[EqupmentMagistral] ([SerialNumber], [Title]) VALUES (N'М234ТНС12           ', N'Агрегирующий транспондер MS-100E-Т10')
INSERT [dbo].[EqupmentMagistral] ([SerialNumber], [Title]) VALUES (N'М431ТНС7647         ', N'Оптические волоконные усилители ')
INSERT [dbo].[EqupmentMagistral] ([SerialNumber], [Title]) VALUES (N'М43535ТНС2677       ', N'Транспондер TD-3F')
INSERT [dbo].[EqupmentMagistral] ([SerialNumber], [Title]) VALUES (N'М455ТНС567          ', N'Агрегирующий транспондер MS-40E-Q10')
INSERT [dbo].[EqupmentMagistral] ([SerialNumber], [Title]) VALUES (N'М535623ТНС8899      ', N'Агрегатор MD-D3FS')
INSERT [dbo].[EqupmentMagistral] ([SerialNumber], [Title]) VALUES (N'М567ТНС87           ', N'Транспондер ТS-40E')
INSERT [dbo].[EqupmentMagistral] ([SerialNumber], [Title]) VALUES (N'М634ТНС67           ', N'SW-2G-8')
INSERT [dbo].[EqupmentMagistral] ([SerialNumber], [Title]) VALUES (N'М654ТНС878          ', N'CM-S-2G-6')
INSERT [dbo].[EqupmentMagistral] ([SerialNumber], [Title]) VALUES (N'М67ТНС98008         ', N'Агрегатор MS-10FX')
INSERT [dbo].[EqupmentMagistral] ([SerialNumber], [Title]) VALUES (N'М877ТНС132          ', N'«ИРТЫШ»')
INSERT [dbo].[EqupmentMagistral] ([SerialNumber], [Title]) VALUES (N'М8888ТНС231         ', N'Транспондер TD-10E')
GO
INSERT [dbo].[Gender] ([ID], [Title]) VALUES (1, N'Женщина')
INSERT [dbo].[Gender] ([ID], [Title]) VALUES (2, N'Мужчина')
GO
INSERT [dbo].[Request] ([ID], [NumberRequest], [DateOfCreate], [PersonalAccount], [IDVidOfServices], [IDTypeOfServices], [IDStatus], [TypeOfEqupment], [DescriptionProblem], [DateOfEnd], [IDTypeOfProblem]) VALUES (1, N'785493421/12/08/2021', CAST(N'2021-08-12' AS Date), 785493421, 1, 1, 1, N'IP', N'Подключить услугу, разводка до двери есть, порт 12', NULL, 1)
INSERT [dbo].[Request] ([ID], [NumberRequest], [DateOfCreate], [PersonalAccount], [IDVidOfServices], [IDTypeOfServices], [IDStatus], [TypeOfEqupment], [DescriptionProblem], [DateOfEnd], [IDTypeOfProblem]) VALUES (2, N'785493429/25/08/2021', CAST(N'2021-08-25' AS Date), 785493429, 2, 2, 2, N'', N'', NULL, 1)
INSERT [dbo].[Request] ([ID], [NumberRequest], [DateOfCreate], [PersonalAccount], [IDVidOfServices], [IDTypeOfServices], [IDStatus], [TypeOfEqupment], [DescriptionProblem], [DateOfEnd], [IDTypeOfProblem]) VALUES (3, N'785493434/26/08/2021', CAST(N'2021-08-26' AS Date), 785493434, 2, 2, 2, N'', N'', NULL, 1)
INSERT [dbo].[Request] ([ID], [NumberRequest], [DateOfCreate], [PersonalAccount], [IDVidOfServices], [IDTypeOfServices], [IDStatus], [TypeOfEqupment], [DescriptionProblem], [DateOfEnd], [IDTypeOfProblem]) VALUES (4, N'785493424/24/08/2021', CAST(N'2021-08-24' AS Date), 785493424, 2, 3, 2, N'', N'', CAST(N'2021-08-25' AS Date), 1)
INSERT [dbo].[Request] ([ID], [NumberRequest], [DateOfCreate], [PersonalAccount], [IDVidOfServices], [IDTypeOfServices], [IDStatus], [TypeOfEqupment], [DescriptionProblem], [DateOfEnd], [IDTypeOfProblem]) VALUES (5, N'785493424/25/08/2021', CAST(N'2021-08-25' AS Date), 785493424, 1, 4, 3, N'', N'', CAST(N'2021-08-25' AS Date), 2)
INSERT [dbo].[Request] ([ID], [NumberRequest], [DateOfCreate], [PersonalAccount], [IDVidOfServices], [IDTypeOfServices], [IDStatus], [TypeOfEqupment], [DescriptionProblem], [DateOfEnd], [IDTypeOfProblem]) VALUES (6, N'785493431/18/08/2021', CAST(N'2021-08-18' AS Date), 785493431, 2, 3, 2, N'', N'', NULL, 1)
INSERT [dbo].[Request] ([ID], [NumberRequest], [DateOfCreate], [PersonalAccount], [IDVidOfServices], [IDTypeOfServices], [IDStatus], [TypeOfEqupment], [DescriptionProblem], [DateOfEnd], [IDTypeOfProblem]) VALUES (7, N'785493427/28/08/2021', CAST(N'2021-08-28' AS Date), 785493427, 2, 3, 2, N'', N'', NULL, 1)
INSERT [dbo].[Request] ([ID], [NumberRequest], [DateOfCreate], [PersonalAccount], [IDVidOfServices], [IDTypeOfServices], [IDStatus], [TypeOfEqupment], [DescriptionProblem], [DateOfEnd], [IDTypeOfProblem]) VALUES (8, N'785493428/28/08/2021', CAST(N'2021-08-28' AS Date), 785493428, 2, 2, 2, N'', N'', NULL, 1)
INSERT [dbo].[Request] ([ID], [NumberRequest], [DateOfCreate], [PersonalAccount], [IDVidOfServices], [IDTypeOfServices], [IDStatus], [TypeOfEqupment], [DescriptionProblem], [DateOfEnd], [IDTypeOfProblem]) VALUES (9, N'785493431/28/08/2021', CAST(N'2021-08-28' AS Date), 785493431, 2, 2, 2, N'', N'', NULL, 1)
INSERT [dbo].[Request] ([ID], [NumberRequest], [DateOfCreate], [PersonalAccount], [IDVidOfServices], [IDTypeOfServices], [IDStatus], [TypeOfEqupment], [DescriptionProblem], [DateOfEnd], [IDTypeOfProblem]) VALUES (10, N'785493453/28/08/2021', CAST(N'2021-08-28' AS Date), 785493453, 2, 2, 2, N'', N'', NULL, 1)
INSERT [dbo].[Request] ([ID], [NumberRequest], [DateOfCreate], [PersonalAccount], [IDVidOfServices], [IDTypeOfServices], [IDStatus], [TypeOfEqupment], [DescriptionProblem], [DateOfEnd], [IDTypeOfProblem]) VALUES (11, N'785493457/28/08/2021', CAST(N'2021-08-28' AS Date), 785493457, 2, 2, 2, N'', N'', NULL, 1)
INSERT [dbo].[Request] ([ID], [NumberRequest], [DateOfCreate], [PersonalAccount], [IDVidOfServices], [IDTypeOfServices], [IDStatus], [TypeOfEqupment], [DescriptionProblem], [DateOfEnd], [IDTypeOfProblem]) VALUES (12, N'785493464/28/08/2021', CAST(N'2021-08-28' AS Date), 785493464, 2, 2, 2, N'', N'', NULL, 1)
INSERT [dbo].[Request] ([ID], [NumberRequest], [DateOfCreate], [PersonalAccount], [IDVidOfServices], [IDTypeOfServices], [IDStatus], [TypeOfEqupment], [DescriptionProblem], [DateOfEnd], [IDTypeOfProblem]) VALUES (13, N'785493469/30/08/2021', CAST(N'2021-08-28' AS Date), 785493469, 1, 5, 2, N'', N'От распределительного шкафа в подвале', NULL, 1)
INSERT [dbo].[Request] ([ID], [NumberRequest], [DateOfCreate], [PersonalAccount], [IDVidOfServices], [IDTypeOfServices], [IDStatus], [TypeOfEqupment], [DescriptionProblem], [DateOfEnd], [IDTypeOfProblem]) VALUES (14, N'785493494/28/08/2021', CAST(N'2021-08-28' AS Date), 785493494, 1, 5, 2, N'', N'От распределительного шкафа в подвале', NULL, 1)
INSERT [dbo].[Request] ([ID], [NumberRequest], [DateOfCreate], [PersonalAccount], [IDVidOfServices], [IDTypeOfServices], [IDStatus], [TypeOfEqupment], [DescriptionProblem], [DateOfEnd], [IDTypeOfProblem]) VALUES (15, N'785493495/28/08/2021', CAST(N'2021-08-28' AS Date), 785493495, 2, 2, 2, N'', N'', NULL, 1)
INSERT [dbo].[Request] ([ID], [NumberRequest], [DateOfCreate], [PersonalAccount], [IDVidOfServices], [IDTypeOfServices], [IDStatus], [TypeOfEqupment], [DescriptionProblem], [DateOfEnd], [IDTypeOfProblem]) VALUES (16, N'78549349628/08/2021', CAST(N'2021-08-28' AS Date), 785493496, 2, 2, 2, N'', N'', NULL, 1)
INSERT [dbo].[Request] ([ID], [NumberRequest], [DateOfCreate], [PersonalAccount], [IDVidOfServices], [IDTypeOfServices], [IDStatus], [TypeOfEqupment], [DescriptionProblem], [DateOfEnd], [IDTypeOfProblem]) VALUES (17, N'785493497/28/08/2021', CAST(N'2021-08-28' AS Date), 785493497, 2, 2, 2, N'', N'', NULL, 1)
INSERT [dbo].[Request] ([ID], [NumberRequest], [DateOfCreate], [PersonalAccount], [IDVidOfServices], [IDTypeOfServices], [IDStatus], [TypeOfEqupment], [DescriptionProblem], [DateOfEnd], [IDTypeOfProblem]) VALUES (18, N'785493498/28/08/2021', CAST(N'2021-08-28' AS Date), 785493498, 1, 5, 2, N'', N'От распределительного шкафа в подвале', NULL, 1)
INSERT [dbo].[Request] ([ID], [NumberRequest], [DateOfCreate], [PersonalAccount], [IDVidOfServices], [IDTypeOfServices], [IDStatus], [TypeOfEqupment], [DescriptionProblem], [DateOfEnd], [IDTypeOfProblem]) VALUES (19, N'785493499/28/08/2021', CAST(N'2021-08-28' AS Date), 785493499, 2, 2, 2, N'', N'', NULL, 1)
INSERT [dbo].[Request] ([ID], [NumberRequest], [DateOfCreate], [PersonalAccount], [IDVidOfServices], [IDTypeOfServices], [IDStatus], [TypeOfEqupment], [DescriptionProblem], [DateOfEnd], [IDTypeOfProblem]) VALUES (20, N'785493500/28/08/2021', CAST(N'2021-08-28' AS Date), 785493500, 2, 2, 2, N'', N'', NULL, 1)
INSERT [dbo].[Request] ([ID], [NumberRequest], [DateOfCreate], [PersonalAccount], [IDVidOfServices], [IDTypeOfServices], [IDStatus], [TypeOfEqupment], [DescriptionProblem], [DateOfEnd], [IDTypeOfProblem]) VALUES (21, N'785493501/28/08/2021', CAST(N'2021-08-28' AS Date), 785493501, 2, 2, 2, N'', N'', NULL, 1)
INSERT [dbo].[Request] ([ID], [NumberRequest], [DateOfCreate], [PersonalAccount], [IDVidOfServices], [IDTypeOfServices], [IDStatus], [TypeOfEqupment], [DescriptionProblem], [DateOfEnd], [IDTypeOfProblem]) VALUES (22, N'785493502/28/08/2021', CAST(N'2021-08-28' AS Date), 785493502, 2, 2, 2, N'', N'', NULL, 1)
INSERT [dbo].[Request] ([ID], [NumberRequest], [DateOfCreate], [PersonalAccount], [IDVidOfServices], [IDTypeOfServices], [IDStatus], [TypeOfEqupment], [DescriptionProblem], [DateOfEnd], [IDTypeOfProblem]) VALUES (23, N'785493503/28/08/2021', CAST(N'2021-08-28' AS Date), 785493503, 1, 5, 2, N'', N'От распределительного шкафа в подвале', NULL, 1)
INSERT [dbo].[Request] ([ID], [NumberRequest], [DateOfCreate], [PersonalAccount], [IDVidOfServices], [IDTypeOfServices], [IDStatus], [TypeOfEqupment], [DescriptionProblem], [DateOfEnd], [IDTypeOfProblem]) VALUES (24, N'785493504/28/08/2021', CAST(N'2021-08-28' AS Date), 785493504, 2, 2, 2, N'', N'', NULL, 1)
INSERT [dbo].[Request] ([ID], [NumberRequest], [DateOfCreate], [PersonalAccount], [IDVidOfServices], [IDTypeOfServices], [IDStatus], [TypeOfEqupment], [DescriptionProblem], [DateOfEnd], [IDTypeOfProblem]) VALUES (25, N'785493505/28/08/2021', CAST(N'2021-08-28' AS Date), 785493505, 1, 5, 2, N'', N'От распределительного шкафа в подвале', NULL, 1)
INSERT [dbo].[Request] ([ID], [NumberRequest], [DateOfCreate], [PersonalAccount], [IDVidOfServices], [IDTypeOfServices], [IDStatus], [TypeOfEqupment], [DescriptionProblem], [DateOfEnd], [IDTypeOfProblem]) VALUES (26, N'785493506/28/08/2021', CAST(N'2021-08-28' AS Date), 785493506, 2, 2, 2, N'', N'', NULL, 1)
GO
INSERT [dbo].[Role] ([ID], [Role], [Information]) VALUES (1, N'Руководитель отдела по работе с клиентами', N'"27 августа, собрание акционеров 12.00')
INSERT [dbo].[Role] ([ID], [Role], [Information]) VALUES (2, N'Менеджер по работе с клиентами', N'"27 августа, 10.00. Планерка менеджеров')
INSERT [dbo].[Role] ([ID], [Role], [Information]) VALUES (3, N'Руководитель отдела технической поддержки', N'27 августа, собрание акционеров 12.00')
INSERT [dbo].[Role] ([ID], [Role], [Information]) VALUES (4, N'Специалист ТП (выездной инженер)', N'15.00 27 августа собрание техдепартамента')
INSERT [dbo].[Role] ([ID], [Role], [Information]) VALUES (5, N'Бухгалтер', N'')
INSERT [dbo].[Role] ([ID], [Role], [Information]) VALUES (6, N'Директор по развитию', N'27 августа, собрание акционеров 12.00')
INSERT [dbo].[Role] ([ID], [Role], [Information]) VALUES (7, N'Сотрудник технического департамента', N'15.00 27 августа собрание техдепартамента')
GO
INSERT [dbo].[SetiDostupa] ([SerialNumber], [Title]) VALUES (N'СД12ТНС_01          ', N'Точка доступа Cisco AIR-SAP702I ')
INSERT [dbo].[SetiDostupa] ([SerialNumber], [Title]) VALUES (N'СД12ТНС_02          ', N'Точка доступа Cisco ')
INSERT [dbo].[SetiDostupa] ([SerialNumber], [Title]) VALUES (N'СД12ТНС_03          ', N'Точка доступа Cisco ')
INSERT [dbo].[SetiDostupa] ([SerialNumber], [Title]) VALUES (N'СД12ТНС_04          ', N'Точка доступа Cisco AIR-SAP2602E ')
INSERT [dbo].[SetiDostupa] ([SerialNumber], [Title]) VALUES (N'СД12ТНС_05          ', N'Трансивер X2-10GB-LX4 Cisco ')
INSERT [dbo].[SetiDostupa] ([SerialNumber], [Title]) VALUES (N'СД12ТНС_06          ', N'Точка доступа Cisco ')
INSERT [dbo].[SetiDostupa] ([SerialNumber], [Title]) VALUES (N'СД12ТНС_07          ', N'Коммутатор Cisco ')
INSERT [dbo].[SetiDostupa] ([SerialNumber], [Title]) VALUES (N'СД12ТНС_08          ', N'Точка доступа Cisco ')
INSERT [dbo].[SetiDostupa] ([SerialNumber], [Title]) VALUES (N'СД12ТНС_09          ', N'Точка доступа Cisco ')
INSERT [dbo].[SetiDostupa] ([SerialNumber], [Title]) VALUES (N'СД12ТНС_10          ', N'Коммутатор Switch D-Link DES-1008D ')
INSERT [dbo].[SetiDostupa] ([SerialNumber], [Title]) VALUES (N'СД12ТНС_11          ', N'Интернет маршрутизатор D-Link DIR-815 ')
INSERT [dbo].[SetiDostupa] ([SerialNumber], [Title]) VALUES (N'СД12ТНС_12          ', N'Интернет маршрутизатор D-Link DIR-842 ')
INSERT [dbo].[SetiDostupa] ([SerialNumber], [Title]) VALUES (N'СД12ТНС_13          ', N'Интернет маршрутизатор D-Link DIR-825 ')
INSERT [dbo].[SetiDostupa] ([SerialNumber], [Title]) VALUES (N'СД12ТНС_14          ', N'Коммутатор D-Link DES-1008P ')
INSERT [dbo].[SetiDostupa] ([SerialNumber], [Title]) VALUES (N'СД12ТНС_15          ', N'Интернет маршрутизатор D-Link DIR-825 ')
INSERT [dbo].[SetiDostupa] ([SerialNumber], [Title]) VALUES (N'СД12ТНС_16          ', N'Коммутатор Switch D-Link DGS-1008MP ')
INSERT [dbo].[SetiDostupa] ([SerialNumber], [Title]) VALUES (N'СД12ТНС_17          ', N'Интернет маршрутизатор D-link DWR-921 ')
INSERT [dbo].[SetiDostupa] ([SerialNumber], [Title]) VALUES (N'СД12ТНС_18          ', N'Коммутатор D-Link DES-3200-28 ')
INSERT [dbo].[SetiDostupa] ([SerialNumber], [Title]) VALUES (N'СД12ТНС_19          ', N'Интернет маршрутизатор D-Link DIR-645 ')
INSERT [dbo].[SetiDostupa] ([SerialNumber], [Title]) VALUES (N'СД12ТНС_20          ', N'Коммутатор D-Link DGS-1210-28P ')
INSERT [dbo].[SetiDostupa] ([SerialNumber], [Title]) VALUES (N'СД12ТНС_21          ', N'Коммутатор Switch D-Link ')
INSERT [dbo].[SetiDostupa] ([SerialNumber], [Title]) VALUES (N'СД12ТНС_23          ', N'Коммутатор HP OfficeConnect 1420-8G ')
INSERT [dbo].[SetiDostupa] ([SerialNumber], [Title]) VALUES (N'СД12ТНС_24          ', N'Точка доступа HP ProCurve ')
INSERT [dbo].[SetiDostupa] ([SerialNumber], [Title]) VALUES (N'СД12ТНС_25          ', N'Коммутатор HP 1420-24G-2SFP')
INSERT [dbo].[SetiDostupa] ([SerialNumber], [Title]) VALUES (N'СД12ТНС_26          ', N'Коммутатор HP 3100-24 v2 EI ')
INSERT [dbo].[SetiDostupa] ([SerialNumber], [Title]) VALUES (N'СД12ТНС_27          ', N'Коммутатор HP 5500-24G EI #JD377A')
INSERT [dbo].[SetiDostupa] ([SerialNumber], [Title]) VALUES (N'СД12ТНС_28          ', N'Коммутатор HP Enterprise 1950-24G-2SFP+-2XGT ')
INSERT [dbo].[SetiDostupa] ([SerialNumber], [Title]) VALUES (N'СД12ТНС_29          ', N'Коммутатор HP Aruba 2530-24-PoE+ ')
INSERT [dbo].[SetiDostupa] ([SerialNumber], [Title]) VALUES (N'СД12ТНС_30          ', N'Коммутатор HP Aruba 2530-48-PoE+  ')
GO
INSERT [dbo].[SPB] ([ID], [Title], [Ploshad], [Naselenie], [CountOfAnderground], [IDTypeOfBuilding]) VALUES (1, N'Василеостровский', CAST(16.640000 AS Decimal(12, 6)), 211048, 3, 1)
INSERT [dbo].[SPB] ([ID], [Title], [Ploshad], [Naselenie], [CountOfAnderground], [IDTypeOfBuilding]) VALUES (2, N'Петроградский', CAST(24.000000 AS Decimal(12, 6)), 125731, 4, 2)
INSERT [dbo].[SPB] ([ID], [Title], [Ploshad], [Naselenie], [CountOfAnderground], [IDTypeOfBuilding]) VALUES (3, N'Адмиралтейский', CAST(13.820000 AS Decimal(12, 6)), 156958, 6, 1)
GO
INSERT [dbo].[Status] ([ID], [Title]) VALUES (1, N'Новая')
INSERT [dbo].[Status] ([ID], [Title]) VALUES (2, N'Требует выезда')
INSERT [dbo].[Status] ([ID], [Title]) VALUES (3, N'Закрыта')
GO
INSERT [dbo].[TypeOfBuilding] ([ID], [Title]) VALUES (1, N'Плотная городская застройка')
INSERT [dbo].[TypeOfBuilding] ([ID], [Title]) VALUES (2, N'Средняя городская застройка')
GO
INSERT [dbo].[TypeOfDogovor] ([ID], [Title]) VALUES (1, N'с пролонгацией')
INSERT [dbo].[TypeOfDogovor] ([ID], [Title]) VALUES (2, N'без пролонгации')
GO
INSERT [dbo].[TypeOfProblem] ([ID], [Title]) VALUES (1, N'ТО')
INSERT [dbo].[TypeOfProblem] ([ID], [Title]) VALUES (2, N'консультация')
GO
INSERT [dbo].[TypeOfServices] ([ID], [Title]) VALUES (1, N'Подключение услуг на существующей инфраструктуре')
INSERT [dbo].[TypeOfServices] ([ID], [Title]) VALUES (2, N'Нет доступа к услуге')
INSERT [dbo].[TypeOfServices] ([ID], [Title]) VALUES (3, N'Низкая скорость соединения')
INSERT [dbo].[TypeOfServices] ([ID], [Title]) VALUES (4, N'Подключение услуг на новой инфраструктуре')
INSERT [dbo].[TypeOfServices] ([ID], [Title]) VALUES (5, N'Подключение на новой инфраструктуре')
GO
INSERT [dbo].[VidOfServices] ([ID], [Title]) VALUES (1, N'Подключение')
INSERT [dbo].[VidOfServices] ([ID], [Title]) VALUES (2, N'Диагностика и настройка оборудования/подключения')
GO
ALTER TABLE [dbo].[Abonents]  WITH CHECK ADD  CONSTRAINT [FK_Abonents_AbonentEqupment] FOREIGN KEY([IDAbonentEqupment])
REFERENCES [dbo].[AbonentEqupment] ([SerialNumber])
GO
ALTER TABLE [dbo].[Abonents] CHECK CONSTRAINT [FK_Abonents_AbonentEqupment]
GO
ALTER TABLE [dbo].[Abonents]  WITH CHECK ADD  CONSTRAINT [FK_Abonents_Gender] FOREIGN KEY([IDGender])
REFERENCES [dbo].[Gender] ([ID])
GO
ALTER TABLE [dbo].[Abonents] CHECK CONSTRAINT [FK_Abonents_Gender]
GO
ALTER TABLE [dbo].[Abonents]  WITH CHECK ADD  CONSTRAINT [FK_Abonents_TypeOfDogovor] FOREIGN KEY([IDTypeOfDogovor])
REFERENCES [dbo].[TypeOfDogovor] ([ID])
GO
ALTER TABLE [dbo].[Abonents] CHECK CONSTRAINT [FK_Abonents_TypeOfDogovor]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Role] FOREIGN KEY([IDRole])
REFERENCES [dbo].[Role] ([ID])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Role]
GO
ALTER TABLE [dbo].[Request]  WITH CHECK ADD  CONSTRAINT [FK_Request_Status] FOREIGN KEY([IDStatus])
REFERENCES [dbo].[Status] ([ID])
GO
ALTER TABLE [dbo].[Request] CHECK CONSTRAINT [FK_Request_Status]
GO
ALTER TABLE [dbo].[Request]  WITH CHECK ADD  CONSTRAINT [FK_Request_TypeOfProblem] FOREIGN KEY([IDTypeOfProblem])
REFERENCES [dbo].[TypeOfProblem] ([ID])
GO
ALTER TABLE [dbo].[Request] CHECK CONSTRAINT [FK_Request_TypeOfProblem]
GO
ALTER TABLE [dbo].[Request]  WITH CHECK ADD  CONSTRAINT [FK_Request_TypeOfServices] FOREIGN KEY([IDTypeOfServices])
REFERENCES [dbo].[TypeOfServices] ([ID])
GO
ALTER TABLE [dbo].[Request] CHECK CONSTRAINT [FK_Request_TypeOfServices]
GO
ALTER TABLE [dbo].[Request]  WITH CHECK ADD  CONSTRAINT [FK_Request_VidOfServices] FOREIGN KEY([IDVidOfServices])
REFERENCES [dbo].[VidOfServices] ([ID])
GO
ALTER TABLE [dbo].[Request] CHECK CONSTRAINT [FK_Request_VidOfServices]
GO
ALTER TABLE [dbo].[SPB]  WITH CHECK ADD  CONSTRAINT [FK_SPB_TypeOfBuilding] FOREIGN KEY([IDTypeOfBuilding])
REFERENCES [dbo].[TypeOfBuilding] ([ID])
GO
ALTER TABLE [dbo].[SPB] CHECK CONSTRAINT [FK_SPB_TypeOfBuilding]
GO
