/****** Object:  Table [dbo].[Booking]    Script Date: 23/07/2021 11:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Booking](
	[BookingId] [int] IDENTITY(1,1) NOT NULL,
	[Registration] [varchar](8) NOT NULL,
	[BookingDate] [datetime] NOT NULL,
	[BookingTypeId] [int] NOT NULL,
	[VehicleModelId] [int] NOT NULL,
 CONSTRAINT [PK_Booking] PRIMARY KEY CLUSTERED 
(
	[BookingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BookingType]    Script Date: 23/07/2021 11:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BookingType](
	[TypeId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_BookingType] PRIMARY KEY CLUSTERED 
(
	[TypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VehicleMake]    Script Date: 23/07/2021 11:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VehicleMake](
	[MakeId] [int] IDENTITY(1,1) NOT NULL,
	[Make] [varchar](100) NOT NULL,
 CONSTRAINT [PK_VehicleMake] PRIMARY KEY CLUSTERED 
(
	[MakeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VehicleModel]    Script Date: 23/07/2021 11:28:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VehicleModel](
	[ModelId] [int] IDENTITY(1,1) NOT NULL,
	[Model] [varchar](100) NOT NULL,
	[MakeId] [int] NOT NULL,
 CONSTRAINT [PK_VehicleModel] PRIMARY KEY CLUSTERED 
(
	[ModelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[BookingType] ON 
GO
INSERT [dbo].[BookingType] ([TypeId], [Name]) VALUES (1, N'Service')
GO
INSERT [dbo].[BookingType] ([TypeId], [Name]) VALUES (2, N'MOT')
GO
INSERT [dbo].[BookingType] ([TypeId], [Name]) VALUES (3, N'Repair')
GO
SET IDENTITY_INSERT [dbo].[BookingType] OFF
GO
SET IDENTITY_INSERT [dbo].[VehicleMake] ON 
GO
INSERT [dbo].[VehicleMake] ([MakeId], [Make]) VALUES (1, N'Mercedes-Benz')
GO
INSERT [dbo].[VehicleMake] ([MakeId], [Make]) VALUES (2, N'Toyota')
GO
INSERT [dbo].[VehicleMake] ([MakeId], [Make]) VALUES (3, N'Volkswagen')
GO
INSERT [dbo].[VehicleMake] ([MakeId], [Make]) VALUES (4, N'BMW')
GO
INSERT [dbo].[VehicleMake] ([MakeId], [Make]) VALUES (5, N'Porsche')
GO
INSERT [dbo].[VehicleMake] ([MakeId], [Make]) VALUES (6, N'Honda')
GO
INSERT [dbo].[VehicleMake] ([MakeId], [Make]) VALUES (7, N'Ford')
GO
INSERT [dbo].[VehicleMake] ([MakeId], [Make]) VALUES (8, N'Nissan')
GO
INSERT [dbo].[VehicleMake] ([MakeId], [Make]) VALUES (9, N'Audi')
GO
INSERT [dbo].[VehicleMake] ([MakeId], [Make]) VALUES (10, N'Volvo')
GO
SET IDENTITY_INSERT [dbo].[VehicleMake] OFF
GO
SET IDENTITY_INSERT [dbo].[VehicleModel] ON 
GO
INSERT [dbo].[VehicleModel] ([ModelId], [Model], [MakeId]) VALUES (1, N'190 E Sedan', 1)
GO
INSERT [dbo].[VehicleModel] ([ModelId], [Model], [MakeId]) VALUES (2, N'300 CE Coupe, Convertible', 1)
GO
INSERT [dbo].[VehicleModel] ([ModelId], [Model], [MakeId]) VALUES (3, N'300 CE Coupe', 1)
GO
INSERT [dbo].[VehicleModel] ([ModelId], [Model], [MakeId]) VALUES (4, N'300 D Sedan', 1)
GO
INSERT [dbo].[VehicleModel] ([ModelId], [Model], [MakeId]) VALUES (5, N'300 E Sedan', 1)
GO
INSERT [dbo].[VehicleModel] ([ModelId], [Model], [MakeId]) VALUES (6, N'300 SD Sedan', 1)
GO
INSERT [dbo].[VehicleModel] ([ModelId], [Model], [MakeId]) VALUES (7, N'300 SE Sedan', 1)
GO
INSERT [dbo].[VehicleModel] ([ModelId], [Model], [MakeId]) VALUES (8, N'300 SL Convertible', 1)
GO
INSERT [dbo].[VehicleModel] ([ModelId], [Model], [MakeId]) VALUES (9, N'300 TE Wagon', 1)
GO
INSERT [dbo].[VehicleModel] ([ModelId], [Model], [MakeId]) VALUES (10, N'400 E Sedan', 1)
GO
INSERT [dbo].[VehicleModel] ([ModelId], [Model], [MakeId]) VALUES (11, N'400 SE Sedan', 1)
GO
INSERT [dbo].[VehicleModel] ([ModelId], [Model], [MakeId]) VALUES (12, N'400 SEL Sedan', 1)
GO
INSERT [dbo].[VehicleModel] ([ModelId], [Model], [MakeId]) VALUES (13, N'500 E Sedan', 1)
GO
INSERT [dbo].[VehicleModel] ([ModelId], [Model], [MakeId]) VALUES (14, N'500 SEC Coupe', 1)
GO
INSERT [dbo].[VehicleModel] ([ModelId], [Model], [MakeId]) VALUES (15, N'500 SEL Sedan', 1)
GO
INSERT [dbo].[VehicleModel] ([ModelId], [Model], [MakeId]) VALUES (16, N'500 SL Convertible', 1)
GO
INSERT [dbo].[VehicleModel] ([ModelId], [Model], [MakeId]) VALUES (17, N'600 SEC Coupe', 1)
GO
INSERT [dbo].[VehicleModel] ([ModelId], [Model], [MakeId]) VALUES (18, N'600 SEL Sedan', 1)
GO
INSERT [dbo].[VehicleModel] ([ModelId], [Model], [MakeId]) VALUES (19, N'600 SL Convertible', 1)
GO
INSERT [dbo].[VehicleModel] ([ModelId], [Model], [MakeId]) VALUES (20, N'A-Class Sedan', 1)
GO
INSERT [dbo].[VehicleModel] ([ModelId], [Model], [MakeId]) VALUES (21, N'B-Class Hatchback', 1)
GO
INSERT [dbo].[VehicleModel] ([ModelId], [Model], [MakeId]) VALUES (22, N'C-Class Convertible, Sedan, Coupe', 1)
GO
INSERT [dbo].[VehicleModel] ([ModelId], [Model], [MakeId]) VALUES (23, N'C-Class Convertible, Coupe, Sedan', 1)
GO
INSERT [dbo].[VehicleModel] ([ModelId], [Model], [MakeId]) VALUES (24, N'4Runner SUV', 2)
GO
INSERT [dbo].[VehicleModel] ([ModelId], [Model], [MakeId]) VALUES (25, N'86 Coupe', 2)
GO
INSERT [dbo].[VehicleModel] ([ModelId], [Model], [MakeId]) VALUES (26, N'Avalon Sedan', 2)
GO
INSERT [dbo].[VehicleModel] ([ModelId], [Model], [MakeId]) VALUES (27, N'Arteon Sedan', 3)
GO
INSERT [dbo].[VehicleModel] ([ModelId], [Model], [MakeId]) VALUES (28, N'Atlas SUV', 3)
GO
INSERT [dbo].[VehicleModel] ([ModelId], [Model], [MakeId]) VALUES (29, N'Atlas Cross Sport SUV', 3)
GO
INSERT [dbo].[VehicleModel] ([ModelId], [Model], [MakeId]) VALUES (30, N'Beetle Hatchback, Convertible', 3)
GO
INSERT [dbo].[VehicleModel] ([ModelId], [Model], [MakeId]) VALUES (31, N'Beetle Convertible, Coupe, Hatchback', 3)
GO
INSERT [dbo].[VehicleModel] ([ModelId], [Model], [MakeId]) VALUES (32, N'Beetle Hatchback', 3)
GO
INSERT [dbo].[VehicleModel] ([ModelId], [Model], [MakeId]) VALUES (33, N'CC Sedan', 3)
GO
INSERT [dbo].[VehicleModel] ([ModelId], [Model], [MakeId]) VALUES (34, N'Cabrio Convertible', 3)
GO
INSERT [dbo].[VehicleModel] ([ModelId], [Model], [MakeId]) VALUES (35, N'Cabrio (New) Convertible', 3)
GO
INSERT [dbo].[VehicleModel] ([ModelId], [Model], [MakeId]) VALUES (36, N'Cabriolet Convertible', 3)
GO
INSERT [dbo].[VehicleModel] ([ModelId], [Model], [MakeId]) VALUES (37, N'Corrado Coupe', 3)
GO
INSERT [dbo].[VehicleModel] ([ModelId], [Model], [MakeId]) VALUES (38, N'Corrado Hatchback', 3)
GO
INSERT [dbo].[VehicleModel] ([ModelId], [Model], [MakeId]) VALUES (39, N'Eos Convertible', 3)
GO
INSERT [dbo].[VehicleModel] ([ModelId], [Model], [MakeId]) VALUES (40, N'Eurovan Van/Minivan', 3)
GO
INSERT [dbo].[VehicleModel] ([ModelId], [Model], [MakeId]) VALUES (41, N'Fox Coupe, Sedan', 3)
GO
INSERT [dbo].[VehicleModel] ([ModelId], [Model], [MakeId]) VALUES (42, N'Fox Sedan, Coupe', 3)
GO
INSERT [dbo].[VehicleModel] ([ModelId], [Model], [MakeId]) VALUES (43, N'GLI Sedan', 3)
GO
INSERT [dbo].[VehicleModel] ([ModelId], [Model], [MakeId]) VALUES (44, N'GTI Hatchback', 3)
GO
INSERT [dbo].[VehicleModel] ([ModelId], [Model], [MakeId]) VALUES (45, N'GTI (New) Hatchback', 3)
GO
INSERT [dbo].[VehicleModel] ([ModelId], [Model], [MakeId]) VALUES (46, N'Golf Hatchback', 3)
GO
INSERT [dbo].[VehicleModel] ([ModelId], [Model], [MakeId]) VALUES (47, N'1 Series Coupe, Convertible', 4)
GO
INSERT [dbo].[VehicleModel] ([ModelId], [Model], [MakeId]) VALUES (48, N'1 Series Convertible, Coupe', 4)
GO
INSERT [dbo].[VehicleModel] ([ModelId], [Model], [MakeId]) VALUES (49, N'2 Series Coupe, Convertible', 4)
GO
INSERT [dbo].[VehicleModel] ([ModelId], [Model], [MakeId]) VALUES (50, N'2 Series Convertible, Coupe', 4)
GO
INSERT [dbo].[VehicleModel] ([ModelId], [Model], [MakeId]) VALUES (51, N'2 Series Coupe', 4)
GO
INSERT [dbo].[VehicleModel] ([ModelId], [Model], [MakeId]) VALUES (52, N'3 Series Sedan', 4)
GO
INSERT [dbo].[VehicleModel] ([ModelId], [Model], [MakeId]) VALUES (53, N'3 Series Sedan, Wagon', 4)
GO
INSERT [dbo].[VehicleModel] ([ModelId], [Model], [MakeId]) VALUES (54, N'3 Series Wagon, Sedan', 4)
GO
INSERT [dbo].[VehicleModel] ([ModelId], [Model], [MakeId]) VALUES (55, N'3 Series Coupe, Convertible, Wagon, Sedan', 4)
GO
INSERT [dbo].[VehicleModel] ([ModelId], [Model], [MakeId]) VALUES (56, N'3 Series Convertible, Sedan, Coupe', 4)
GO
INSERT [dbo].[VehicleModel] ([ModelId], [Model], [MakeId]) VALUES (57, N'3 Series Sedan, Coupe, Convertible, Wagon', 4)
GO
INSERT [dbo].[VehicleModel] ([ModelId], [Model], [MakeId]) VALUES (58, N'3 Series Sedan, Coupe, Wagon, Convertible', 4)
GO
INSERT [dbo].[VehicleModel] ([ModelId], [Model], [MakeId]) VALUES (59, N'3 Series Sedan, Convertible, Coupe, Wagon', 4)
GO
INSERT [dbo].[VehicleModel] ([ModelId], [Model], [MakeId]) VALUES (60, N'3 Series Coupe, Sedan, Convertible, Wagon', 4)
GO
INSERT [dbo].[VehicleModel] ([ModelId], [Model], [MakeId]) VALUES (61, N'3 Series Coupe, Hatchback, Convertible, Sedan', 4)
GO
INSERT [dbo].[VehicleModel] ([ModelId], [Model], [MakeId]) VALUES (62, N'3 Series Coupe, Sedan, Wagon, Convertible', 4)
GO
INSERT [dbo].[VehicleModel] ([ModelId], [Model], [MakeId]) VALUES (63, N'3 Series Sedan, Wagon, Convertible, Coupe', 4)
GO
INSERT [dbo].[VehicleModel] ([ModelId], [Model], [MakeId]) VALUES (64, N'3 Series Hatchback, Sedan, Coupe, Convertible', 4)
GO
INSERT [dbo].[VehicleModel] ([ModelId], [Model], [MakeId]) VALUES (65, N'3 Series Sedan, Coupe, Convertible', 4)
GO
INSERT [dbo].[VehicleModel] ([ModelId], [Model], [MakeId]) VALUES (66, N'3 Series Hatchback, Coupe, Sedan, Convertible', 4)
GO
SET IDENTITY_INSERT [dbo].[VehicleModel] OFF
GO
ALTER TABLE [dbo].[Booking]  WITH CHECK ADD  CONSTRAINT [FK_Booking_BookingType] FOREIGN KEY([BookingTypeId])
REFERENCES [dbo].[BookingType] ([TypeId])
GO
ALTER TABLE [dbo].[Booking] CHECK CONSTRAINT [FK_Booking_BookingType]
GO
ALTER TABLE [dbo].[Booking]  WITH CHECK ADD  CONSTRAINT [FK_Booking_VehicleModel] FOREIGN KEY([VehicleModelId])
REFERENCES [dbo].[VehicleModel] ([ModelId])
GO
ALTER TABLE [dbo].[Booking] CHECK CONSTRAINT [FK_Booking_VehicleModel]
GO
ALTER TABLE [dbo].[VehicleModel]  WITH CHECK ADD  CONSTRAINT [FK_VehicleModel_VehicleMake] FOREIGN KEY([MakeId])
REFERENCES [dbo].[VehicleMake] ([MakeId])
GO
ALTER TABLE [dbo].[VehicleModel] CHECK CONSTRAINT [FK_VehicleModel_VehicleMake]
GO

