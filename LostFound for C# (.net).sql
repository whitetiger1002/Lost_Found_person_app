USE [image-recognition]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 9/20/2022 7:21:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 9/20/2022 7:21:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 9/20/2022 7:21:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Discriminator] [nvarchar](max) NOT NULL,
	[IsActive] [bit] NULL,
	[CreatedDate] [datetime2](7) NULL,
	[IsSystem] [bit] NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 9/20/2022 7:21:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 9/20/2022 7:21:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 9/20/2022 7:21:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 9/20/2022 7:21:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[Discriminator] [nvarchar](max) NOT NULL,
	[DistrictCorporation] [nvarchar](max) NULL,
	[PoliceStation] [nvarchar](max) NULL,
	[UserPassword] [nvarchar](max) NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[CreatedDate] [datetime2](7) NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 9/20/2022 7:21:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Profiles]    Script Date: 9/20/2022 7:21:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Profiles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[CPName] [nvarchar](max) NULL,
	[CPPhoneNo] [nvarchar](max) NULL,
	[GDCaseNo] [nvarchar](max) NULL,
	[OfficerName] [nvarchar](max) NULL,
	[OfficerBPNo] [nvarchar](max) NULL,
	[OfficerPhoneNo] [nvarchar](max) NULL,
	[Remarks] [nvarchar](max) NULL,
	[ImageURL] [nvarchar](max) NULL,
	[IsLost] [bit] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[UpdatedDate] [datetime2](7) NOT NULL,
	[UpdatedBy] [nvarchar](max) NULL,
	[AspNetUserId] [nvarchar](450) NULL,
	[IsActive] [bit] NOT NULL,
	[IsDelete] [bit] NOT NULL,
 CONSTRAINT [PK_Profiles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220901150851_ProfileInitial', N'6.0.8')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220907183423_CreatedDateUpdate', N'6.0.8')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Discriminator], [IsActive], [CreatedDate], [IsSystem], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'AF33A547-FB88-46CF-9882-89FD6995E724', N'AppRole', 1, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), 1, N'User', N'User', NULL)
