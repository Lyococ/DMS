/****** Object:  Table [dbo].[Categories]    Script Date: 4/10/2023 4:47:44 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [uniqueidentifier] NOT NULL,
	[Category] [nvarchar](50) NOT NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DataUser]    Script Date: 4/10/2023 4:47:44 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DataUser](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[Password] [nvarchar](max) NOT NULL,
	[Img] [varbinary](max) NULL,
	[IdProfile] [uniqueidentifier] NOT NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_DataUser] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mensajes]    Script Date: 4/10/2023 4:47:44 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mensajes](
	[Id] [uniqueidentifier] NOT NULL,
	[Mensaje] [varchar](100) NOT NULL,
	[Codigo] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_Mensajes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Menu]    Script Date: 4/10/2023 4:47:44 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menu](
	[IdMenu] [uniqueidentifier] NOT NULL,
	[Name] [varchar](50) NULL,
	[UrlMenu] [varchar](max) NULL,
	[Stete] [bit] NULL,
 CONSTRAINT [PK_Menu] PRIMARY KEY CLUSTERED 
(
	[IdMenu] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MenuProfiles]    Script Date: 4/10/2023 4:47:44 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MenuProfiles](
	[IdMenuProfiles] [int] IDENTITY(1,1) NOT NULL,
	[IdMenu] [uniqueidentifier] NULL,
	[IdProfile] [uniqueidentifier] NULL,
 CONSTRAINT [PK_MenuProfiles] PRIMARY KEY CLUSTERED 
(
	[IdMenuProfiles] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Profiles]    Script Date: 4/10/2023 4:47:44 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Profiles](
	[Id] [uniqueidentifier] NOT NULL,
	[Profile] [nvarchar](50) NOT NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_Profiles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaskData]    Script Date: 4/10/2023 4:47:44 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaskData](
	[Id] [uniqueidentifier] NOT NULL,
	[Task] [varchar](50) NOT NULL,
	[Description] [varchar](50) NOT NULL,
	[IdStateTask] [uniqueidentifier] NOT NULL,
	[IdCategory] [uniqueidentifier] NOT NULL,
	[IdUserAssignment] [uniqueidentifier] NULL,
	[ExpirationDate] [date] NULL,
	[IdUser] [uniqueidentifier] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_TaskData] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaskStatus]    Script Date: 4/10/2023 4:47:44 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaskStatus](
	[Id] [uniqueidentifier] NOT NULL,
	[State] [nvarchar](50) NOT NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_TaskStatus] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Categories] ([Id], [Category], [Active]) VALUES (N'9a19b864-c310-4d38-a19e-062ee911c1a4', N'Oficina', 1)
INSERT [dbo].[Categories] ([Id], [Category], [Active]) VALUES (N'002c6030-4105-4bf8-a625-4da70c632140', N'Transporte', 1)
INSERT [dbo].[Categories] ([Id], [Category], [Active]) VALUES (N'97a7facf-d4d1-423d-96ae-5636c7209c27', N'Despacho', 1)
GO
INSERT [dbo].[DataUser] ([Id], [Name], [Email], [Password], [Img], [IdProfile], [Active]) VALUES (N'7e5deca5-8e2d-4176-9497-92cf339927f6', N'User1', N'TmedinaSystem@gmail.com', N'+3ft0xEqQLoH1qb1cPaAng==', 0x74657374, N'f9847674-002d-46ad-874d-6a5b0c384b00', 1)
INSERT [dbo].[DataUser] ([Id], [Name], [Email], [Password], [Img], [IdProfile], [Active]) VALUES (N'aa21948b-8350-4e9d-873d-9daa67bfe450', N'Admin00', N'TmedinaSystem@gmail.com', N'+3ft0xEqQLoH1qb1cPaAng==', 0x74657374, N'3219aff4-402b-4213-aff9-77844cc03353', 1)
GO
INSERT [dbo].[Menu] ([IdMenu], [Name], [UrlMenu], [Stete]) VALUES (N'f9847674-002d-46ad-874d-6a5b0c384b00', N'Detalle Tareas', N'DetalleTareas', 1)
INSERT [dbo].[Menu] ([IdMenu], [Name], [UrlMenu], [Stete]) VALUES (N'f9847674-002d-46ad-874d-6a5b0c384b01', N'Estado Tareas', N'EstadoTareas', 1)
GO
SET IDENTITY_INSERT [dbo].[MenuProfiles] ON 

INSERT [dbo].[MenuProfiles] ([IdMenuProfiles], [IdMenu], [IdProfile]) VALUES (2, N'f9847674-002d-46ad-874d-6a5b0c384b00', N'3219aff4-402b-4213-aff9-77844cc03353')
INSERT [dbo].[MenuProfiles] ([IdMenuProfiles], [IdMenu], [IdProfile]) VALUES (3, N'f9847674-002d-46ad-874d-6a5b0c384b01', N'3219aff4-402b-4213-aff9-77844cc03353')
SET IDENTITY_INSERT [dbo].[MenuProfiles] OFF
GO
INSERT [dbo].[Profiles] ([Id], [Profile], [Active]) VALUES (N'f9847674-002d-46ad-874d-6a5b0c384b00', N'Generico', 1)
INSERT [dbo].[Profiles] ([Id], [Profile], [Active]) VALUES (N'3219aff4-402b-4213-aff9-77844cc03353', N'Admin', 1)
GO
INSERT [dbo].[TaskData] ([Id], [Task], [Description], [IdStateTask], [IdCategory], [IdUserAssignment], [ExpirationDate], [IdUser], [CreateDate], [Active]) VALUES (N'53d43bc0-4b38-48cc-9519-29fc5ebf07ab', N'Crear Tarea', N'El usuario crea nueva tarea', N'602a38f0-2d11-4b70-955e-05d509b3b1b6', N'9a19b864-c310-4d38-a19e-062ee911c1a4', N'7e5deca5-8e2d-4176-9497-92cf339927f6', CAST(N'2023-05-10' AS Date), N'aa21948b-8350-4e9d-873d-9daa67bfe450', CAST(N'2023-10-02T22:14:28.870' AS DateTime), 1)
GO
INSERT [dbo].[TaskStatus] ([Id], [State], [Active]) VALUES (N'602a38f0-2d11-4b70-955e-05d509b3b1b6', N'Activo', 1)
INSERT [dbo].[TaskStatus] ([Id], [State], [Active]) VALUES (N'485732ce-914f-4464-a7ff-5fca40e856a2', N'Pendiente', 1)
INSERT [dbo].[TaskStatus] ([Id], [State], [Active]) VALUES (N'679540b2-0b90-4a4e-a704-b1c24eeec856', N'Inactivo', 1)
GO
ALTER TABLE [dbo].[DataUser]  WITH CHECK ADD  CONSTRAINT [FK_DataUser_Profiles] FOREIGN KEY([IdProfile])
REFERENCES [dbo].[Profiles] ([Id])
GO
ALTER TABLE [dbo].[DataUser] CHECK CONSTRAINT [FK_DataUser_Profiles]
GO
ALTER TABLE [dbo].[MenuProfiles]  WITH CHECK ADD  CONSTRAINT [FK_MenuProfiles_Menu] FOREIGN KEY([IdMenu])
REFERENCES [dbo].[Menu] ([IdMenu])
GO
ALTER TABLE [dbo].[MenuProfiles] CHECK CONSTRAINT [FK_MenuProfiles_Menu]
GO
ALTER TABLE [dbo].[MenuProfiles]  WITH CHECK ADD  CONSTRAINT [FK_MenuProfiles_Profiles] FOREIGN KEY([IdProfile])
REFERENCES [dbo].[Profiles] ([Id])
GO
ALTER TABLE [dbo].[MenuProfiles] CHECK CONSTRAINT [FK_MenuProfiles_Profiles]
GO
ALTER TABLE [dbo].[TaskData]  WITH CHECK ADD  CONSTRAINT [FK_TaskData_Categories] FOREIGN KEY([IdCategory])
REFERENCES [dbo].[Categories] ([Id])
GO
ALTER TABLE [dbo].[TaskData] CHECK CONSTRAINT [FK_TaskData_Categories]
GO
ALTER TABLE [dbo].[TaskData]  WITH CHECK ADD  CONSTRAINT [FK_TaskData_DataUser] FOREIGN KEY([IdUser])
REFERENCES [dbo].[DataUser] ([Id])
GO
ALTER TABLE [dbo].[TaskData] CHECK CONSTRAINT [FK_TaskData_DataUser]
GO
ALTER TABLE [dbo].[TaskData]  WITH CHECK ADD  CONSTRAINT [FK_TaskData_TaskStatus] FOREIGN KEY([IdStateTask])
REFERENCES [dbo].[TaskStatus] ([Id])
GO
ALTER TABLE [dbo].[TaskData] CHECK CONSTRAINT [FK_TaskData_TaskStatus]
GO