INSERT [dbo].[AspNetRoles] ([Id], [Discriminator], [IsActive], [CreatedDate], [IsSystem], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'b5bcbf9d-906c-4417-9953-d81c9c8caf88', N'AppRole', 1, CAST(N'2022-02-02T00:00:00.0000000' AS DateTime2), 1, N'Admin', N'Admin', NULL)
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'0cceae55-eb03-4030-b058-136216337cd8', N'AF33A547-FB88-46CF-9882-89FD6995E724')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'0eb1b221-5f92-4f66-a505-6c5a5a137ab1', N'AF33A547-FB88-46CF-9882-89FD6995E724')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'10c1e886-97e1-45ac-b5c8-2c1839c1196f', N'AF33A547-FB88-46CF-9882-89FD6995E724')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'12260646-ecba-4d6b-a2ac-88218ecaca08', N'AF33A547-FB88-46CF-9882-89FD6995E724')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'12e02def-831a-4c65-9725-ddc6a76f9231', N'AF33A547-FB88-46CF-9882-89FD6995E724')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'14919b86-ae00-4f6f-9b31-1f8310a9be79', N'AF33A547-FB88-46CF-9882-89FD6995E724')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'27ba8221-5b17-4491-bf43-6b6490debbeb', N'AF33A547-FB88-46CF-9882-89FD6995E724')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'2ac4c0f0-b243-4a8c-b4bf-6676d453278b', N'AF33A547-FB88-46CF-9882-89FD6995E724')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'2db7be13-8bd8-4d4f-8f71-1e7bd5885d91', N'AF33A547-FB88-46CF-9882-89FD6995E724')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'3131b6da-1908-4499-b6b4-8e6065c94bae', N'AF33A547-FB88-46CF-9882-89FD6995E724')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'3277a921-0d09-4fc7-b0b7-1b007e53a470', N'AF33A547-FB88-46CF-9882-89FD6995E724')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'330cb225-a503-4f36-bf04-d81aaa75bf93', N'AF33A547-FB88-46CF-9882-89FD6995E724')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'36ba558a-fa03-43d2-be29-af2c0000b80f', N'AF33A547-FB88-46CF-9882-89FD6995E724')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'3b31bbac-ed8c-4097-8989-ddf59fa80d9f', N'AF33A547-FB88-46CF-9882-89FD6995E724')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'3c40aed8-1faf-4f82-a684-701ff05b2a26', N'AF33A547-FB88-46CF-9882-89FD6995E724')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'3d5de208-6e85-488b-b46c-2b42af9b5c9e', N'AF33A547-FB88-46CF-9882-89FD6995E724')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'478bc446-f77b-4e21-9b69-e28b797b41e6', N'AF33A547-FB88-46CF-9882-89FD6995E724')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'498d8d65-8c4f-4ff2-acda-954b06085c54', N'AF33A547-FB88-46CF-9882-89FD6995E724')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'4b5e19b9-bd7f-4a94-9d97-137bdd5872d8', N'AF33A547-FB88-46CF-9882-89FD6995E724')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'4ccf1d60-9e59-4dd4-9d88-9d1262f820cd', N'AF33A547-FB88-46CF-9882-89FD6995E724')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'4d508da6-227b-4e96-96c7-8be2243bd582', N'AF33A547-FB88-46CF-9882-89FD6995E724')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'5ce91370-e554-4978-9a24-d325e26ffa07', N'AF33A547-FB88-46CF-9882-89FD6995E724')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'5da2c3d5-b72b-4a97-b4a5-9962c2b702df', N'AF33A547-FB88-46CF-9882-89FD6995E724')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'5ec151b2-028f-4d44-9baa-837db486bbcb', N'AF33A547-FB88-46CF-9882-89FD6995E724')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'64bb4006-58c2-4025-80d4-de33282346dd', N'AF33A547-FB88-46CF-9882-89FD6995E724')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'64c3f662-892f-49ca-b2aa-1f323ef7a9f5', N'AF33A547-FB88-46CF-9882-89FD6995E724')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'6789c4d1-99d1-47d8-b4e4-33c3947e666c', N'AF33A547-FB88-46CF-9882-89FD6995E724')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'6cbfe2d4-345a-48e6-8a49-f0ec5e79b96b', N'AF33A547-FB88-46CF-9882-89FD6995E724')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'7abc3c2a-128e-4020-815d-529d1d3d1728', N'AF33A547-FB88-46CF-9882-89FD6995E724')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'80bb78fc-6908-4ee4-9c1c-42c4e0930dc4', N'AF33A547-FB88-46CF-9882-89FD6995E724')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'8dca150a-81b4-4b25-a3fd-7af1af6f57e5', N'AF33A547-FB88-46CF-9882-89FD6995E724')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'91c2a310-387a-4f00-858b-7392a73c19ab', N'AF33A547-FB88-46CF-9882-89FD6995E724')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'9c86b90a-7fd6-4169-8ff2-23e58cf658c4', N'AF33A547-FB88-46CF-9882-89FD6995E724')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'9f06a429-82f8-49ca-b9be-8d82110a36e1', N'AF33A547-FB88-46CF-9882-89FD6995E724')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'a3495a9b-5222-4806-a134-75f414661d52', N'AF33A547-FB88-46CF-9882-89FD6995E724')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'a5290e74-53ca-408f-af8b-c447b9f10fb8', N'AF33A547-FB88-46CF-9882-89FD6995E724')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'a6c6df6a-e4b6-4d29-b97d-5d08f0ca08cf', N'AF33A547-FB88-46CF-9882-89FD6995E724')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'acaf4de3-1fd5-40b9-b3d2-6350526f770b', N'AF33A547-FB88-46CF-9882-89FD6995E724')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'b1534452-f1cc-4ae7-b372-d655d36b3ba8', N'AF33A547-FB88-46CF-9882-89FD6995E724')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'b2aa5a5d-cd9c-4889-b54b-69472d979d6b', N'AF33A547-FB88-46CF-9882-89FD6995E724')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'bb8f5a97-1bf3-4df0-892f-24f6f0fe23cb', N'AF33A547-FB88-46CF-9882-89FD6995E724')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'c026be2b-c5d1-422c-bf27-76189ce56af0', N'AF33A547-FB88-46CF-9882-89FD6995E724')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'c061ddbc-e37b-4def-ae9e-5a8dc197e8d9', N'AF33A547-FB88-46CF-9882-89FD6995E724')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'c5e5dc01-d11b-4fbc-8c26-292fd7cebb34', N'AF33A547-FB88-46CF-9882-89FD6995E724')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'c653dd85-c5db-4285-b195-27e66a8807c0', N'AF33A547-FB88-46CF-9882-89FD6995E724')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'cb7989d0-ace8-4909-af0e-94c0994ea1d9', N'AF33A547-FB88-46CF-9882-89FD6995E724')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'cbf84237-645e-45df-b62f-a4302600241b', N'AF33A547-FB88-46CF-9882-89FD6995E724')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'cca66146-1af2-4db7-ada7-5108a7590df3', N'AF33A547-FB88-46CF-9882-89FD6995E724')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'ceffe422-61ed-41cb-a72d-10b84501c467', N'AF33A547-FB88-46CF-9882-89FD6995E724')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'd1cb055e-19d5-4ccb-aecf-865e2cd7820b', N'AF33A547-FB88-46CF-9882-89FD6995E724')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'dfe6e253-5fe9-43b9-861a-bf2f9d51ced9', N'AF33A547-FB88-46CF-9882-89FD6995E724')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'e4786662-2906-418e-b47a-f537d4ecac71', N'AF33A547-FB88-46CF-9882-89FD6995E724')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'e51f331d-8cae-4fc2-a7b9-32a99aca88ec', N'AF33A547-FB88-46CF-9882-89FD6995E724')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'e673102e-aba1-4bf8-b09b-a2802e9fabe6', N'AF33A547-FB88-46CF-9882-89FD6995E724')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'ee82a335-903c-4021-81c9-ee1ae8facdff', N'AF33A547-FB88-46CF-9882-89FD6995E724')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'f34a7fc1-d55b-4a18-b160-20f0f8146dc2', N'AF33A547-FB88-46CF-9882-89FD6995E724')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'f465c795-fcfa-4df8-ba26-f5f505feaa81', N'AF33A547-FB88-46CF-9882-89FD6995E724')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'fbb06945-714e-4efc-a79a-c4718eb83598', N'AF33A547-FB88-46CF-9882-89FD6995E724')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'643b4b3b-60b7-4e8f-867e-185c2d613b81', N'b5bcbf9d-906c-4417-9953-d81c9c8caf88')
GO
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [DistrictCorporation], [PoliceStation], [UserPassword], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [CreatedDate]) VALUES (N'0cceae55-eb03-4030-b058-136216337cd8', N'AppUser', N'test', N'team', N'0h1?@088?M', N'Daelaeshiduwae', N'DAELAESHIDUWAE', NULL, NULL, 0, N'AQAAAAEAACcQAAAAEC9qL+xxvBiak2cPf8jiH/9qLJck5tVIw/898ydgVGIdsli1PRScwbMVigSdZtunbg==', N'CCWDJAX4YRYNDYQSPKXYL7ZACJDC3NDZ', N'0138cf57-71df-4350-9c80-50f8405680e5', NULL, 0, 0, NULL, 1, 0, CAST(N'2022-09-15T12:08:40.8487443' AS DateTime2))
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [DistrictCorporation], [PoliceStation], [UserPassword], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [CreatedDate]) VALUES (N'0eb1b221-5f92-4f66-a505-6c5a5a137ab1', N'AppUser', N'sd', N'sdsdsd', N'97aA-cj@iG', N'Qufudeshaebe', N'QUFUDESHAEBE', NULL, NULL, 0, N'AQAAAAEAACcQAAAAELEt6Ce268PL0jdA3nC4L/Vp6aKNMcGc7n/pbXbHdBxEtewtk+iqtkP5vvdbwlVTvw==', N'OC7VXXIHOP6KM4IGM5ISNFIEWAQDHMEE', N'6bcdf1c9-de9e-4dcf-bda5-894771889565', NULL, 0, 0, NULL, 1, 0, CAST(N'2022-09-16T15:41:41.0531991' AS DateTime2))
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [DistrictCorporation], [PoliceStation], [UserPassword], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [CreatedDate]) VALUES (N'10c1e886-97e1-45ac-b5c8-2c1839c1196f', N'AppUser', N'sd', N'sdsdsd', N'GQ36Tq@GpG', N'ZHirodofofa', N'ZHIRODOFOFA', NULL, NULL, 0, N'AQAAAAEAACcQAAAAEE7NTErDMXZ+mm4TkXdttfeKITvXK2ueJZEI2fXaVqE0cit6B8EUf70hdyAXDvwDPA==', N'QJC3ACEXBVTOQFD7QNO3FLLNB65PNJ4Y', N'ce594c8a-e38c-4754-863a-a3455ebb97ae', NULL, 0, 0, NULL, 1, 0, CAST(N'2022-09-12T16:05:14.3702899' AS DateTime2))
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [DistrictCorporation], [PoliceStation], [UserPassword], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [CreatedDate]) VALUES (N'12260646-ecba-4d6b-a2ac-88218ecaca08', N'AppUser', N'asd', N'asdasd', N'User@112233', N'Jaecemaxihe', N'JAECEMAXIHE', NULL, NULL, 0, N'AQAAAAEAACcQAAAAENzm/2MpjgFIsDjGNBsb0/lueHtgt7uUVFWOihEpMEd3HWeiLTwKlx0QgMauvvTx7w==', N'YXGMS5FXA5FNZD5YYWFB72MJBKS7QQOF', N'2f7e2b5e-fab5-4c42-be2f-2216e4fd70ad', NULL, 0, 0, NULL, 1, 0, CAST(N'2022-09-09T13:15:08.6545531' AS DateTime2))
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [DistrictCorporation], [PoliceStation], [UserPassword], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [CreatedDate]) VALUES (N'12e02def-831a-4c65-9725-ddc6a76f9231', N'AppUser', N'aaa', N'ddddd', N'Y1U@xh1?kA', N'Cexizhiqona', N'CEXIZHIQONA', NULL, NULL, 0, N'AQAAAAEAACcQAAAAEHLgJtdnFh7tznew6NC/o/fYS+TeKJK8oRivjMNOUDyFXD9Sjl6zImaJPfxzS8icDA==', N'AWTYZFML4OWHROTKCMC47OY3EBJHZ6LV', N'35ed8186-c236-441d-9505-13d229fe3e79', NULL, 0, 0, NULL, 1, 0, CAST(N'2022-09-15T21:45:26.1978614' AS DateTime2))
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [DistrictCorporation], [PoliceStation], [UserPassword], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [CreatedDate]) VALUES (N'14919b86-ae00-4f6f-9b31-1f8310a9be79', N'AppUser', N'asdasd', N'asdasdsda', N'2BV$?-!khL', N'Jubezhilohe', N'JUBEZHILOHE', NULL, NULL, 0, N'AQAAAAEAACcQAAAAEEtTbGF/36MHq7yy/WIW1e9ttQpMHcSYV7t2dVPLGe5G3n9gpvLDXDFUFXGpuG/bgw==', N'2OLP7WE2HR5BDZU2SGIV4CDNB5XFEJTS', N'89a8a251-ded2-462a-abaa-da767fb8ff93', NULL, 0, 0, NULL, 1, 0, CAST(N'2022-09-13T18:21:00.7944072' AS DateTime2))
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [DistrictCorporation], [PoliceStation], [UserPassword], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [CreatedDate]) VALUES (N'27ba8221-5b17-4491-bf43-6b6490debbeb', N'AppUser', N'asds', N'asdasd', N'98Z2sx_v4X', N'Xilacizhaby', N'XILACIZHABY', NULL, NULL, 0, N'AQAAAAEAACcQAAAAEG3pW+/c4AQAEzjqXfAma+x+S31PWUdqYzPVrVJQ4339yIWhsE79NiwSv0YNk5oPTg==', N'DVHOIQN36WPQNGXP5WI4ONDYZL23FC73', N'9f4a774e-8ec2-45ea-9225-e773e7a1454c', NULL, 0, 0, NULL, 1, 0, CAST(N'2022-09-15T21:46:22.0101487' AS DateTime2))
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [DistrictCorporation], [PoliceStation], [UserPassword], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [CreatedDate]) VALUES (N'2ac4c0f0-b243-4a8c-b4bf-6676d453278b', N'AppUser', N'sdsd', N'sdsd', N'-9k4w!2?$G', N'Ranysamaqi', N'RANYSAMAQI', NULL, NULL, 0, N'AQAAAAEAACcQAAAAEPgIPIQJhpVtj4Vsw2fCnDwYl8CY9KbO3zLGRTCKlxd5Nr/gk8+CNDI2ePGJLVJnDg==', N'BQCSP6WQ7YTB2IFUQO5DZBPF7VPK6MLY', N'03a05d9d-a5c2-4060-845c-48457cea2f46', NULL, 0, 0, NULL, 1, 0, CAST(N'2022-09-13T18:23:02.1179046' AS DateTime2))
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [DistrictCorporation], [PoliceStation], [UserPassword], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [CreatedDate]) VALUES (N'2db7be13-8bd8-4d4f-8f71-1e7bd5885d91', N'AppUser', N'fsdfs', N'sdfsdf', N'6qY?-r?@zE', N'Laecyqebufy', N'LAECYQEBUFY', NULL, NULL, 0, N'AQAAAAEAACcQAAAAEOZFETlUqdPIfaQIRuMVI0d09pcytfJWbn9TMegRuaAtBouHwPfP0EFtnuLSzrggAg==', N'RF56CYD6R7ZKXE523CCAYDW3UULIL5EY', N'49db7c9a-071b-4700-a31b-e071aed2c3b3', NULL, 0, 0, NULL, 1, 0, CAST(N'2022-09-15T21:49:38.1612625' AS DateTime2))
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [DistrictCorporation], [PoliceStation], [UserPassword], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [CreatedDate]) VALUES (N'3131b6da-1908-4499-b6b4-8e6065c94bae', N'AppUser', N'Test', N'Test', N'Admin@112233', N'Dulaekaewuzho', N'DULAEKAEWUZHO', NULL, NULL, 0, N'AQAAAAEAACcQAAAAEK9I0+QG7WedYdeRG08xs6TzrZgXQmRsCcCNFiDScAaqr3GK25OSd1SuguX7YC/vjw==', N'YZNM4NYYAQXYZBNCB7SWOUVRJOO5GRVE', N'ec6f7923-982f-4c47-9834-32a1b187f888', NULL, 0, 0, CAST(N'2022-09-14T00:54:28.0675806+00:00' AS DateTimeOffset), 1, 0, CAST(N'2020-02-02T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [DistrictCorporation], [PoliceStation], [UserPassword], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [CreatedDate]) VALUES (N'3277a921-0d09-4fc7-b0b7-1b007e53a470', N'AppUser', N'sdsd', N'sdsd', N'$w7h?--S1S', N'Ratubaezhyvo', N'RATUBAEZHYVO', NULL, NULL, 0, N'AQAAAAEAACcQAAAAEP/FaI6Og+KMROqNqIXqYrpTFkyq92zOFJx6uDyVd7s1XlFV2a+dG/shO7R5j/9+Uw==', N'GRBVYLQXJRMCTYRTCMRKMWSY346DRYC7', N'2e65810e-9419-41ab-b6e6-f01642ee9ca4', NULL, 0, 0, NULL, 1, 0, CAST(N'2022-09-12T16:08:22.9300072' AS DateTime2))
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [DistrictCorporation], [PoliceStation], [UserPassword], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [CreatedDate]) VALUES (N'330cb225-a503-4f36-bf04-d81aaa75bf93', N'AppUser', N'test', N'lahore', N'@w$2Da4--H', N'SHuqaegybodu', N'SHUQAEGYBODU', NULL, NULL, 0, N'AQAAAAEAACcQAAAAEBmc+/qDWP9ouSfvD/mutj25yAiDlJXsd7/D+EhbqU6kbCycCr5jBFetBDKXMu++cA==', N'AJXMPPHJ3IFCFWEHU5KX72TWIK23YYXO', N'09408751-d254-4c69-aa23-5da2de355fa8', NULL, 0, 0, NULL, 1, 0, CAST(N'2022-09-07T20:16:49.3136416' AS DateTime2))
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [DistrictCorporation], [PoliceStation], [UserPassword], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [CreatedDate]) VALUES (N'36ba558a-fa03-43d2-be29-af2c0000b80f', N'AppUser', N'sas', N'cccc', N'User@123', N'Sekishusaru', N'SEKISHUSARU', NULL, NULL, 0, N'AQAAAAEAACcQAAAAEN0EH82IY3ZGtHNyGVYUGyKEYRPYpcV6UFLRhuFQLi4YxUvWO4PLAqECKl8A/WsCpw==', N'BMPFNUTNYLP5YAADUPMBIOO7TIEPXUZP', N'9cf165fc-5535-4de2-982e-d97555f3cbad', NULL, 0, 0, NULL, 1, 1, CAST(N'2022-09-15T12:12:35.3013474' AS DateTime2))
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [DistrictCorporation], [PoliceStation], [UserPassword], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [CreatedDate]) VALUES (N'3b31bbac-ed8c-4097-8989-ddf59fa80d9f', N'AppUser', N'lahore', N'qwdeqwe', N'Admin@123', N'fatima', N'FATIMA', NULL, NULL, 0, N'AQAAAAEAACcQAAAAEOUzZMSZevG/lAOZYR5vbqviCBpzQbs+ftu5R3m5kmhQBUk23vO0D9Iz09VVaCZORQ==', N'I6OE2RODVN7KWAKPAQWW2JGLQDDFWE2V', N'0d8812c2-20b9-4c1c-b1e8-bc0a7bf683a3', NULL, 0, 0, CAST(N'2022-09-07T15:19:22.9359862+00:00' AS DateTimeOffset), 1, 0, CAST(N'2022-05-05T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [DistrictCorporation], [PoliceStation], [UserPassword], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [CreatedDate]) VALUES (N'3c40aed8-1faf-4f82-a684-701ff05b2a26', N'AppUser', N'ssssdddff', N'sdsdssd', N'Admin@123', N'Qyrujumaxo', N'QYRUJUMAXO', NULL, NULL, 0, N'AQAAAAEAACcQAAAAEAG6dyMCWQg8MoBbZ9bH4nlh7g6UQOVDeByqJA/p04hEDX6lHl+Zm8prDC7UXD3osQ==', N'PKCLGP5QXFT6GWVIBX2P25BQJA6KY5TJ', N'46ea86c7-73e5-48f2-ad5b-ddc0a5b126f5', NULL, 0, 0, NULL, 1, 0, CAST(N'2022-09-13T18:30:07.2208542' AS DateTime2))
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [DistrictCorporation], [PoliceStation], [UserPassword], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [CreatedDate]) VALUES (N'3d5de208-6e85-488b-b46c-2b42af9b5c9e', N'AppUser', N'asdasdasd', N'asdasdas', N'0!R80-t26O', N'Lelaetyzheje', N'LELAETYZHEJE', NULL, NULL, 0, N'AQAAAAEAACcQAAAAEHJchjAIxubo3TbYNJY/7yhFgr25fJ+7FSEOnauR2EYqa+t0/qDHoHedGULR6vYKlQ==', N'Y7VYEUZNDD3D67IG6YR4F3AAQEJZP5RJ', N'1c2f8d3b-2e4e-4ed2-a310-9a3ff99e2a40', NULL, 0, 0, NULL, 1, 0, CAST(N'2022-09-15T21:50:42.8189955' AS DateTime2))
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [DistrictCorporation], [PoliceStation], [UserPassword], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [CreatedDate]) VALUES (N'478bc446-f77b-4e21-9b69-e28b797b41e6', N'AppUser', N'test', N'rwerwer', N'Admin@123456', N'hadi', N'HADI', NULL, NULL, 0, N'AQAAAAEAACcQAAAAEJfBelbvJwWUDjNGp8zUACay1Prf39yHN5z8VNovSqZHc7FT0Rw0ADQiEyuMeP+s6w==', N'42UL5SHKSPNLIRQPXQNYBPZBR6OISBO4', N'6e85486e-ee89-4c9c-97e1-ecafdfa4318b', NULL, 0, 0, CAST(N'2022-09-14T00:56:52.6991295+00:00' AS DateTimeOffset), 1, 0, CAST(N'2022-03-03T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [DistrictCorporation], [PoliceStation], [UserPassword], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [CreatedDate]) VALUES (N'498d8d65-8c4f-4ff2-acda-954b06085c54', N'AppUser', N'sad', N'sdsd', N'8ze?u3At7M', N'Kaezhofaekuky', N'KAEZHOFAEKUKY', NULL, NULL, 0, N'AQAAAAEAACcQAAAAEObSnk8j6m0Hp3IJ8GGqHGgXJMZmAehKjX6U2e04Bmg6TPhpmELPYMfQj73bMT5WqQ==', N'VMYMJ2N3M4PSOA7G6UYEKUAE24CYSSRX', N'366acd6c-fed9-4733-95fa-147dd5b39904', NULL, 0, 0, NULL, 1, 0, CAST(N'2022-09-15T21:47:23.5949833' AS DateTime2))
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [DistrictCorporation], [PoliceStation], [UserPassword], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [CreatedDate]) VALUES (N'4b5e19b9-bd7f-4a94-9d97-137bdd5872d8', N'AppUser', N'sdfsd', N'sdfsdf', N'qfX6!_1Z', N'ZHejovaenule', N'ZHEJOVAENULE', NULL, NULL, 0, N'AQAAAAEAACcQAAAAEE5mQDlxJ68/wh2o+3geOuYGiB6Q7qP7oqZbatlu97rEsNa7KkhxZtjDYcL5H/6eXQ==', N'PKMSVZDJHXXYG2S6IVDUFLXHKNMNQRBH', N'0f77ad0f-b767-4186-b4cc-4e5556ddcace', NULL, 0, 0, NULL, 1, 0, CAST(N'2018-02-02T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [DistrictCorporation], [PoliceStation], [UserPassword], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [CreatedDate]) VALUES (N'4ccf1d60-9e59-4dd4-9d88-9d1262f820cd', N'AppUser', N'asdasdcczx', N'asdasdsdazxczxc', N'?-?-_HX7yV', N'Lezhyvelyfae', N'LEZHYVELYFAE', NULL, NULL, 0, N'AQAAAAEAACcQAAAAEKjAbhQrGRL/1CEXFTeXof1Rz4gnC2EIkUUSwsmQZRHBN1c0bf5T0IlKg4nnwgh83A==', N'JFUDV3APLBOLYHCLQHCUUTOMCYXBGUPI', N'a544a336-3ee4-4d68-9395-73db950e5a40', NULL, 0, 0, NULL, 1, 0, CAST(N'2022-09-13T18:22:17.5365717' AS DateTime2))
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [DistrictCorporation], [PoliceStation], [UserPassword], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [CreatedDate]) VALUES (N'4d508da6-227b-4e96-96c7-8be2243bd582', N'AppUser', N'set', N'same', N'f4?t5@9$@B', N'Biqaeligijo', N'BIQAELIGIJO', NULL, NULL, 0, N'AQAAAAEAACcQAAAAEFz5tlWw4MUaYmQIGI51r/kXxqFh47Gvr2e2IFEwp/Ocw2vPERIrpXshJAUv7CYVXQ==', N'MNBRDCKUUEDLPW7DE533ON2JNFEHBYO7', N'9c08e24c-b7ec-4072-a300-52877d706438', NULL, 0, 0, NULL, 1, 0, CAST(N'2022-09-16T12:26:32.1912937' AS DateTime2))
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [DistrictCorporation], [PoliceStation], [UserPassword], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [CreatedDate]) VALUES (N'5ce91370-e554-4978-9a24-d325e26ffa07', N'AppUser', N'Lahore', N'Town Station', N'--', N'Mudeceqimo', N'MUDECEQIMO', NULL, NULL, 0, N'AQAAAAEAACcQAAAAEGWAKf4bg7fpnXjLyrJWWUP76EhvzRlwWFniebb9WDIU3a6CpeLQCtz8oPQcCouE9A==', N'OAQU7TVEPUMKNHGBQAEKEHI7OSFRQKGL', N'01ee20b8-a41d-49be-90db-fa1533f307af', NULL, 0, 0, NULL, 1, 0, CAST(N'2022-03-03T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [DistrictCorporation], [PoliceStation], [UserPassword], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [CreatedDate]) VALUES (N'5da2c3d5-b72b-4a97-b4a5-9962c2b702df', N'AppUser', N'Ibra', N'Ibra', N'3?130U7MjS', N'Bikuzhyjuhy', N'BIKUZHYJUHY', NULL, NULL, 0, N'AQAAAAEAACcQAAAAEKHf/fCRJObRGprO5oZ7CqqBlw6I4qRqC7V/yl+AYSyGrMBbthdFA+0s7fauLEwryQ==', N'C5JP6PCPKIGYCVGEOCZ6UYEB522OVKT7', N'ca93c7ef-ba1a-41f1-9638-9c1229a46995', NULL, 0, 0, NULL, 1, 0, CAST(N'2022-09-12T12:04:58.9577343' AS DateTime2))
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [DistrictCorporation], [PoliceStation], [UserPassword], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [CreatedDate]) VALUES (N'5ec151b2-028f-4d44-9baa-837db486bbcb', N'AppUser', N'sadasd', N'asdasdasdasd', N'Admin@123', N'lulusar', N'LULUSAR', NULL, NULL, 0, N'AQAAAAEAACcQAAAAEJu9WTh6maZ0ggJDsfxakb/W8QTmwU6b6I8KXuj83JZ2BY6JJAZDF+MMUrDARiVZVg==', N'XJKSZYGQHGSYF6W7GWP6VCZ5D7EDPFUV', N'80d981dd-60b8-4a21-867a-347a5ce93fdf', NULL, 0, 0, NULL, 1, 0, CAST(N'2022-09-15T15:37:45.7303505' AS DateTime2))
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [DistrictCorporation], [PoliceStation], [UserPassword], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [CreatedDate]) VALUES (N'643b4b3b-60b7-4e8f-867e-185c2d613b81', N'AppUser', N'Lahore', N'Township Lahore', N'Admin@123', N'arhamsoft', N'ARHAMSOFT', NULL, NULL, 0, N'AQAAAAEAACcQAAAAEOXO/kMpaPgngBXBdVBwAuhU8ENwCEhxqBgwan5ogKl5W1hzIglA006O02SJGR/8lQ==', N'IDZRVCHG24ATQDMRISKMQWFQNEPFQPQ2', N'c9539358-5dbe-491d-92df-6f7a08be946f', NULL, 0, 0, NULL, 1, 0, CAST(N'2022-03-03T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [DistrictCorporation], [PoliceStation], [UserPassword], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [CreatedDate]) VALUES (N'64bb4006-58c2-4025-80d4-de33282346dd', N'AppUser', N'zasdas', N'zdfdfsd', N'g$p1t20@-C', N'Wezhiduhaelae', N'WEZHIDUHAELAE', NULL, NULL, 0, N'AQAAAAEAACcQAAAAEK0wLr5IstAxF4utxyrACkXAFVp7eJ+8ZytRI0yGVRIjUKIHBK0vMoWzonDFEJdshA==', N'WKDJF3Z2JMXQDCGIGWO3WQUXIAVJBQCE', N'412be492-f85c-491f-aa5b-c6f976fa1b55', NULL, 0, 0, NULL, 1, 0, CAST(N'2022-09-15T21:51:23.4945543' AS DateTime2))
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [DistrictCorporation], [PoliceStation], [UserPassword], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [CreatedDate]) VALUES (N'64c3f662-892f-49ca-b2aa-1f323ef7a9f5', N'AppUser', N'dsfsdf', N'sdfsdf', N'bYDFp$k5hO', N'Vaegagashewo', N'VAEGAGASHEWO', NULL, NULL, 0, N'AQAAAAEAACcQAAAAEDldxFDINrCb9xZ9MalFerfShjy41tfJfiahGgXrQxMSLgL3KSk026ReWnmPafy8ZA==', N'NKPAPUOU6AYAQPLXZGNFEL7UOLVMW7IT', N'ed9817dc-2eac-4fde-accb-36f495738e46', NULL, 0, 0, NULL, 1, 0, CAST(N'2022-09-15T21:48:54.6718145' AS DateTime2))
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [DistrictCorporation], [PoliceStation], [UserPassword], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [CreatedDate]) VALUES (N'6789c4d1-99d1-47d8-b4e4-33c3947e666c', N'AppUser', N'sdasd', N'asdfasd', N'10v6s$69GN', N'Faeqinytyle', N'FAEQINYTYLE', NULL, NULL, 0, N'AQAAAAEAACcQAAAAEIYkogZoB07z/AhQnpcnLf+lgO/jLX6jXwzfPVMqZmJ51mlD7KN5pV18eKYO7Xs16Q==', N'IPLBJQ32GFGO7DRJMRSBMSMSMO7S2ZFW', N'2cb0d3ab-be35-4248-be42-b75957b799b6', NULL, 0, 0, NULL, 1, 0, CAST(N'2022-09-15T22:15:51.3886434' AS DateTime2))
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [DistrictCorporation], [PoliceStation], [UserPassword], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [CreatedDate]) VALUES (N'6cbfe2d4-345a-48e6-8a49-f0ec5e79b96b', N'AppUser', N'qwe', N'qweqwe', N'Admin@1122334455', N'abc', N'ABC', NULL, NULL, 0, N'AQAAAAEAACcQAAAAEOIAOoYpX4qJxy35gu8Gl2w8oI/7xWU2sSB3p+R//bzlQ10HnavL/SEAxnTZYD9c9Q==', N'54MUYAE7HZIAPUBA2LN52L7W7J2MPK7M', N'4ba2c245-46a0-4db1-9a2f-35c116797a90', NULL, 0, 0, NULL, 1, 0, CAST(N'2022-09-05T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [DistrictCorporation], [PoliceStation], [UserPassword], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [CreatedDate]) VALUES (N'7abc3c2a-128e-4020-815d-529d1d3d1728', N'AppUser', N'asdas', N'asdasd', N'2$-rn$Pt$E', N'Lyrybukeki', N'LYRYBUKEKI', NULL, NULL, 0, N'AQAAAAEAACcQAAAAEK7Z34Zw6jf8VuQhZnnYBSLJHyUoWUZq3UqVJbyDtOcVuVU9GJ2MogU1orcMIiE2RA==', N'YDKKJZP7GBBP2GWRYZOQZRI7LBVSQTIM', N'6f45e79e-b7a4-4c5f-9a5b-7270eed19a90', NULL, 0, 0, NULL, 1, 0, CAST(N'2022-09-15T21:46:55.9806902' AS DateTime2))
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [DistrictCorporation], [PoliceStation], [UserPassword], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [CreatedDate]) VALUES (N'80bb78fc-6908-4ee4-9c1c-42c4e0930dc4', N'AppUser', N'123123', N'police', N'27-$83F3iP', N'hada', N'HADA', NULL, NULL, 0, N'AQAAAAEAACcQAAAAEMmFjzhc0VXzj6MxjK70pi0HEWSRzb9ulWZhkjcAQj+1+eduksUloTexqT/p9cOS8A==', N'U24LGJDSU2F6FMFAWMCNMUAGKLW56EAM', N'd40c7610-3a04-4f2e-819d-d08b53648db7', NULL, 0, 0, NULL, 1, 0, CAST(N'2022-09-09T13:13:30.5747930' AS DateTime2))
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [DistrictCorporation], [PoliceStation], [UserPassword], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [CreatedDate]) VALUES (N'8dca150a-81b4-4b25-a3fd-7af1af6f57e5', N'AppUser', N'eee', N'ssss', N'sam@334455533232', N'Kyshaekalecy', N'KYSHAEKALECY', NULL, NULL, 0, N'AQAAAAEAACcQAAAAEORvzMFeel2almKzQlxz9RwFuHCYV312hsDNnICeNLIMDK1NtZAc0lj/oEZknBgheQ==', N'NL2D5EC2JZWKJZUDFHPT4EW5DSJBVQDU', N'00cb23f4-3d5c-4440-a9f6-60889e47f2e7', NULL, 0, 0, NULL, 1, 0, CAST(N'2022-09-13T19:07:13.2702377' AS DateTime2))
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [DistrictCorporation], [PoliceStation], [UserPassword], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [CreatedDate]) VALUES (N'91c2a310-387a-4f00-858b-7392a73c19ab', N'AppUser', N'sass', N'dsdsdsd', N'Wapsi@123', N'Waposaeshuby', N'WAPOSAESHUBY', NULL, NULL, 0, N'AQAAAAEAACcQAAAAECeCGe+KMHLjWqmVvTLqpjxr31imRwt+1qf7wha3X0SgGMVMLhbHS5tfpcWITlgKXA==', N'YSMYF526GRWTO4IYLBHP2CNP6RZRCG4H', N'd11374a0-dfa1-4041-958c-9342c2fb4786', NULL, 0, 0, NULL, 1, 0, CAST(N'2022-09-15T12:12:14.0634939' AS DateTime2))
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [DistrictCorporation], [PoliceStation], [UserPassword], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [CreatedDate]) VALUES (N'9c86b90a-7fd6-4169-8ff2-23e58cf658c4', N'AppUser', N'sdfa', N'sdf', N'_$28a$7M', N'sdfas', N'SDFAS', NULL, NULL, 0, N'AQAAAAEAACcQAAAAEJKSFDndIDIRFKfNRBi4PoHXRaAoG7Fp1NRVHLxor92ffMA8cKuTi6XiYggAbLBPNA==', N'3RF7YO65NCUC53KSBXVCTYUXOS37642S', N'ebc55ba7-5856-4239-8344-9e44bdbbb3d6', NULL, 0, 0, NULL, 1, 0, CAST(N'2022-09-09T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [DistrictCorporation], [PoliceStation], [UserPassword], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [CreatedDate]) VALUES (N'9f06a429-82f8-49ca-b9be-8d82110a36e1', N'AppUser', N'set', N'sam', N'_Z5uHAR7$W', N'Rihawicyvy', N'RIHAWICYVY', NULL, NULL, 0, N'AQAAAAEAACcQAAAAELKSg6kz3JXfh9x1hcwc0OyOanKFEhdlP/+jO7lMcAnOv2goK1hF2BWUSaxvWMLR/g==', N'FJBW6WX55FISXXYBJSZJRN7PPU7F4YRB', N'6dc90b55-a6d6-4000-90c1-fd99d3a5b809', NULL, 0, 0, NULL, 1, 0, CAST(N'2022-09-15T13:58:17.5132649' AS DateTime2))
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [DistrictCorporation], [PoliceStation], [UserPassword], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [CreatedDate]) VALUES (N'a3495a9b-5222-4806-a134-75f414661d52', N'AppUser', N'sdfsd', N'sdfsdf', N'Q$1!ztv8vY', N'Naepaeboruju', N'NAEPAEBORUJU', NULL, NULL, 0, N'AQAAAAEAACcQAAAAEHbNNppF/bcK/rJ5U+pufyyF8kaos1u/dNWBSpSMNR17Yz0ppwtaeKDluTgZil4gMA==', N'FFONQIRW5Z3KGYHFTY2N2VYXTNNWC3ZM', N'c7fbc8d9-b467-41b4-b471-b0608bf7d9d6', NULL, 0, 0, NULL, 1, 0, CAST(N'2022-09-15T21:48:17.3596400' AS DateTime2))
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [DistrictCorporation], [PoliceStation], [UserPassword], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [CreatedDate]) VALUES (N'a5290e74-53ca-408f-af8b-c447b9f10fb8', N'AppUser', N'sdfsd', N'sdfsdf', N'8X5nD-@8@F', N'ZHozhywegiji', N'ZHOZHYWEGIJI', NULL, NULL, 0, N'AQAAAAEAACcQAAAAEFUVTYwqfYjDEL5UjsXxQCRhWEXD9/SWa7TaAjX2XipStjSdyW7gs3ORw/iTGPJwYQ==', N'6FFZN5UWCSORWKZKFWR7POGX3TVVO7HV', N'7be24d16-b5c9-4c9b-bb8c-5f15463df56e', NULL, 0, 0, NULL, 1, 0, CAST(N'2022-09-16T16:12:47.2458673' AS DateTime2))
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [DistrictCorporation], [PoliceStation], [UserPassword], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [CreatedDate]) VALUES (N'a6c6df6a-e4b6-4d29-b97d-5d08f0ca08cf', N'AppUser', N'sdsd', N'dfdf', N'9FfW-@C27M', N'Taezhemosuto', N'TAEZHEMOSUTO', NULL, NULL, 0, N'AQAAAAEAACcQAAAAEOZFDrvUD00PWpaEUlWFPVKNbYgZkTtOxD9jIS6phuLz0JsO66gmVrqSDZbDBIJ0JA==', N'GJMA3TMUI4IXV4XIZHSSQVJBC5KRBSPB', N'8068cc27-70c2-4bc9-8d6e-0c0f36c0b5c1', NULL, 0, 0, NULL, 1, 0, CAST(N'2022-09-12T15:54:51.9421801' AS DateTime2))
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [DistrictCorporation], [PoliceStation], [UserPassword], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [CreatedDate]) VALUES (N'acaf4de3-1fd5-40b9-b3d2-6350526f770b', N'AppUser', N'sas', N'ffff', N'Admin@123', N'Qaepuvopyxae', N'QAEPUVOPYXAE', NULL, NULL, 0, N'AQAAAAEAACcQAAAAEKSwIAVowJ0gWcSClC5hnmJaGjlqzguZE47/e4APRIE3GQZt12+m/oakPIg6whPbbg==', N'NS5CQ2HNFBALBVTUQKBEYUA4U52GYK53', N'3a23931f-0c2f-40b7-a54e-81b0a275be88', NULL, 0, 0, NULL, 1, 0, CAST(N'2022-09-15T12:09:24.5327200' AS DateTime2))
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [DistrictCorporation], [PoliceStation], [UserPassword], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [CreatedDate]) VALUES (N'b1534452-f1cc-4ae7-b372-d655d36b3ba8', N'AppUser', N'sdf', N'sfdf', N'K6_r3e$2!G', N'Foluzhizhemu', N'FOLUZHIZHEMU', NULL, NULL, 0, N'AQAAAAEAACcQAAAAEFDpIIsOSw6XXrACXcWFR1NISJ1fBuEDV2sxTe0Z4IB5UvwRKnFeObS3aJ/uCCb+Ig==', N'IHZXA4OOS4JMCZMOZA7B7O5ZR7RWARTD', N'b5600fcd-1abe-4b56-a9f9-3a36e8a27a15', NULL, 0, 0, NULL, 1, 0, CAST(N'2022-09-16T18:52:19.2636602' AS DateTime2))
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [DistrictCorporation], [PoliceStation], [UserPassword], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [CreatedDate]) VALUES (N'b2aa5a5d-cd9c-4889-b54b-69472d979d6b', N'AppUser', N'axzX', N'zzzzzz', N'u6_i$28!@L', N'Naliqishoji', N'NALIQISHOJI', NULL, NULL, 0, N'AQAAAAEAACcQAAAAEEcKWOqEOjJtMZZztJYSVfWqUH/uOEd5ozpQj4syvC7rwRrqelGbOglXl3pMvP+jCg==', N'ZBKJERDJGOICSNZWGYPZPEJ66ZMG6QDU', N'7c21528d-e799-4634-b70c-33957724f870', NULL, 0, 0, NULL, 1, 0, CAST(N'2022-09-15T22:16:59.5973787' AS DateTime2))
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [DistrictCorporation], [PoliceStation], [UserPassword], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [CreatedDate]) VALUES (N'bb8f5a97-1bf3-4df0-892f-24f6f0fe23cb', N'AppUser', N'Adw', N'wwwee', N'4$Er!58FrQ', N'Cunyqaesijo', N'CUNYQAESIJO', NULL, NULL, 0, N'AQAAAAEAACcQAAAAEFra7X3bFmNTinvoCpMLxIUdPvlSU/GQSPsS94EtcR6krYD3QTXnXxa4H7Mucy/xyA==', N'IRLKCKR7QRGDNVEU27UVJAOPH5GEROWV', N'3633c53f-fb57-4ec5-af3f-6fcd38e16e51', NULL, 0, 0, NULL, 1, 0, CAST(N'2022-09-15T19:34:08.4588676' AS DateTime2))
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [DistrictCorporation], [PoliceStation], [UserPassword], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [CreatedDate]) VALUES (N'c026be2b-c5d1-422c-bf27-76189ce56af0', N'AppUser', N'dist', N'seprate', N'Admin@3344', N'Gijaefufihe', N'GIJAEFUFIHE', NULL, NULL, 0, N'AQAAAAEAACcQAAAAEG1FzD+2ECYKVRZNazTZlsq9I10McTV7u6bdaimm8C0K9nK/ekO2TIIRTuGFKM3B8w==', N'7TCVL7HJBVNSQ2IVOYB35AGBTD6DNVMY', N'9aa1bdc7-d622-4c01-aa5c-40a42d749826', NULL, 0, 0, NULL, 1, 0, CAST(N'2022-09-14T11:29:23.4597726' AS DateTime2))
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [DistrictCorporation], [PoliceStation], [UserPassword], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [CreatedDate]) VALUES (N'c061ddbc-e37b-4def-ae9e-5a8dc197e8d9', N'AppUser', N'ddd', N'fffgg', N'-!!17QpZ6F', N'Rejazhuzhify', N'REJAZHUZHIFY', NULL, NULL, 0, N'AQAAAAEAACcQAAAAEKnLPmyVs59If0tPqnWnPXbxFjdWDYN6M4w4LJz1iZrBuqa6uozLUIgoqJOhQx0hNA==', N'OX5DOWSF4XNKFYI3BN2PN3L3VD6MGZFR', N'0653f489-ec37-439b-b1e8-9c6575318305', NULL, 0, 0, NULL, 1, 0, CAST(N'2022-09-12T16:05:39.7153759' AS DateTime2))
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [DistrictCorporation], [PoliceStation], [UserPassword], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [CreatedDate]) VALUES (N'c5e5dc01-d11b-4fbc-8c26-292fd7cebb34', N'AppUser', N'Lahore Punjab', N'Punjab', N'User@123', N'User', N'USER', NULL, NULL, 0, N'AQAAAAEAACcQAAAAEM20UXbHVCOW88QjC3EigwZLUunq0wD7h8JyFFwkUikH7+yoH3qH5YACx5boFIde3Q==', N'7MU6KLSBVVRZOBOGMGHPFLX46XEMJD4V', N'701ab050-7f00-40e8-9625-cba77508e05f', NULL, 0, 0, NULL, 1, 0, CAST(N'2022-09-20T08:14:21.3897255' AS DateTime2))
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [DistrictCorporation], [PoliceStation], [UserPassword], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [CreatedDate]) VALUES (N'c653dd85-c5db-4285-b195-27e66a8807c0', N'AppUser', N'xxz', N'ddssd', N'884ndz!G!H', N'Lubaefulajae', N'LUBAEFULAJAE', NULL, NULL, 0, N'AQAAAAEAACcQAAAAEMiekHM6qivKIK1EzAYMQ3++i17kARAvjp41hmw40jpudOjSPaZv5CoG5M7H4pN+8A==', N'XIVDB5Z7WFDCBEH5DHXPAAXIIDTXO32U', N'c3bb0861-6755-4f12-81a3-1bb97e8e13ba', NULL, 0, 0, NULL, 1, 0, CAST(N'2022-09-16T15:41:58.7238774' AS DateTime2))
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [DistrictCorporation], [PoliceStation], [UserPassword], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [CreatedDate]) VALUES (N'cb7989d0-ace8-4909-af0e-94c0994ea1d9', N'AppUser', N'asds', N'sdsdsdsd', N'9z6nP2b$_W', N'ZHalobyxewae', N'ZHALOBYXEWAE', NULL, NULL, 0, N'AQAAAAEAACcQAAAAEBwqdarmYqHLe2kjKVEQ2jhYUc6/ui4iwFX7lU4PPWWeuWhN96m0zpR+Y25eQl63wQ==', N'TXFPRBJC2A3YJJFEW7KP6Z7CFI72ZGZD', N'c9c9a1bb-557e-48e5-9b0d-54af211f7bf2', NULL, 0, 0, NULL, 1, 0, CAST(N'2022-09-13T18:27:09.4355944' AS DateTime2))
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [DistrictCorporation], [PoliceStation], [UserPassword], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [CreatedDate]) VALUES (N'cbf84237-645e-45df-b62f-a4302600241b', N'AppUser', N'sdfsdf', N'sdfsdf', N'9K3n?2?u?O', N'Rumyniteju', N'RUMYNITEJU', NULL, NULL, 0, N'AQAAAAEAACcQAAAAEO+jTegByBvkbRfvsFwe4I72CnLVnU/jlt+dAU6dVE6AMyfO1EHO+TQZEbquM+ikKQ==', N'DYYK2M3VRVQHCBS2MJA3S7T7Q4LZA26D', N'fb47d220-1cb1-4be9-a09a-3272c35e8572', NULL, 0, 0, NULL, 1, 0, CAST(N'2022-09-15T21:49:15.6170911' AS DateTime2))
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [DistrictCorporation], [PoliceStation], [UserPassword], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [CreatedDate]) VALUES (N'cca66146-1af2-4db7-ada7-5108a7590df3', N'AppUser', N'DIKhan', N'Test', N'!54Fpmfc-T', N'Saejuleloqo', N'SAEJULELOQO', NULL, NULL, 0, N'AQAAAAEAACcQAAAAELYTURm0GgMLQE4zOAfSZrLhIJZqvIulpCTEm5pjlT4w7XaZVD6oxiGFvf5x6w59/g==', N'QXQLVP2XTEFXFBHDZZRZ2YEKHIQ4QCXG', N'95dc3957-1a47-4072-8f49-6376413c7619', NULL, 0, 0, NULL, 1, 0, CAST(N'2022-09-12T10:56:04.3518323' AS DateTime2))
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [DistrictCorporation], [PoliceStation], [UserPassword], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [CreatedDate]) VALUES (N'ceffe422-61ed-41cb-a72d-10b84501c467', N'AppUser', N'asdasdasasdasda', N'adasda', N'-a16!4$o-S', N'Jofiveshuro', N'JOFIVESHURO', NULL, NULL, 0, N'AQAAAAEAACcQAAAAEKWjACtgKLrwP2A0i6iB0qKkhdKBITBpdeHa9CEOZcPWOL96yn2GGfq69QdolKfusQ==', N'LHPIROLXDPNKMQADCN7BQLO7PVYYA4QA', N'020fc7e9-407b-4319-83ff-d28fa7bfd610', NULL, 0, 0, NULL, 1, 0, CAST(N'2022-09-15T22:15:02.6476174' AS DateTime2))
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [DistrictCorporation], [PoliceStation], [UserPassword], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [CreatedDate]) VALUES (N'd1cb055e-19d5-4ccb-aecf-865e2cd7820b', N'AppUser', N'sd', N'sdsdsd', N'$s7?pv9X5L', N'Mikepoxuqo', N'MIKEPOXUQO', NULL, NULL, 0, N'AQAAAAEAACcQAAAAEJatGth41qOkJeqAve6iyw61LIz2gofI6go6VDO1064qhIZbUhsWgwsNoSTRTXTVhg==', N'LKM6ACS7NFSPHJYHNKOVHPCHOHLNTP26', N'cad1436e-5714-4b79-923a-fa53d1dc9a37', NULL, 0, 0, NULL, 1, 0, CAST(N'2022-09-12T15:56:06.5734950' AS DateTime2))
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [DistrictCorporation], [PoliceStation], [UserPassword], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [CreatedDate]) VALUES (N'dfe6e253-5fe9-43b9-861a-bf2f9d51ced9', N'AppUser', N'team', N'team', N'7D_nU?_$$S', N'SHeduzhaesine', N'SHEDUZHAESINE', NULL, NULL, 0, N'AQAAAAEAACcQAAAAEBSeB1inzOU0zipwLu1Ixhxv2xv/uok515XZWrzcoTfKrTJwUJ8uO29OsE5h7BRG5g==', N'IPXL22OUVSMBYRKWA73H4RU6SJJC7GXR', N'e02ed2af-eb58-4782-a2b8-af81b304c4c9', NULL, 0, 0, NULL, 1, 0, CAST(N'2022-09-12T11:59:30.5291520' AS DateTime2))
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [DistrictCorporation], [PoliceStation], [UserPassword], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [CreatedDate]) VALUES (N'e4786662-2906-418e-b47a-f537d4ecac71', N'AppUser', N'rew', N'ewrrr', N'?b7tp?huoP', N'Davogucinu', N'DAVOGUCINU', NULL, NULL, 0, N'AQAAAAEAACcQAAAAEAFjOQw9hKX314Kayi3ONeUHsMsMBkx9+aunC8AtKtSmDhJv4r3icPEVwsEAVhWYEA==', N'LF6G3TM72RYM3JZGIKKYP6BUSZE7MBCR', N'858b8667-00ed-42c2-8a2f-ac6145859493', NULL, 0, 0, NULL, 1, 0, CAST(N'2022-09-12T15:54:27.6886032' AS DateTime2))
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [DistrictCorporation], [PoliceStation], [UserPassword], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [CreatedDate]) VALUES (N'e51f331d-8cae-4fc2-a7b9-32a99aca88ec', N'AppUser', N'sdsd', N'sdsd', N'5s9@8!x49T', N'Socygucalu', N'SOCYGUCALU', NULL, NULL, 0, N'AQAAAAEAACcQAAAAEJSkjHstifPkvKE5B3sxdBZj7WNez6v2VCFBOTNzRTrsJ3qUX1taZvcU3zzUSlhqUA==', N'4ZWV364ZCU3T5BW3YXGAYEEWCXSWN2IP', N'773ae9b2-7fa8-49bb-98d2-29198f3b935b', NULL, 0, 0, NULL, 1, 0, CAST(N'2022-09-15T21:47:49.7694904' AS DateTime2))
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [DistrictCorporation], [PoliceStation], [UserPassword], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [CreatedDate]) VALUES (N'e673102e-aba1-4bf8-b09b-a2802e9fabe6', N'AppUser', N'zccz', N'zxczxc', N'Admin@112233', N'Pupabygefae', N'PUPABYGEFAE', NULL, NULL, 0, N'AQAAAAEAACcQAAAAEFsawT09i9/r68iGZibXT04jfgangTQx2hZlp7YTGmMIglOFobRXTyYqVmFc4x/1KQ==', N'UGB2Y3CB5FR4GCFRQOJHY43SSNBOT37L', N'f65d0138-15c1-44ea-8944-f3753fb2dc2b', NULL, 0, 0, NULL, 1, 0, CAST(N'2022-09-13T23:00:52.7530718' AS DateTime2))
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [DistrictCorporation], [PoliceStation], [UserPassword], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [CreatedDate]) VALUES (N'ee82a335-903c-4021-81c9-ee1ae8facdff', N'AppUser', N'teaa', N'sdsd', N'D05d8_gZ@O', N'Mafukyfeli', N'MAFUKYFELI', NULL, NULL, 0, N'AQAAAAEAACcQAAAAEPW1GR5Xeb2qkv3yGY8zUOywuSzN7nIhxb2CXT7F8U/IzNJCaRSIlqQnl8517REiag==', N'OIYAJTTKW75ZXDCQ33AMVVIKSQII2M7U', N'c5b6b53b-c381-4636-a763-7152bf4e9093', NULL, 0, 0, NULL, 1, 0, CAST(N'2022-09-12T16:03:53.5835676' AS DateTime2))
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [DistrictCorporation], [PoliceStation], [UserPassword], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [CreatedDate]) VALUES (N'f34a7fc1-d55b-4a18-b160-20f0f8146dc2', N'AppUser', N'ss', N'sdsds', N'Admin@112233', N'Hovaeminobi', N'HOVAEMINOBI', NULL, NULL, 0, N'AQAAAAEAACcQAAAAEDwlPrNQioU3IAWxAgzYX3v/ybuQLnKcyZ3V2Dpw1PnuyUydIlmKYe488IiwS2jbsw==', N'GGPSZ62X6KFJMGSGCLXHKAGHJVXMXQEZ', N'f98f21ab-2881-45e2-ae28-0deaba6e2efa', NULL, 0, 0, NULL, 1, 0, CAST(N'2022-09-12T16:09:18.0530321' AS DateTime2))
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [DistrictCorporation], [PoliceStation], [UserPassword], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [CreatedDate]) VALUES (N'f465c795-fcfa-4df8-ba26-f5f505feaa81', N'AppUser', N'sds', N'sdsdsd', N'Admin@334409oiu', N'Jaejuxagelae', N'JAEJUXAGELAE', NULL, NULL, 0, N'AQAAAAEAACcQAAAAELp1/+MowoI2N5dm3PMM3iTTgxwLtKuWAMKkeyr0hChBXhI1m9D++9smdo4hHvZC0Q==', N'QY7GZUVJWXZBWTNFKRZPLU4BRGYZ27XW', N'086d3509-b571-4600-bee5-958ddda963e9', NULL, 0, 0, NULL, 1, 0, CAST(N'2022-09-13T22:57:42.9870875' AS DateTime2))
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [DistrictCorporation], [PoliceStation], [UserPassword], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [CreatedDate]) VALUES (N'fbb06945-714e-4efc-a79a-c4718eb83598', N'AppUser', N'sds', N'dsdsd', N'x?h$b56mWD', N'Cyraetotuzhe', N'CYRAETOTUZHE', NULL, NULL, 0, N'AQAAAAEAACcQAAAAEIOMtYdjqA/2/dpkDTWZTSXfwK1POBDTDLnCnk4Eg3d2zR5uZOr/WZd9BP+PrzajMw==', N'T2KCQBJGTBYEHICFKFHPQHEFSDSUVNV3', N'878ddbfa-0105-4aad-8311-de61d3217253', NULL, 0, 0, NULL, 1, 0, CAST(N'2022-09-12T16:10:23.9274413' AS DateTime2))
GO
SET IDENTITY_INSERT [dbo].[Profiles] ON 

INSERT [dbo].[Profiles] ([Id], [Name], [CPName], [CPPhoneNo], [GDCaseNo], [OfficerName], [OfficerBPNo], [OfficerPhoneNo], [Remarks], [ImageURL], [IsLost], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [AspNetUserId], [IsActive], [IsDelete]) VALUES (1, N'sam', N'John', N'03419876453', N'212', N'Zazi', N'02178645327', N'98736535553', N'ok', NULL, 0, CAST(N'2022-09-02T12:33:11.9517242' AS DateTime2), N'', CAST(N'1970-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL, 1, 1)
INSERT [dbo].[Profiles] ([Id], [Name], [CPName], [CPPhoneNo], [GDCaseNo], [OfficerName], [OfficerBPNo], [OfficerPhoneNo], [Remarks], [ImageURL], [IsLost], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [AspNetUserId], [IsActive], [IsDelete]) VALUES (2, N'Zam', N'Jami', N'03419876432', N'2122', N'has', N'02178644327', N'98736539993', N'Its ok', NULL, 0, CAST(N'2022-09-02T12:37:30.9145309' AS DateTime2), N'', CAST(N'1970-01-01T00:00:00.0000000' AS DateTime2), NULL, N'3131b6da-1908-4499-b6b4-8e6065c94bae', 1, 0)
INSERT [dbo].[Profiles] ([Id], [Name], [CPName], [CPPhoneNo], [GDCaseNo], [OfficerName], [OfficerBPNo], [OfficerPhoneNo], [Remarks], [ImageURL], [IsLost], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [AspNetUserId], [IsActive], [IsDelete]) VALUES (3, N'Ortan', N'Spartan', N'04567382987', N'1233', N'Dostan', N'09874382756', N'07578462763', N'Test', NULL, 0, CAST(N'2022-09-02T12:43:44.4891502' AS DateTime2), N'', CAST(N'1970-01-01T00:00:00.0000000' AS DateTime2), NULL, N'3131b6da-1908-4499-b6b4-8e6065c94bae', 1, 0)
INSERT [dbo].[Profiles] ([Id], [Name], [CPName], [CPPhoneNo], [GDCaseNo], [OfficerName], [OfficerBPNo], [OfficerPhoneNo], [Remarks], [ImageURL], [IsLost], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [AspNetUserId], [IsActive], [IsDelete]) VALUES (5, N'hamid', N'rasheed', N'234234234234', N'werwerwer', N'werwer', N'werwer', N'werwerwer', N'werwerwerwerwerwer', NULL, 0, CAST(N'2022-09-05T16:25:59.6693270' AS DateTime2), N'', CAST(N'1970-01-01T00:00:00.0000000' AS DateTime2), NULL, N'3131b6da-1908-4499-b6b4-8e6065c94bae', 1, 0)
INSERT [dbo].[Profiles] ([Id], [Name], [CPName], [CPPhoneNo], [GDCaseNo], [OfficerName], [OfficerBPNo], [OfficerPhoneNo], [Remarks], [ImageURL], [IsLost], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [AspNetUserId], [IsActive], [IsDelete]) VALUES (11, N'test', N'teeee', N'', N'', N'', N'', N'', N'', NULL, 0, CAST(N'2022-09-05T21:32:51.6073255' AS DateTime2), NULL, CAST(N'1970-01-01T00:00:00.0000000' AS DateTime2), NULL, N'3131b6da-1908-4499-b6b4-8e6065c94bae', 1, 0)
INSERT [dbo].[Profiles] ([Id], [Name], [CPName], [CPPhoneNo], [GDCaseNo], [OfficerName], [OfficerBPNo], [OfficerPhoneNo], [Remarks], [ImageURL], [IsLost], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [AspNetUserId], [IsActive], [IsDelete]) VALUES (12, N'testasdasd', N'teeeeasdasdasd', N'', N'', N'', N'', N'', N'', NULL, 0, CAST(N'2022-09-05T21:36:49.7880042' AS DateTime2), NULL, CAST(N'1970-01-01T00:00:00.0000000' AS DateTime2), NULL, N'3131b6da-1908-4499-b6b4-8e6065c94bae', 1, 0)
INSERT [dbo].[Profiles] ([Id], [Name], [CPName], [CPPhoneNo], [GDCaseNo], [OfficerName], [OfficerBPNo], [OfficerPhoneNo], [Remarks], [ImageURL], [IsLost], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [AspNetUserId], [IsActive], [IsDelete]) VALUES (13, N'sdsd', N'sdsds', N'', N'', N'', N'', N'', N'', NULL, 0, CAST(N'2022-09-05T21:46:54.8627217' AS DateTime2), NULL, CAST(N'1970-01-01T00:00:00.0000000' AS DateTime2), NULL, N'3131b6da-1908-4499-b6b4-8e6065c94bae', 1, 0)
INSERT [dbo].[Profiles] ([Id], [Name], [CPName], [CPPhoneNo], [GDCaseNo], [OfficerName], [OfficerBPNo], [OfficerPhoneNo], [Remarks], [ImageURL], [IsLost], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [AspNetUserId], [IsActive], [IsDelete]) VALUES (14, N'tesss', N'ddds', N'', N'', N'', N'', N'', N'', N'3131b6da-1908-4499-b6b4-8e6065c94bae\Screenshot (1)-20220906031413903.png', 0, CAST(N'2022-09-05T22:14:17.8628570' AS DateTime2), NULL, CAST(N'1970-01-01T00:00:00.0000000' AS DateTime2), NULL, N'3131b6da-1908-4499-b6b4-8e6065c94bae', 1, 0)
INSERT [dbo].[Profiles] ([Id], [Name], [CPName], [CPPhoneNo], [GDCaseNo], [OfficerName], [OfficerBPNo], [OfficerPhoneNo], [Remarks], [ImageURL], [IsLost], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [AspNetUserId], [IsActive], [IsDelete]) VALUES (15, N'team', N'tee', N'', N'', N'', N'', N'', N'', N'3131b6da-1908-4499-b6b4-8e6065c94bae\Screenshot (1)-20220906031618943.png', 0, CAST(N'2022-09-05T22:16:21.6342031' AS DateTime2), NULL, CAST(N'1970-01-01T00:00:00.0000000' AS DateTime2), NULL, N'3131b6da-1908-4499-b6b4-8e6065c94bae', 1, 0)
INSERT [dbo].[Profiles] ([Id], [Name], [CPName], [CPPhoneNo], [GDCaseNo], [OfficerName], [OfficerBPNo], [OfficerPhoneNo], [Remarks], [ImageURL], [IsLost], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [AspNetUserId], [IsActive], [IsDelete]) VALUES (16, N'trear', N'sam', N'', N'', N'', N'', N'', N'', N'3131b6da-1908-4499-b6b4-8e6065c94bae\download (1) (2)-20220906031729688.jpg', 0, CAST(N'2022-09-05T22:17:33.0507696' AS DateTime2), NULL, CAST(N'1970-01-01T00:00:00.0000000' AS DateTime2), NULL, N'3131b6da-1908-4499-b6b4-8e6065c94bae', 1, 0)
INSERT [dbo].[Profiles] ([Id], [Name], [CPName], [CPPhoneNo], [GDCaseNo], [OfficerName], [OfficerBPNo], [OfficerPhoneNo], [Remarks], [ImageURL], [IsLost], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [AspNetUserId], [IsActive], [IsDelete]) VALUES (17, N'taha', N'fatima', N'132312312312312', N'qweqw', N'qweqwe', N'qweqwe', N'123123123', N'123123123123123123123123qweqweqweqweqwe', N'478bc446-f77b-4e21-9b69-e28b797b41e6\dont_touch-1-1024x576-20220907202548099.jpg', 0, CAST(N'2022-09-07T15:25:48.1239754' AS DateTime2), NULL, CAST(N'1970-01-01T00:00:00.0000000' AS DateTime2), NULL, N'478bc446-f77b-4e21-9b69-e28b797b41e6', 1, 0)
INSERT [dbo].[Profiles] ([Id], [Name], [CPName], [CPPhoneNo], [GDCaseNo], [OfficerName], [OfficerBPNo], [OfficerPhoneNo], [Remarks], [ImageURL], [IsLost], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [AspNetUserId], [IsActive], [IsDelete]) VALUES (18, N'abc', N'abc', N'03020', N'12', N'1212', N'212122', N'111212121212', N'dsd', N'3131b6da-1908-4499-b6b4-8e6065c94bae\Screenshot-20220907231613646.png', 0, CAST(N'2022-09-07T18:16:14.1012158' AS DateTime2), NULL, CAST(N'1970-01-01T00:00:00.0000000' AS DateTime2), NULL, N'3131b6da-1908-4499-b6b4-8e6065c94bae', 1, 0)
INSERT [dbo].[Profiles] ([Id], [Name], [CPName], [CPPhoneNo], [GDCaseNo], [OfficerName], [OfficerBPNo], [OfficerPhoneNo], [Remarks], [ImageURL], [IsLost], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [AspNetUserId], [IsActive], [IsDelete]) VALUES (19, N'abc', N'abc', N'03020', N'12', N'1212', N'212122', N'111212121212', N'dsd', N'3131b6da-1908-4499-b6b4-8e6065c94bae\Screenshot-20220907231927314.png', 0, CAST(N'2022-09-07T18:19:27.3181799' AS DateTime2), NULL, CAST(N'1970-01-01T00:00:00.0000000' AS DateTime2), NULL, N'3131b6da-1908-4499-b6b4-8e6065c94bae', 1, 0)
INSERT [dbo].[Profiles] ([Id], [Name], [CPName], [CPPhoneNo], [GDCaseNo], [OfficerName], [OfficerBPNo], [OfficerPhoneNo], [Remarks], [ImageURL], [IsLost], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [AspNetUserId], [IsActive], [IsDelete]) VALUES (20, N'aaa', N'aaa', N'1262303', N'1563', N'asada', N'1212', N'1212121', N'fdf', N'3131b6da-1908-4499-b6b4-8e6065c94bae\Screenshot (33)-20220907232214264.png', 0, CAST(N'2022-09-07T18:22:14.3109854' AS DateTime2), NULL, CAST(N'1970-01-01T00:00:00.0000000' AS DateTime2), NULL, N'3131b6da-1908-4499-b6b4-8e6065c94bae', 1, 0)
INSERT [dbo].[Profiles] ([Id], [Name], [CPName], [CPPhoneNo], [GDCaseNo], [OfficerName], [OfficerBPNo], [OfficerPhoneNo], [Remarks], [ImageURL], [IsLost], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [AspNetUserId], [IsActive], [IsDelete]) VALUES (21, N'aaa', N'aaa', N'1262303', N'1563', N'asada', N'1212', N'1212121', N'fdf', N'3131b6da-1908-4499-b6b4-8e6065c94bae\Screenshot (33)-20220907232339393.png', 0, CAST(N'2022-09-07T18:23:39.4017821' AS DateTime2), NULL, CAST(N'1970-01-01T00:00:00.0000000' AS DateTime2), NULL, N'3131b6da-1908-4499-b6b4-8e6065c94bae', 1, 0)
INSERT [dbo].[Profiles] ([Id], [Name], [CPName], [CPPhoneNo], [GDCaseNo], [OfficerName], [OfficerBPNo], [OfficerPhoneNo], [Remarks], [ImageURL], [IsLost], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [AspNetUserId], [IsActive], [IsDelete]) VALUES (22, N'aaa', N'aaa', N'1262303', N'1563', N'asada', N'1212', N'1212121', N'fdf', N'3131b6da-1908-4499-b6b4-8e6065c94bae\Screenshot (33)-20220907232454987.png', 0, CAST(N'2022-09-07T18:24:55.0006612' AS DateTime2), NULL, CAST(N'1970-01-01T00:00:00.0000000' AS DateTime2), NULL, N'3131b6da-1908-4499-b6b4-8e6065c94bae', 1, 0)
INSERT [dbo].[Profiles] ([Id], [Name], [CPName], [CPPhoneNo], [GDCaseNo], [OfficerName], [OfficerBPNo], [OfficerPhoneNo], [Remarks], [ImageURL], [IsLost], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [AspNetUserId], [IsActive], [IsDelete]) VALUES (23, N'aa', N'aaa', N'2313131', N'4242', N'fsfsf', N'4342', N'323', N'dfsfs', N'3131b6da-1908-4499-b6b4-8e6065c94bae\Screenshot (38)-20220907232611400.png', 0, CAST(N'2022-09-07T18:26:11.4524689' AS DateTime2), NULL, CAST(N'1970-01-01T00:00:00.0000000' AS DateTime2), NULL, N'3131b6da-1908-4499-b6b4-8e6065c94bae', 1, 0)
INSERT [dbo].[Profiles] ([Id], [Name], [CPName], [CPPhoneNo], [GDCaseNo], [OfficerName], [OfficerBPNo], [OfficerPhoneNo], [Remarks], [ImageURL], [IsLost], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [AspNetUserId], [IsActive], [IsDelete]) VALUES (24, N'tesa', N'that', N'452342342342342', N'345345345345345', N'teee', N'42342342342342', N'23423423423423', N'tes', N'3131b6da-1908-4499-b6b4-8e6065c94bae\07-06-2022 13-53-241-20220908235241605.jpg', 1, CAST(N'2022-09-08T18:52:49.3963103' AS DateTime2), NULL, CAST(N'1970-01-01T00:00:00.0000000' AS DateTime2), NULL, N'3131b6da-1908-4499-b6b4-8e6065c94bae', 1, 0)
INSERT [dbo].[Profiles] ([Id], [Name], [CPName], [CPPhoneNo], [GDCaseNo], [OfficerName], [OfficerBPNo], [OfficerPhoneNo], [Remarks], [ImageURL], [IsLost], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [AspNetUserId], [IsActive], [IsDelete]) VALUES (25, N'Atique', N'CpName', N'03458899789', N'1222', N'Attique', N'02388777', N'0349944339', N'Verified', N'3131b6da-1908-4499-b6b4-8e6065c94bae\Screenshot (1)-20220906031413903.png', 0, CAST(N'2022-09-02T12:33:11.9517242' AS DateTime2), N'13', CAST(N'1970-01-01T00:00:00.0000000' AS DateTime2), N'13', N'3131b6da-1908-4499-b6b4-8e6065c94bae', 1, 0)
INSERT [dbo].[Profiles] ([Id], [Name], [CPName], [CPPhoneNo], [GDCaseNo], [OfficerName], [OfficerBPNo], [OfficerPhoneNo], [Remarks], [ImageURL], [IsLost], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [AspNetUserId], [IsActive], [IsDelete]) VALUES (26, N'Atique', N'CpName', N'03458899789', N'1222', N'Attique', N'02388777', N'0349944339', N'Verified', N'3131b6da-1908-4499-b6b4-8e6065c94bae\Screenshot (1)-20220906031413903.png', 0, CAST(N'2022-09-02T12:33:11.9517242' AS DateTime2), N'13', CAST(N'1970-01-01T00:00:00.0000000' AS DateTime2), N'13', N'3131b6da-1908-4499-b6b4-8e6065c94bae', 1, 0)
INSERT [dbo].[Profiles] ([Id], [Name], [CPName], [CPPhoneNo], [GDCaseNo], [OfficerName], [OfficerBPNo], [OfficerPhoneNo], [Remarks], [ImageURL], [IsLost], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [AspNetUserId], [IsActive], [IsDelete]) VALUES (27, N'Atique', N'CpName', N'03458899789', N'1222', N'Attique', N'02388777', N'0349944339', N'Verified', N'3131b6da-1908-4499-b6b4-8e6065c94bae\Screenshot (1)-20220906031413903.png', 0, CAST(N'2022-09-02T12:33:11.9517242' AS DateTime2), N'13', CAST(N'1970-01-01T00:00:00.0000000' AS DateTime2), N'13', N'3131b6da-1908-4499-b6b4-8e6065c94bae', 1, 0)
INSERT [dbo].[Profiles] ([Id], [Name], [CPName], [CPPhoneNo], [GDCaseNo], [OfficerName], [OfficerBPNo], [OfficerPhoneNo], [Remarks], [ImageURL], [IsLost], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [AspNetUserId], [IsActive], [IsDelete]) VALUES (28, N'Atique', N'CpName', N'03458899789', N'1222', N'Attique', N'02388777', N'0349944339', N'Verified', N'3131b6da-1908-4499-b6b4-8e6065c94bae\Screenshot (1)-20220906031413903.png', 0, CAST(N'2022-09-02T12:33:11.9517242' AS DateTime2), N'13', CAST(N'1970-01-01T00:00:00.0000000' AS DateTime2), N'13', N'3131b6da-1908-4499-b6b4-8e6065c94bae', 1, 0)
INSERT [dbo].[Profiles] ([Id], [Name], [CPName], [CPPhoneNo], [GDCaseNo], [OfficerName], [OfficerBPNo], [OfficerPhoneNo], [Remarks], [ImageURL], [IsLost], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [AspNetUserId], [IsActive], [IsDelete]) VALUES (29, N'Atique', N'CpName', N'03458899789', N'1222', N'Attique', N'02388777', N'0349944339', N'Verified', N'3131b6da-1908-4499-b6b4-8e6065c94bae\Screenshot (1)-20220906031413903.png', 0, CAST(N'2022-09-02T12:33:11.9517242' AS DateTime2), N'13', CAST(N'1970-01-01T00:00:00.0000000' AS DateTime2), N'13', N'3131b6da-1908-4499-b6b4-8e6065c94bae', 1, 0)
INSERT [dbo].[Profiles] ([Id], [Name], [CPName], [CPPhoneNo], [GDCaseNo], [OfficerName], [OfficerBPNo], [OfficerPhoneNo], [Remarks], [ImageURL], [IsLost], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [AspNetUserId], [IsActive], [IsDelete]) VALUES (30, N'Atique', N'CpName', N'03458899789', N'1222', N'Attique', N'02388777', N'0349944339', N'Verified', N'3131b6da-1908-4499-b6b4-8e6065c94bae\Screenshot (1)-20220906031413903.png', 0, CAST(N'2022-09-02T12:33:11.9517242' AS DateTime2), N'13', CAST(N'1970-01-01T00:00:00.0000000' AS DateTime2), N'13', N'3131b6da-1908-4499-b6b4-8e6065c94bae', 1, 0)
INSERT [dbo].[Profiles] ([Id], [Name], [CPName], [CPPhoneNo], [GDCaseNo], [OfficerName], [OfficerBPNo], [OfficerPhoneNo], [Remarks], [ImageURL], [IsLost], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [AspNetUserId], [IsActive], [IsDelete]) VALUES (31, N'Atique', N'CpName', N'03458899789', N'1222', N'Attique', N'02388777', N'0349944339', N'Verified', N'3131b6da-1908-4499-b6b4-8e6065c94bae\Screenshot (1)-20220906031413903.png', 0, CAST(N'2022-09-02T12:33:11.9517242' AS DateTime2), N'13', CAST(N'1970-01-01T00:00:00.0000000' AS DateTime2), N'13', N'3131b6da-1908-4499-b6b4-8e6065c94bae', 1, 0)
INSERT [dbo].[Profiles] ([Id], [Name], [CPName], [CPPhoneNo], [GDCaseNo], [OfficerName], [OfficerBPNo], [OfficerPhoneNo], [Remarks], [ImageURL], [IsLost], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [AspNetUserId], [IsActive], [IsDelete]) VALUES (32, N'Atique', N'CpName', N'03458899789', N'1222', N'Attique', N'02388777', N'0349944339', N'Verified', N'3131b6da-1908-4499-b6b4-8e6065c94bae\Screenshot (1)-20220906031413903.png', 0, CAST(N'2022-09-02T12:33:11.9517242' AS DateTime2), N'13', CAST(N'1970-01-01T00:00:00.0000000' AS DateTime2), N'13', N'3131b6da-1908-4499-b6b4-8e6065c94bae', 1, 0)
INSERT [dbo].[Profiles] ([Id], [Name], [CPName], [CPPhoneNo], [GDCaseNo], [OfficerName], [OfficerBPNo], [OfficerPhoneNo], [Remarks], [ImageURL], [IsLost], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [AspNetUserId], [IsActive], [IsDelete]) VALUES (33, N'Atique', N'CpName', N'03458899789', N'1222', N'Attique', N'02388777', N'0349944339', N'Verified', N'3131b6da-1908-4499-b6b4-8e6065c94bae\Screenshot (1)-20220906031413903.png', 0, CAST(N'2022-09-02T12:33:11.9517242' AS DateTime2), N'13', CAST(N'1970-01-01T00:00:00.0000000' AS DateTime2), N'13', N'3131b6da-1908-4499-b6b4-8e6065c94bae', 1, 0)
INSERT [dbo].[Profiles] ([Id], [Name], [CPName], [CPPhoneNo], [GDCaseNo], [OfficerName], [OfficerBPNo], [OfficerPhoneNo], [Remarks], [ImageURL], [IsLost], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [AspNetUserId], [IsActive], [IsDelete]) VALUES (34, N'Atique', N'CpName', N'03458899789', N'1222', N'Attique', N'02388777', N'0349944339', N'Verified', N'3131b6da-1908-4499-b6b4-8e6065c94bae\Screenshot (1)-20220906031413903.png', 0, CAST(N'2022-09-02T12:33:11.9517242' AS DateTime2), N'13', CAST(N'1970-01-01T00:00:00.0000000' AS DateTime2), N'13', N'3131b6da-1908-4499-b6b4-8e6065c94bae', 1, 0)
INSERT [dbo].[Profiles] ([Id], [Name], [CPName], [CPPhoneNo], [GDCaseNo], [OfficerName], [OfficerBPNo], [OfficerPhoneNo], [Remarks], [ImageURL], [IsLost], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [AspNetUserId], [IsActive], [IsDelete]) VALUES (35, N'Atique', N'CpName', N'03458899789', N'1222', N'Attique', N'02388777', N'0349944339', N'Verified', N'3131b6da-1908-4499-b6b4-8e6065c94bae\Screenshot (1)-20220906031413903.png', 0, CAST(N'2022-09-02T12:33:11.9517242' AS DateTime2), N'13', CAST(N'1970-01-01T00:00:00.0000000' AS DateTime2), N'13', N'3131b6da-1908-4499-b6b4-8e6065c94bae', 1, 0)
INSERT [dbo].[Profiles] ([Id], [Name], [CPName], [CPPhoneNo], [GDCaseNo], [OfficerName], [OfficerBPNo], [OfficerPhoneNo], [Remarks], [ImageURL], [IsLost], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [AspNetUserId], [IsActive], [IsDelete]) VALUES (36, N'Atique', N'CpName', N'03458899789', N'1222', N'Attique', N'02388777', N'0349944339', N'Verified', N'3131b6da-1908-4499-b6b4-8e6065c94bae\Screenshot (1)-20220906031413903.png', 0, CAST(N'2022-09-02T12:33:11.9517242' AS DateTime2), N'13', CAST(N'1970-01-01T00:00:00.0000000' AS DateTime2), N'13', N'3131b6da-1908-4499-b6b4-8e6065c94bae', 1, 0)
INSERT [dbo].[Profiles] ([Id], [Name], [CPName], [CPPhoneNo], [GDCaseNo], [OfficerName], [OfficerBPNo], [OfficerPhoneNo], [Remarks], [ImageURL], [IsLost], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [AspNetUserId], [IsActive], [IsDelete]) VALUES (37, N'Atique', N'CpName', N'03458899789', N'1222', N'Attique', N'02388777', N'0349944339', N'Verified', N'3131b6da-1908-4499-b6b4-8e6065c94bae\Screenshot (1)-20220906031413903.png', 0, CAST(N'2022-09-02T12:33:11.9517242' AS DateTime2), N'13', CAST(N'1970-01-01T00:00:00.0000000' AS DateTime2), N'13', N'3131b6da-1908-4499-b6b4-8e6065c94bae', 1, 0)
INSERT [dbo].[Profiles] ([Id], [Name], [CPName], [CPPhoneNo], [GDCaseNo], [OfficerName], [OfficerBPNo], [OfficerPhoneNo], [Remarks], [ImageURL], [IsLost], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [AspNetUserId], [IsActive], [IsDelete]) VALUES (38, N'Atique', N'CpName', N'03458899789', N'1222', N'Attique', N'02388777', N'0349944339', N'Verified', N'3131b6da-1908-4499-b6b4-8e6065c94bae\Screenshot (1)-20220906031413903.png', 0, CAST(N'2022-09-02T12:33:11.9517242' AS DateTime2), N'13', CAST(N'1970-01-01T00:00:00.0000000' AS DateTime2), N'13', N'3131b6da-1908-4499-b6b4-8e6065c94bae', 1, 0)
INSERT [dbo].[Profiles] ([Id], [Name], [CPName], [CPPhoneNo], [GDCaseNo], [OfficerName], [OfficerBPNo], [OfficerPhoneNo], [Remarks], [ImageURL], [IsLost], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [AspNetUserId], [IsActive], [IsDelete]) VALUES (39, N'Atique', N'CpName', N'03458899789', N'1222', N'Attique', N'02388777', N'0349944339', N'Verified', N'3131b6da-1908-4499-b6b4-8e6065c94bae\Screenshot (1)-20220906031413903.png', 0, CAST(N'2022-09-02T12:33:11.9517242' AS DateTime2), N'13', CAST(N'1970-01-01T00:00:00.0000000' AS DateTime2), N'13', N'3131b6da-1908-4499-b6b4-8e6065c94bae', 1, 0)
INSERT [dbo].[Profiles] ([Id], [Name], [CPName], [CPPhoneNo], [GDCaseNo], [OfficerName], [OfficerBPNo], [OfficerPhoneNo], [Remarks], [ImageURL], [IsLost], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [AspNetUserId], [IsActive], [IsDelete]) VALUES (40, N'Atique', N'CpName', N'03458899789', N'1222', N'Attique', N'02388777', N'0349944339', N'Verified', N'3131b6da-1908-4499-b6b4-8e6065c94bae\Screenshot (1)-20220906031413903.png', 0, CAST(N'2022-09-02T12:33:11.9517242' AS DateTime2), N'13', CAST(N'1970-01-01T00:00:00.0000000' AS DateTime2), N'13', N'3131b6da-1908-4499-b6b4-8e6065c94bae', 1, 0)
INSERT [dbo].[Profiles] ([Id], [Name], [CPName], [CPPhoneNo], [GDCaseNo], [OfficerName], [OfficerBPNo], [OfficerPhoneNo], [Remarks], [ImageURL], [IsLost], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [AspNetUserId], [IsActive], [IsDelete]) VALUES (41, N'Atique', N'CpName', N'03458899789', N'1222', N'Attique', N'02388777', N'0349944339', N'Verified', N'3131b6da-1908-4499-b6b4-8e6065c94bae\Screenshot (1)-20220906031413903.png', 0, CAST(N'2022-09-02T12:33:11.9517242' AS DateTime2), N'13', CAST(N'1970-01-01T00:00:00.0000000' AS DateTime2), N'13', N'3131b6da-1908-4499-b6b4-8e6065c94bae', 1, 0)
INSERT [dbo].[Profiles] ([Id], [Name], [CPName], [CPPhoneNo], [GDCaseNo], [OfficerName], [OfficerBPNo], [OfficerPhoneNo], [Remarks], [ImageURL], [IsLost], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [AspNetUserId], [IsActive], [IsDelete]) VALUES (42, N'Atique', N'CpName', N'03458899789', N'1222', N'Attique', N'02388777', N'0349944339', N'Verified', N'3131b6da-1908-4499-b6b4-8e6065c94bae\Screenshot (1)-20220906031413903.png', 0, CAST(N'2022-09-02T12:33:11.9517242' AS DateTime2), N'13', CAST(N'1970-01-01T00:00:00.0000000' AS DateTime2), N'13', N'3131b6da-1908-4499-b6b4-8e6065c94bae', 1, 0)
INSERT [dbo].[Profiles] ([Id], [Name], [CPName], [CPPhoneNo], [GDCaseNo], [OfficerName], [OfficerBPNo], [OfficerPhoneNo], [Remarks], [ImageURL], [IsLost], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [AspNetUserId], [IsActive], [IsDelete]) VALUES (43, N'Atique', N'CpName', N'03458899789', N'1222', N'Attique', N'02388777', N'0349944339', N'Verified', N'3131b6da-1908-4499-b6b4-8e6065c94bae\Screenshot (1)-20220906031413903.png', 0, CAST(N'2022-09-02T12:33:11.9517242' AS DateTime2), N'13', CAST(N'1970-01-01T00:00:00.0000000' AS DateTime2), N'13', N'3131b6da-1908-4499-b6b4-8e6065c94bae', 1, 0)
INSERT [dbo].[Profiles] ([Id], [Name], [CPName], [CPPhoneNo], [GDCaseNo], [OfficerName], [OfficerBPNo], [OfficerPhoneNo], [Remarks], [ImageURL], [IsLost], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [AspNetUserId], [IsActive], [IsDelete]) VALUES (44, N'Atique', N'CpName', N'03458899789', N'1222', N'Attique', N'02388777', N'0349944339', N'Verified', N'3131b6da-1908-4499-b6b4-8e6065c94bae\Screenshot (1)-20220906031413903.png', 0, CAST(N'2022-09-02T12:33:11.9517242' AS DateTime2), N'13', CAST(N'1970-01-01T00:00:00.0000000' AS DateTime2), N'13', N'3131b6da-1908-4499-b6b4-8e6065c94bae', 1, 0)
INSERT [dbo].[Profiles] ([Id], [Name], [CPName], [CPPhoneNo], [GDCaseNo], [OfficerName], [OfficerBPNo], [OfficerPhoneNo], [Remarks], [ImageURL], [IsLost], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [AspNetUserId], [IsActive], [IsDelete]) VALUES (45, N'Atique', N'CpName', N'03458899789', N'1222', N'Attique', N'02388777', N'0349944339', N'Verified', N'3131b6da-1908-4499-b6b4-8e6065c94bae\Screenshot (1)-20220906031413903.png', 0, CAST(N'2022-09-02T12:33:11.9517242' AS DateTime2), N'13', CAST(N'1970-01-01T00:00:00.0000000' AS DateTime2), N'13', N'3131b6da-1908-4499-b6b4-8e6065c94bae', 1, 0)
INSERT [dbo].[Profiles] ([Id], [Name], [CPName], [CPPhoneNo], [GDCaseNo], [OfficerName], [OfficerBPNo], [OfficerPhoneNo], [Remarks], [ImageURL], [IsLost], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [AspNetUserId], [IsActive], [IsDelete]) VALUES (46, N'Atique', N'CpName', N'03458899789', N'1222', N'Attique', N'02388777', N'0349944339', N'Verified', N'3131b6da-1908-4499-b6b4-8e6065c94bae\Screenshot (1)-20220906031413903.png', 0, CAST(N'2022-09-02T12:33:11.9517242' AS DateTime2), N'13', CAST(N'1970-01-01T00:00:00.0000000' AS DateTime2), N'13', N'3131b6da-1908-4499-b6b4-8e6065c94bae', 1, 0)
INSERT [dbo].[Profiles] ([Id], [Name], [CPName], [CPPhoneNo], [GDCaseNo], [OfficerName], [OfficerBPNo], [OfficerPhoneNo], [Remarks], [ImageURL], [IsLost], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [AspNetUserId], [IsActive], [IsDelete]) VALUES (47, N'Atique', N'CpName', N'03458899789', N'1222', N'Attique', N'02388777', N'0349944339', N'Verified', N'3131b6da-1908-4499-b6b4-8e6065c94bae\Screenshot (1)-20220906031413903.png', 0, CAST(N'2022-09-02T12:33:11.9517242' AS DateTime2), N'13', CAST(N'1970-01-01T00:00:00.0000000' AS DateTime2), N'13', N'3131b6da-1908-4499-b6b4-8e6065c94bae', 1, 0)
INSERT [dbo].[Profiles] ([Id], [Name], [CPName], [CPPhoneNo], [GDCaseNo], [OfficerName], [OfficerBPNo], [OfficerPhoneNo], [Remarks], [ImageURL], [IsLost], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [AspNetUserId], [IsActive], [IsDelete]) VALUES (48, N'Atique', N'CpName', N'03458899789', N'1222', N'Attique', N'02388777', N'0349944339', N'Verified', N'3131b6da-1908-4499-b6b4-8e6065c94bae\Screenshot (1)-20220906031413903.png', 0, CAST(N'2022-09-02T12:33:11.9517242' AS DateTime2), N'13', CAST(N'1970-01-01T00:00:00.0000000' AS DateTime2), N'13', N'3131b6da-1908-4499-b6b4-8e6065c94bae', 1, 0)
INSERT [dbo].[Profiles] ([Id], [Name], [CPName], [CPPhoneNo], [GDCaseNo], [OfficerName], [OfficerBPNo], [OfficerPhoneNo], [Remarks], [ImageURL], [IsLost], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [AspNetUserId], [IsActive], [IsDelete]) VALUES (49, N'Atique', N'CpName', N'03458899789', N'1222', N'Attique', N'02388777', N'0349944339', N'Verified', N'3131b6da-1908-4499-b6b4-8e6065c94bae\Screenshot (1)-20220906031413903.png', 0, CAST(N'2022-09-02T12:33:11.9517242' AS DateTime2), N'13', CAST(N'1970-01-01T00:00:00.0000000' AS DateTime2), N'13', N'3131b6da-1908-4499-b6b4-8e6065c94bae', 1, 0)
INSERT [dbo].[Profiles] ([Id], [Name], [CPName], [CPPhoneNo], [GDCaseNo], [OfficerName], [OfficerBPNo], [OfficerPhoneNo], [Remarks], [ImageURL], [IsLost], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [AspNetUserId], [IsActive], [IsDelete]) VALUES (50, N'Atique', N'CpName', N'03458899789', N'1222', N'Attique', N'02388777', N'0349944339', N'Verified', N'3131b6da-1908-4499-b6b4-8e6065c94bae\Screenshot (1)-20220906031413903.png', 0, CAST(N'2022-09-02T12:33:11.9517242' AS DateTime2), N'13', CAST(N'1970-01-01T00:00:00.0000000' AS DateTime2), N'13', N'3131b6da-1908-4499-b6b4-8e6065c94bae', 1, 0)
SET IDENTITY_INSERT [dbo].[Profiles] OFF
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Profiles]  WITH CHECK ADD  CONSTRAINT [FK_Profiles_AspNetUsers_AspNetUserId] FOREIGN KEY([AspNetUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Profiles] CHECK CONSTRAINT [FK_Profiles_AspNetUsers_AspNetUserId]
GO
/****** Object:  StoredProcedure [dbo].[FetchProfile]    Script Date: 9/20/2022 7:22:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[FetchProfile] 
@PageSize int,
@PageNum int,
@AspNetUserId nvarchar(max) = null
AS
BEGIN
;With Result as 
	(select ROW_NUMBER() over(order by profiles.Id desc) as RowNo, Count(*) over() Total,
		profiles.Id,
		profiles.IsDelete,
		Profiles.[Name],
		Profiles.CPName,
		profiles.CPPhoneNo,
		profiles.GDCaseNo,
		profiles.OfficerName,
		profiles.OfficerBPNo,
		profiles.OfficerPhoneNo,
		profiles.ImageURL,
		profiles.Remarks,
		profiles.AspNetUserId,
		CASE WHEN profiles.IsLost= 0 THEN 'Lost Person' ELSE 'Found Person' END IsLost,
		aspnetuser.PoliceStation,
		convert(varchar, profiles.CreatedDate,110) + ' '  + convert(varchar,  profiles.CreatedDate, 8) as createdDate	

		from Profiles profiles 
		left join AspNetUsers aspnetuser on aspnetuser.Id = profiles.AspNetUserId
		where profiles.IsDelete=0 and (profiles.AspNetUserId =  @AspNetUserId OR ISNULL(@AspNetUserId, '') = '')
	)
	 select TOP (case @PageSize when -1 then (Select Count(*)from Result) else @PageSize end) * from Result where RowNo > ((@PageNum-1) * @PageSize ) 
END
GO
/****** Object:  StoredProcedure [dbo].[FetchUser]    Script Date: 9/20/2022 7:22:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[FetchUser] 
@PageSize int,
@PageNum int,
@SortCol int,
@SortOrder nvarchar(5),
@AspNetRoleId nvarchar(50)
AS
BEGIN
	;With Result as 
	(
		select ROW_NUMBER() over(order by 
		case when NULLIF(@SortOrder,'') IS NULL then aspnetuser.DistrictCorporation end desc,
		case when (@SortCol = 1 and @SortOrder = 'asc') then aspnetuser.UserName end asc,	case when (@SortCol = 1 and @SortOrder = 'desc') then aspnetuser.UserName end desc,
		case when (@SortCol = 2 and @SortOrder = 'asc') then aspnetuser.UserPassword end asc,	case when (@SortCol = 2 and @SortOrder = 'desc') then aspnetuser.UserPassword end desc,
		case when (@SortCol = 3 and @SortOrder = 'asc') then aspnetuser.PoliceStation end asc,	case when (@SortCol = 3 and @SortOrder = 'desc') then aspnetuser.PoliceStation end desc
		
		) as RowNo, Count(*) over() Total,
		aspnetuser.Id,
		aspnetuser.UserName,
		aspnetuser.UserPassword,
		aspnetuser.CreatedDate,
		aspnetuser.DistrictCorporation,
		CONCAT(aspnetuser.DistrictCorporation, ', ', aspnetuser.PoliceStation) AS PoliceStation			
		from AspNetUsers aspnetuser		
		WHERE NOT EXISTS (SELECT * FROM AspNetUserRoles asprole WHERE asprole.UserId = aspnetuser.Id AND asprole.RoleId = @AspNetRoleId)
		
	)

	--select TOP (case @PageSize when -1 then (Select Count(*) from Result) else @PageSize end) * from Result where RowNo > @PageNum order by Result.Id desc


	 select TOP (case @PageSize when -1 then (Select Count(*)from Result) else @PageSize end) * from Result where RowNo > ((@PageNum-1) * @PageSize ) order by Result.CreatedDate desc ,Result.DistrictCorporation asc









END
GO
