USE [FlexDotNetCMS]
GO
/****** Object:  Table [dbo].[EmailLog]    Script Date: 2016-12-19 4:39:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmailLog](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[SenderName] [nvarchar](255) NOT NULL,
	[SenderEmailAddress] [nvarchar](255) NOT NULL,
	[ToEmailAddresses] [nvarchar](max) NOT NULL,
	[FromEmailAddress] [nvarchar](255) NOT NULL,
	[Subject] [nvarchar](255) NOT NULL,
	[Message] [nvarchar](max) NOT NULL,
	[VisitorIP] [nvarchar](255) NOT NULL,
	[RequestUrl] [nvarchar](255) NOT NULL,
	[ServerMessage] [nvarchar](max) NOT NULL,
	[DateCreated] [datetime] NOT NULL,
	[DateLastModified] [datetime] NOT NULL,
 CONSTRAINT [PK_ContactMessages] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Fields]    Script Date: 2016-12-19 4:39:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fields](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[FieldCode] [nvarchar](255) NOT NULL,
	[FieldLabel] [nvarchar](255) NOT NULL,
	[RenderLabelAfterControl] [bit] NOT NULL,
	[AdminControl] [nvarchar](max) NOT NULL,
	[FieldValue] [nvarchar](max) NOT NULL,
	[GetAdminControlValue] [nvarchar](max) NOT NULL,
	[SetAdminControlValue] [nvarchar](max) NOT NULL,
	[OrderIndex] [bigint] NOT NULL,
	[GroupName] [nvarchar](255) NOT NULL,
	[FrontEndLayout] [nvarchar](max) NULL,
	[DateCreated] [datetime] NOT NULL,
	[DateLastModified] [datetime] NOT NULL,
 CONSTRAINT [PK_Fields] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FieldsAssociations]    Script Date: 2016-12-19 4:39:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FieldsAssociations](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[MediaDetailFieldID] [bigint] NOT NULL,
	[AssociatedMediaDetailID] [bigint] NOT NULL,
	[OrderIndex] [int] NOT NULL,
 CONSTRAINT [PK_FieldAssociations] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GlossaryTerms]    Script Date: 2016-12-19 4:39:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GlossaryTerms](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Term] [nvarchar](max) NOT NULL,
	[Definition] [nvarchar](max) NOT NULL,
	[DateCreated] [datetime] NOT NULL,
	[DateLastModified] [datetime] NOT NULL,
 CONSTRAINT [PK_GlossaryTerms] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IPLocationTracker]    Script Date: 2016-12-19 4:39:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IPLocationTracker](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[IPAddress] [nvarchar](255) NOT NULL,
	[Location] [nvarchar](max) NOT NULL,
	[DateCreated] [datetime] NOT NULL,
	[DateLastModified] [datetime] NOT NULL,
 CONSTRAINT [PK_IPLocationTracker] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Languages]    Script Date: 2016-12-19 4:39:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Languages](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[DisplayName] [nvarchar](255) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[UriSegment] [nvarchar](50) NOT NULL,
	[CultureCode] [nvarchar](255) NOT NULL,
	[Description] [nvarchar](255) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[DateCreated] [datetime] NOT NULL,
	[DateLastModified] [datetime] NOT NULL,
 CONSTRAINT [PK_Languages] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [Languages_uq] UNIQUE NONCLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [Languages_uq2] UNIQUE NONCLUSTERED 
(
	[CultureCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UNIQUE_UriSegment] UNIQUE NONCLUSTERED 
(
	[UriSegment] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MasterPages]    Script Date: 2016-12-19 4:39:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MasterPages](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[PathToFile] [nvarchar](255) NOT NULL,
	[MobileTemplate] [nvarchar](255) NOT NULL,
	[UseLayout] [bit] NOT NULL,
	[Layout] [nvarchar](max) NOT NULL,
	[DateCreated] [datetime] NOT NULL,
	[DateLastModified] [datetime] NOT NULL,
 CONSTRAINT [PK_MasterPages] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Media]    Script Date: 2016-12-19 4:39:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Media](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[ParentMediaID] [bigint] NULL,
	[OrderIndex] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MediaComments]    Script Date: 2016-12-19 4:39:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MediaComments](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[Email] [nvarchar](255) NOT NULL,
	[Message] [nvarchar](max) NOT NULL,
	[Status] [nvarchar](255) NOT NULL,
	[DateCreated] [datetime] NOT NULL,
	[DateLastModified] [datetime] NOT NULL,
	[ReplyToCommentID] [bigint] NULL,
	[MediaID] [bigint] NOT NULL,
	[LanguageID] [bigint] NOT NULL,
 CONSTRAINT [PK_Comments] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MediaDetails]    Script Date: 2016-12-19 4:39:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MediaDetails](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[MediaID] [bigint] NOT NULL,
	[Title] [nvarchar](255) NOT NULL,
	[LinkTitle] [nvarchar](255) NOT NULL,
	[UseDirectLink] [bit] NOT NULL,
	[OpenInNewWindow] [bit] NOT NULL,
	[DirectLink] [nvarchar](255) NOT NULL,
	[SectionTitle] [nvarchar](max) NOT NULL,
	[ShortDescription] [nvarchar](500) NOT NULL,
	[MainContent] [nvarchar](max) NOT NULL,
	[MetaKeywords] [nvarchar](500) NOT NULL,
	[MetaDescription] [nvarchar](max) NOT NULL,
	[LanguageID] [bigint] NOT NULL,
	[NumberOfViews] [bigint] NOT NULL,
	[NumberOfStars] [bigint] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[AllowCommenting] [bit] NOT NULL,
	[ExpiryDate] [datetime] NULL,
	[PublishDate] [datetime] NULL,
	[ShowInMenu] [bit] NOT NULL,
	[ShowInSearchResults] [bit] NOT NULL,
	[EnableCaching] [bit] NOT NULL,
	[SefTitle] [nvarchar](255) NULL,
	[Handler] [nvarchar](255) NULL,
	[CachedVirtualPath] [nvarchar](255) NULL,
	[MediaTypeID] [bigint] NOT NULL,
	[HistoryVersionNumber] [int] NOT NULL,
	[HistoryForMediaDetailID] [bigint] NULL,
	[IsDraft] [bit] NOT NULL,
	[CreatedByUserID] [bigint] NOT NULL,
	[LastUpdatedByUserID] [bigint] NOT NULL,
	[CanAddToCart] [bit] NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[QuantityInStock] [bigint] NOT NULL,
	[RecurringTimePeriod] [nvarchar](50) NOT NULL,
	[RedirectToFirstChild] [bit] NOT NULL,
	[DateCreated] [datetime] NOT NULL,
	[DateLastModified] [datetime] NOT NULL,
	[RenderInFooter] [bit] NOT NULL,
	[ForceSSL] [bit] NOT NULL,
	[IsProtected] [bit] NOT NULL,
	[CssClasses] [nvarchar](50) NOT NULL,
	[MasterPageID] [bigint] NULL,
	[MainLayout] [nvarchar](max) NOT NULL,
	[SummaryLayout] [nvarchar](max) NOT NULL,
	[FeaturedLayout] [nvarchar](max) NOT NULL,
	[UseMediaTypeLayouts] [bit] NOT NULL,
	[PathToFile] [nvarchar](255) NOT NULL,
 CONSTRAINT [MediaDetails_pk] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MediaDetailsFields]    Script Date: 2016-12-19 4:39:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MediaDetailsFields](
	[FieldID] [bigint] NOT NULL,
	[MediaDetailID] [bigint] NOT NULL,
	[MediaTypeFieldID] [bigint] NULL,
	[UseMediaTypeFieldFrontEndLayout] [bit] NOT NULL,
 CONSTRAINT [PK_MediaDetailsFields_1] PRIMARY KEY CLUSTERED 
(
	[FieldID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MediaTags]    Script Date: 2016-12-19 4:39:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MediaTags](
	[TagID] [bigint] NOT NULL,
	[MediaID] [bigint] NOT NULL,
	[OrderIndex] [int] NOT NULL,
 CONSTRAINT [PK_MediaTags] PRIMARY KEY CLUSTERED 
(
	[TagID] ASC,
	[MediaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MediaTypeRolesPermissions]    Script Date: 2016-12-19 4:39:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MediaTypeRolesPermissions](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[MediaTypeRoleID] [bigint] NOT NULL,
	[PermissionID] [bigint] NOT NULL,
	[DateCreated] [datetime] NOT NULL,
	[DateLastModified] [datetime] NOT NULL,
 CONSTRAINT [PK_MediaTypeRolesPermissions_1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MediaTypes]    Script Date: 2016-12-19 4:39:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MediaTypes](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[Label] [nvarchar](255) NOT NULL,
	[MediaTypeHandler] [nvarchar](255) NOT NULL,
	[MasterPageID] [bigint] NULL,
	[IsActive] [bit] NOT NULL,
	[ShowInMenu] [bit] NOT NULL,
	[ShowInSearchResults] [bit] NOT NULL,
	[ShowInSiteTree] [bit] NOT NULL,
	[EnableCaching] [bit] NOT NULL,
	[MainLayout] [nvarchar](max) NOT NULL,
	[SummaryLayout] [nvarchar](max) NOT NULL,
	[FeaturedLayout] [nvarchar](max) NOT NULL,
	[UseMediaTypeLayouts] [bit] NOT NULL,
	[DateCreated] [datetime] NOT NULL,
	[DateLastModified] [datetime] NOT NULL,
 CONSTRAINT [MediaType_pk] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MediaTypesChildren]    Script Date: 2016-12-19 4:39:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MediaTypesChildren](
	[MediaTypeID] [bigint] NOT NULL,
	[AllowedChildMediaTypeID] [bigint] NOT NULL,
 CONSTRAINT [PK_AllowedChildMediaTypes] PRIMARY KEY CLUSTERED 
(
	[MediaTypeID] ASC,
	[AllowedChildMediaTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MediaTypesFields]    Script Date: 2016-12-19 4:39:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MediaTypesFields](
	[FieldID] [bigint] NOT NULL,
	[MediaTypeID] [bigint] NOT NULL,
	[Instructions] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_MediaTypesFields_1] PRIMARY KEY CLUSTERED 
(
	[FieldID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MediaTypesRoles]    Script Date: 2016-12-19 4:39:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MediaTypesRoles](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[MediaTypeID] [bigint] NOT NULL,
	[RoleID] [bigint] NOT NULL,
	[DateCreated] [datetime] NOT NULL,
	[DateLastModified] [datetime] NOT NULL,
 CONSTRAINT [PK_MediaTypesRoles_1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Pages]    Script Date: 2016-12-19 4:39:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pages](
	[MediaDetailID] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MediaDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Permissions]    Script Date: 2016-12-19 4:39:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Permissions](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](255) NOT NULL,
	[EnumName] [varchar](255) NOT NULL,
	[Description] [varchar](max) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[DateCreated] [datetime] NOT NULL,
	[DateLastModified] [datetime] NOT NULL,
 CONSTRAINT [PK_Permissions] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Roles]    Script Date: 2016-12-19 4:39:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](255) NOT NULL,
	[EnumName] [varchar](255) NOT NULL,
	[Description] [varchar](350) NULL,
	[IsActive] [bit] NOT NULL,
	[DateCreated] [datetime] NOT NULL,
	[DateLastModified] [datetime] NOT NULL,
 CONSTRAINT [PK__Roles__3214EC2705A3D694] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RolesMediaDetails]    Script Date: 2016-12-19 4:39:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RolesMediaDetails](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[MediaDetailID] [bigint] NOT NULL,
	[RoleID] [bigint] NOT NULL,
	[DateCreated] [datetime] NOT NULL,
	[DateLastModified] [datetime] NOT NULL,
 CONSTRAINT [PK_RolesMediaDetails] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RolesPermissions]    Script Date: 2016-12-19 4:39:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RolesPermissions](
	[RoleID] [bigint] NOT NULL,
	[PermissionID] [bigint] NOT NULL,
 CONSTRAINT [PK_RolesPermissions] PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC,
	[PermissionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RootPages]    Script Date: 2016-12-19 4:39:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RootPages](
	[MediaDetailID] [bigint] NOT NULL,
 CONSTRAINT [PK_HomePages] PRIMARY KEY CLUSTERED 
(
	[MediaDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Settings]    Script Date: 2016-12-19 4:39:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Settings](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[GlobalCodeInHead] [nvarchar](max) NOT NULL,
	[GlobalCodeInBody] [nvarchar](max) NOT NULL,
	[ShoppingCartTax] [decimal](18, 2) NOT NULL,
	[MaxRequestLength] [int] NOT NULL,
	[MaxUploadFileSizePerFile] [int] NOT NULL,
	[SiteOnlineAtDateTime] [datetime] NOT NULL,
	[SiteOfflineAtDateTime] [datetime] NULL,
	[SiteOfflineUrl] [nvarchar](255) NOT NULL,
	[PageNotFoundUrl] [nvarchar](255) NOT NULL,
	[EnableGlossaryTerms] [bit] NOT NULL,
	[OutputCacheDurationInSeconds] [bigint] NOT NULL,
	[DefaultLanguageID] [bigint] NOT NULL,
	[DefaultMasterPageID] [bigint] NOT NULL,
	[DateCreated] [datetime] NOT NULL,
	[DateLastModified] [datetime] NOT NULL,
 CONSTRAINT [PK_Features] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tags]    Script Date: 2016-12-19 4:39:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tags](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[SefTitle] [nvarchar](255) NOT NULL,
	[ThumbnailPath] [nvarchar](255) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[OrderIndex] [int] NOT NULL,
	[DateCreated] [datetime] NOT NULL,
	[DateLastModified] [datetime] NOT NULL,
 CONSTRAINT [PK_Topics] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UrlRedirectRules]    Script Date: 2016-12-19 4:39:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UrlRedirectRules](
	[MediaDetailID] [bigint] NOT NULL,
	[VirtualPathToRedirect] [nvarchar](255) NOT NULL,
	[RedirectToUrl] [nvarchar](255) NOT NULL,
	[Is301Redirect] [bit] NOT NULL,
 CONSTRAINT [PK_UrlRedirectRules] PRIMARY KEY CLUSTERED 
(
	[MediaDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Users]    Script Date: 2016-12-19 4:39:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[ProfilePhoto] [nvarchar](255) NULL,
	[UserName] [nvarchar](255) NOT NULL,
	[Password] [nvarchar](max) NOT NULL,
	[FirstName] [nvarchar](255) NOT NULL,
	[LastName] [nvarchar](255) NOT NULL,
	[EmailAddress] [nvarchar](255) NOT NULL,
	[AfterLoginStartPage] [nvarchar](255) NOT NULL,
	[AuthenticationType] [nvarchar](255) NOT NULL,
	[LastLoggedInAt] [datetime] NULL,
	[IsActive] [bit] NOT NULL,
	[DateCreated] [datetime] NOT NULL,
	[DateLastModified] [datetime] NOT NULL,
 CONSTRAINT [PK__Users__3214EC277B264821] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UsersMediaDetails]    Script Date: 2016-12-19 4:39:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsersMediaDetails](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[UserID] [bigint] NOT NULL,
	[MediaDetailID] [bigint] NOT NULL,
	[PermissionID] [bigint] NOT NULL,
	[DateCreated] [datetime] NOT NULL,
	[DateLastModified] [datetime] NOT NULL,
 CONSTRAINT [PK_UsersMediaDetails_1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UsersRoles]    Script Date: 2016-12-19 4:39:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsersRoles](
	[UserID] [bigint] NOT NULL,
	[RoleID] [bigint] NOT NULL,
 CONSTRAINT [PK__UsersRol__AF27604F2DB1C7EE] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC,
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[WebserviceRequests]    Script Date: 2016-12-19 4:39:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WebserviceRequests](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Url] [nvarchar](max) NOT NULL,
	[UrlReferrer] [nvarchar](max) NOT NULL,
	[QueryString] [nvarchar](max) NOT NULL,
	[Method] [nvarchar](255) NOT NULL,
	[Response] [nvarchar](max) NOT NULL,
	[DateCreated] [datetime] NOT NULL,
	[DateLastModified] [datetime] NOT NULL,
 CONSTRAINT [PK_WebserviceRequests] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Website]    Script Date: 2016-12-19 4:39:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Website](
	[MediaDetailID] [bigint] NOT NULL,
	[CodeInHead] [nvarchar](max) NOT NULL,
	[CodeInBody] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Website] PRIMARY KEY CLUSTERED 
(
	[MediaDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
ALTER TABLE [dbo].[EmailLog] ADD  CONSTRAINT [DF__EmailLog__DateCr__202E7AF5]  DEFAULT (getdate()) FOR [DateCreated]
GO
ALTER TABLE [dbo].[EmailLog] ADD  CONSTRAINT [DF__EmailLog__DateLa__21229F2E]  DEFAULT (getdate()) FOR [DateLastModified]
GO
ALTER TABLE [dbo].[Fields] ADD  CONSTRAINT [DF_Fields_FieldCode]  DEFAULT ('') FOR [FieldCode]
GO
ALTER TABLE [dbo].[Fields] ADD  CONSTRAINT [DF_Fields_RenderLabelAfterControl]  DEFAULT ((0)) FOR [RenderLabelAfterControl]
GO
ALTER TABLE [dbo].[Fields] ADD  CONSTRAINT [DF_Fields_FieldValue]  DEFAULT ('') FOR [FieldValue]
GO
ALTER TABLE [dbo].[Fields] ADD  CONSTRAINT [DF_Fields_ReturnValuePropertyName]  DEFAULT ('') FOR [GetAdminControlValue]
GO
ALTER TABLE [dbo].[Fields] ADD  CONSTRAINT [DF_Fields_SetValueCode]  DEFAULT ('') FOR [SetAdminControlValue]
GO
ALTER TABLE [dbo].[Fields] ADD  CONSTRAINT [DF_Fields_GroupName]  DEFAULT ('Main') FOR [GroupName]
GO
ALTER TABLE [dbo].[Fields] ADD  CONSTRAINT [DF_Fields_FrontEndLayout]  DEFAULT ('') FOR [FrontEndLayout]
GO
ALTER TABLE [dbo].[Fields] ADD  CONSTRAINT [DF_Fields_DateCreated]  DEFAULT (getdate()) FOR [DateCreated]
GO
ALTER TABLE [dbo].[Fields] ADD  CONSTRAINT [DF_Fields_DateLastModified]  DEFAULT (getdate()) FOR [DateLastModified]
GO
ALTER TABLE [dbo].[FieldsAssociations] ADD  CONSTRAINT [DF_FieldsAssociations_OrderIndex]  DEFAULT ((0)) FOR [OrderIndex]
GO
ALTER TABLE [dbo].[GlossaryTerms] ADD  CONSTRAINT [DF_GlossaryTerms_DateCreated]  DEFAULT (getdate()) FOR [DateCreated]
GO
ALTER TABLE [dbo].[GlossaryTerms] ADD  CONSTRAINT [DF_GlossaryTerms_DateLastModified]  DEFAULT (getdate()) FOR [DateLastModified]
GO
ALTER TABLE [dbo].[IPLocationTracker] ADD  CONSTRAINT [DF_IPLocationTracker_IPAddress]  DEFAULT ('') FOR [IPAddress]
GO
ALTER TABLE [dbo].[IPLocationTracker] ADD  CONSTRAINT [DF_IPLocationTracker_Location]  DEFAULT ('') FOR [Location]
GO
ALTER TABLE [dbo].[IPLocationTracker] ADD  CONSTRAINT [DF_IPLocationTracker_DateCreated]  DEFAULT (getdate()) FOR [DateCreated]
GO
ALTER TABLE [dbo].[IPLocationTracker] ADD  CONSTRAINT [DF_IPLocationTracker_DateLastModified]  DEFAULT (getdate()) FOR [DateLastModified]
GO
ALTER TABLE [dbo].[Languages] ADD  CONSTRAINT [DF_Languages_DisplayName]  DEFAULT ('') FOR [DisplayName]
GO
ALTER TABLE [dbo].[Languages] ADD  CONSTRAINT [DF__Languages__IsAct__0F8D3381]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Languages] ADD  CONSTRAINT [DF_Languages_DateCreated]  DEFAULT (getdate()) FOR [DateCreated]
GO
ALTER TABLE [dbo].[Languages] ADD  CONSTRAINT [DF_Languages_DateLastModified]  DEFAULT (getdate()) FOR [DateLastModified]
GO
ALTER TABLE [dbo].[MasterPages] ADD  CONSTRAINT [DF_MasterPages_IsMobileTemplate]  DEFAULT ('') FOR [MobileTemplate]
GO
ALTER TABLE [dbo].[MasterPages] ADD  CONSTRAINT [DF_MasterPages_UseLayout]  DEFAULT ((0)) FOR [UseLayout]
GO
ALTER TABLE [dbo].[MasterPages] ADD  CONSTRAINT [DF_MasterPages_LayoutCode]  DEFAULT ('') FOR [Layout]
GO
ALTER TABLE [dbo].[MasterPages] ADD  CONSTRAINT [DF_MasterPages_DateCreated]  DEFAULT (getdate()) FOR [DateCreated]
GO
ALTER TABLE [dbo].[MasterPages] ADD  CONSTRAINT [DF_MasterPages_DateLastModified]  DEFAULT (getdate()) FOR [DateLastModified]
GO
ALTER TABLE [dbo].[Media] ADD  DEFAULT ((0)) FOR [OrderIndex]
GO
ALTER TABLE [dbo].[MediaComments] ADD  CONSTRAINT [DF__Comments__DateCr__28B8D3FE]  DEFAULT (getdate()) FOR [DateCreated]
GO
ALTER TABLE [dbo].[MediaComments] ADD  CONSTRAINT [DF__Comments__DateLa__29ACF837]  DEFAULT (getdate()) FOR [DateLastModified]
GO
ALTER TABLE [dbo].[MediaDetails] ADD  CONSTRAINT [DF_MediaDetails_UseDirectLink]  DEFAULT ((0)) FOR [UseDirectLink]
GO
ALTER TABLE [dbo].[MediaDetails] ADD  CONSTRAINT [DF_MediaDetails_OpenInNewWindow]  DEFAULT ((0)) FOR [OpenInNewWindow]
GO
ALTER TABLE [dbo].[MediaDetails] ADD  CONSTRAINT [DF_MediaDetails_DirectLinkVirtualPath]  DEFAULT ('') FOR [DirectLink]
GO
ALTER TABLE [dbo].[MediaDetails] ADD  CONSTRAINT [DF_MediaDetails_MetaKeywords]  DEFAULT ('') FOR [MetaKeywords]
GO
ALTER TABLE [dbo].[MediaDetails] ADD  CONSTRAINT [DF_MediaDetails_MetaDescription]  DEFAULT ('') FOR [MetaDescription]
GO
ALTER TABLE [dbo].[MediaDetails] ADD  CONSTRAINT [DF_Media_NumberOfViews]  DEFAULT ((0)) FOR [NumberOfViews]
GO
ALTER TABLE [dbo].[MediaDetails] ADD  CONSTRAINT [DF_Media_NumberOfStars]  DEFAULT ((0)) FOR [NumberOfStars]
GO
ALTER TABLE [dbo].[MediaDetails] ADD  CONSTRAINT [DF_Media_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[MediaDetails] ADD  CONSTRAINT [DF_MediaDetails_EnableCommenting]  DEFAULT ((0)) FOR [AllowCommenting]
GO
ALTER TABLE [dbo].[MediaDetails] ADD  CONSTRAINT [DF__MediaDeta__ShowI__398D8EEE]  DEFAULT ((1)) FOR [ShowInMenu]
GO
ALTER TABLE [dbo].[MediaDetails] ADD  CONSTRAINT [DF_MediaDetails_ShowInSearchResults_1]  DEFAULT ((1)) FOR [ShowInSearchResults]
GO
ALTER TABLE [dbo].[MediaDetails] ADD  CONSTRAINT [DF_MediaDetails_AllowCaching]  DEFAULT ((1)) FOR [EnableCaching]
GO
ALTER TABLE [dbo].[MediaDetails] ADD  CONSTRAINT [DF_MediaDetails_HistoryVersionNumber]  DEFAULT ((0)) FOR [HistoryVersionNumber]
GO
ALTER TABLE [dbo].[MediaDetails] ADD  CONSTRAINT [DF_MediaDetails_IsDraft]  DEFAULT ((0)) FOR [IsDraft]
GO
ALTER TABLE [dbo].[MediaDetails] ADD  CONSTRAINT [DF_MediaDetails_CanAddToShoppingCart]  DEFAULT ((0)) FOR [CanAddToCart]
GO
ALTER TABLE [dbo].[MediaDetails] ADD  CONSTRAINT [DF_MediaDetails_Price]  DEFAULT ((0.0)) FOR [Price]
GO
ALTER TABLE [dbo].[MediaDetails] ADD  CONSTRAINT [DF_MediaDetails_InStock]  DEFAULT ((0)) FOR [QuantityInStock]
GO
ALTER TABLE [dbo].[MediaDetails] ADD  CONSTRAINT [DF_MediaDetails_RecurringTimePeriod]  DEFAULT ('') FOR [RecurringTimePeriod]
GO
ALTER TABLE [dbo].[MediaDetails] ADD  CONSTRAINT [DF_MediaDetails_RedirectToFirstChild_1]  DEFAULT ((0)) FOR [RedirectToFirstChild]
GO
ALTER TABLE [dbo].[MediaDetails] ADD  CONSTRAINT [DF__MediaDeta__DateC__3A81B327]  DEFAULT (getdate()) FOR [DateCreated]
GO
ALTER TABLE [dbo].[MediaDetails] ADD  CONSTRAINT [DF__MediaDeta__DateL__3B75D760]  DEFAULT (getdate()) FOR [DateLastModified]
GO
ALTER TABLE [dbo].[MediaDetails] ADD  CONSTRAINT [DF_MediaDetails_RenderInFooter1]  DEFAULT ((0)) FOR [RenderInFooter]
GO
ALTER TABLE [dbo].[MediaDetails] ADD  CONSTRAINT [DF_MediaDetails_ForceSSL]  DEFAULT ((0)) FOR [ForceSSL]
GO
ALTER TABLE [dbo].[MediaDetails] ADD  CONSTRAINT [DF_MediaDetails_IsProtected]  DEFAULT ((0)) FOR [IsProtected]
GO
ALTER TABLE [dbo].[MediaDetails] ADD  CONSTRAINT [DF_MediaDetails_CssClasses]  DEFAULT ('') FOR [CssClasses]
GO
ALTER TABLE [dbo].[MediaDetails] ADD  CONSTRAINT [DF_MediaDetails_CustomCode]  DEFAULT ('') FOR [MainLayout]
GO
ALTER TABLE [dbo].[MediaDetails] ADD  CONSTRAINT [DF_MediaDetails_SummaryLayout]  DEFAULT ('') FOR [SummaryLayout]
GO
ALTER TABLE [dbo].[MediaDetails] ADD  CONSTRAINT [DF_MediaDetails_SummaryLayout1]  DEFAULT ('') FOR [FeaturedLayout]
GO
ALTER TABLE [dbo].[MediaDetails] ADD  CONSTRAINT [DF_MediaDetails_UseMediaTypeLayouts]  DEFAULT ((0)) FOR [UseMediaTypeLayouts]
GO
ALTER TABLE [dbo].[MediaDetails] ADD  CONSTRAINT [DF_MediaDetails_PathToFile]  DEFAULT ('') FOR [PathToFile]
GO
ALTER TABLE [dbo].[MediaDetailsFields] ADD  CONSTRAINT [DF_MediaDetailsFields_UseMediaTypeFieldFrontEndLayout]  DEFAULT ((0)) FOR [UseMediaTypeFieldFrontEndLayout]
GO
ALTER TABLE [dbo].[MediaTags] ADD  CONSTRAINT [DF_MediaTags_OrderIndex]  DEFAULT ((0)) FOR [OrderIndex]
GO
ALTER TABLE [dbo].[MediaTypeRolesPermissions] ADD  CONSTRAINT [DF_MediaTypeRolesPermissions_DateCreated]  DEFAULT (getdate()) FOR [DateCreated]
GO
ALTER TABLE [dbo].[MediaTypeRolesPermissions] ADD  CONSTRAINT [DF_MediaTypeRolesPermissions_DateLastModified]  DEFAULT (getdate()) FOR [DateLastModified]
GO
ALTER TABLE [dbo].[MediaTypes] ADD  CONSTRAINT [DF_MediaTypes_ShowInSearchResults_1]  DEFAULT ((1)) FOR [ShowInSearchResults]
GO
ALTER TABLE [dbo].[MediaTypes] ADD  CONSTRAINT [DF_MediaTypes_ShowInSiteTree]  DEFAULT ((1)) FOR [ShowInSiteTree]
GO
ALTER TABLE [dbo].[MediaTypes] ADD  CONSTRAINT [DF_MediaTypes_EnableCaching]  DEFAULT ((1)) FOR [EnableCaching]
GO
ALTER TABLE [dbo].[MediaTypes] ADD  CONSTRAINT [DF_MediaTypes_CustomCode]  DEFAULT ('') FOR [MainLayout]
GO
ALTER TABLE [dbo].[MediaTypes] ADD  CONSTRAINT [DF_MediaTypes_SummaryLayout]  DEFAULT ('') FOR [SummaryLayout]
GO
ALTER TABLE [dbo].[MediaTypes] ADD  CONSTRAINT [DF_MediaTypes_SummaryLayout1]  DEFAULT ('') FOR [FeaturedLayout]
GO
ALTER TABLE [dbo].[MediaTypes] ADD  CONSTRAINT [DF_MediaTypes_UseMediaTypeLayouts]  DEFAULT ((0)) FOR [UseMediaTypeLayouts]
GO
ALTER TABLE [dbo].[MediaTypesRoles] ADD  CONSTRAINT [DF_MediaTypesRoles_DateCreated]  DEFAULT (getdate()) FOR [DateCreated]
GO
ALTER TABLE [dbo].[MediaTypesRoles] ADD  CONSTRAINT [DF_MediaTypesRoles_DateLastModified]  DEFAULT (getdate()) FOR [DateLastModified]
GO
ALTER TABLE [dbo].[Permissions] ADD  CONSTRAINT [DF_Permissions_DateCreated]  DEFAULT (getdate()) FOR [DateCreated]
GO
ALTER TABLE [dbo].[Permissions] ADD  CONSTRAINT [DF_Permissions_DateLastModified]  DEFAULT (getdate()) FOR [DateLastModified]
GO
ALTER TABLE [dbo].[Roles] ADD  CONSTRAINT [DF_Roles_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Roles] ADD  CONSTRAINT [DF__Roles__DateCreat__078C1F06]  DEFAULT (getdate()) FOR [DateCreated]
GO
ALTER TABLE [dbo].[Roles] ADD  CONSTRAINT [DF__Roles__DateLastM__0880433F]  DEFAULT (getdate()) FOR [DateLastModified]
GO
ALTER TABLE [dbo].[RolesMediaDetails] ADD  CONSTRAINT [DF_RolesMediaDetails_DateCreated]  DEFAULT (getdate()) FOR [DateCreated]
GO
ALTER TABLE [dbo].[RolesMediaDetails] ADD  CONSTRAINT [DF_RolesMediaDetails_DateLastModified]  DEFAULT (getdate()) FOR [DateLastModified]
GO
ALTER TABLE [dbo].[Settings] ADD  CONSTRAINT [DF_Settings_GlobalCodeInHead]  DEFAULT ('') FOR [GlobalCodeInHead]
GO
ALTER TABLE [dbo].[Settings] ADD  CONSTRAINT [DF_Settings_GlobalCodeInBody]  DEFAULT ('') FOR [GlobalCodeInBody]
GO
ALTER TABLE [dbo].[Settings] ADD  CONSTRAINT [DF_Settings_ShoppingCartTax]  DEFAULT ((0.00)) FOR [ShoppingCartTax]
GO
ALTER TABLE [dbo].[Settings] ADD  CONSTRAINT [DF_Settings_MaxRequestLength]  DEFAULT ((100000)) FOR [MaxRequestLength]
GO
ALTER TABLE [dbo].[Settings] ADD  CONSTRAINT [DF_Settings_MaxUploadFileSizePerFile]  DEFAULT ((20000)) FOR [MaxUploadFileSizePerFile]
GO
ALTER TABLE [dbo].[Settings] ADD  CONSTRAINT [DF_Settings_SiteOnlineAtDateTime]  DEFAULT (getdate()) FOR [SiteOnlineAtDateTime]
GO
ALTER TABLE [dbo].[Settings] ADD  CONSTRAINT [DF_Settings_SiteOfflineUrl]  DEFAULT ('') FOR [SiteOfflineUrl]
GO
ALTER TABLE [dbo].[Settings] ADD  CONSTRAINT [DF_Settings_PageNotFoundUrl]  DEFAULT ('') FOR [PageNotFoundUrl]
GO
ALTER TABLE [dbo].[Settings] ADD  CONSTRAINT [DF_Settings_EnableGlossaryTerms]  DEFAULT ((0)) FOR [EnableGlossaryTerms]
GO
ALTER TABLE [dbo].[Settings] ADD  CONSTRAINT [DF_Settings_OutputCacheDurationInSeconds]  DEFAULT ((60)) FOR [OutputCacheDurationInSeconds]
GO
ALTER TABLE [dbo].[Settings] ADD  CONSTRAINT [DF_Features_DateCreated]  DEFAULT (getdate()) FOR [DateCreated]
GO
ALTER TABLE [dbo].[Settings] ADD  CONSTRAINT [DF_Features_DateLastModified]  DEFAULT (getdate()) FOR [DateLastModified]
GO
ALTER TABLE [dbo].[Tags] ADD  CONSTRAINT [DF_Tags_ThumbnailPath]  DEFAULT ('') FOR [ThumbnailPath]
GO
ALTER TABLE [dbo].[Tags] ADD  CONSTRAINT [DF_Tags_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Tags] ADD  CONSTRAINT [DF_Topics_DateCreated]  DEFAULT (getdate()) FOR [DateCreated]
GO
ALTER TABLE [dbo].[Tags] ADD  CONSTRAINT [DF_Topics_DateLastModified]  DEFAULT (getdate()) FOR [DateLastModified]
GO
ALTER TABLE [dbo].[UrlRedirectRules] ADD  CONSTRAINT [DF_UrlRedirectRules_Is301Redirect]  DEFAULT ((0)) FOR [Is301Redirect]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_FirstName]  DEFAULT ('') FOR [FirstName]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_LastName]  DEFAULT ('') FOR [LastName]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_AfterLoginStartPage]  DEFAULT ('') FOR [AfterLoginStartPage]
GO
ALTER TABLE [dbo].[UsersMediaDetails] ADD  CONSTRAINT [DF_UsersMediaDetails_DateCreated]  DEFAULT (getdate()) FOR [DateCreated]
GO
ALTER TABLE [dbo].[UsersMediaDetails] ADD  CONSTRAINT [DF_UsersMediaDetails_DateLastModified]  DEFAULT (getdate()) FOR [DateLastModified]
GO
ALTER TABLE [dbo].[WebserviceRequests] ADD  CONSTRAINT [DF_WebserviceRequests_UrlReferrer]  DEFAULT ('') FOR [UrlReferrer]
GO
ALTER TABLE [dbo].[WebserviceRequests] ADD  CONSTRAINT [DF_WebserviceRequests_Response]  DEFAULT ('') FOR [Response]
GO
ALTER TABLE [dbo].[WebserviceRequests] ADD  CONSTRAINT [DF_WebserviceRequests_DateCreated]  DEFAULT (getdate()) FOR [DateCreated]
GO
ALTER TABLE [dbo].[WebserviceRequests] ADD  CONSTRAINT [DF_WebserviceRequests_DateLastModified]  DEFAULT (getdate()) FOR [DateLastModified]
GO
ALTER TABLE [dbo].[Website] ADD  CONSTRAINT [DF_Website_CodeInHead]  DEFAULT ('') FOR [CodeInHead]
GO
ALTER TABLE [dbo].[Website] ADD  CONSTRAINT [DF_Website_GoogleAnalyticsTrackingKey]  DEFAULT ('') FOR [CodeInBody]
GO
ALTER TABLE [dbo].[FieldsAssociations]  WITH CHECK ADD  CONSTRAINT [FK_FieldAssociations_MediaDetails] FOREIGN KEY([AssociatedMediaDetailID])
REFERENCES [dbo].[MediaDetails] ([ID])
GO
ALTER TABLE [dbo].[FieldsAssociations] CHECK CONSTRAINT [FK_FieldAssociations_MediaDetails]
GO
ALTER TABLE [dbo].[FieldsAssociations]  WITH CHECK ADD  CONSTRAINT [FK_FieldsAssociations_MediaDetailsFields] FOREIGN KEY([MediaDetailFieldID])
REFERENCES [dbo].[MediaDetailsFields] ([FieldID])
GO
ALTER TABLE [dbo].[FieldsAssociations] CHECK CONSTRAINT [FK_FieldsAssociations_MediaDetailsFields]
GO
ALTER TABLE [dbo].[Media]  WITH NOCHECK ADD  CONSTRAINT [FK_Media_ParentMediaID] FOREIGN KEY([ParentMediaID])
REFERENCES [dbo].[Media] ([ID])
GO
ALTER TABLE [dbo].[Media] CHECK CONSTRAINT [FK_Media_ParentMediaID]
GO
ALTER TABLE [dbo].[MediaComments]  WITH CHECK ADD  CONSTRAINT [FK_Comments_ReplyToCommentID] FOREIGN KEY([ReplyToCommentID])
REFERENCES [dbo].[MediaComments] ([ID])
GO
ALTER TABLE [dbo].[MediaComments] CHECK CONSTRAINT [FK_Comments_ReplyToCommentID]
GO
ALTER TABLE [dbo].[MediaComments]  WITH CHECK ADD  CONSTRAINT [FK_MediaComments_Languages] FOREIGN KEY([LanguageID])
REFERENCES [dbo].[Languages] ([ID])
GO
ALTER TABLE [dbo].[MediaComments] CHECK CONSTRAINT [FK_MediaComments_Languages]
GO
ALTER TABLE [dbo].[MediaComments]  WITH CHECK ADD  CONSTRAINT [FK_MediaComments_Media] FOREIGN KEY([MediaID])
REFERENCES [dbo].[Media] ([ID])
GO
ALTER TABLE [dbo].[MediaComments] CHECK CONSTRAINT [FK_MediaComments_Media]
GO
ALTER TABLE [dbo].[MediaDetails]  WITH CHECK ADD  CONSTRAINT [FK_MediaDetails_CreatedByUserID] FOREIGN KEY([CreatedByUserID])
REFERENCES [dbo].[Users] ([ID])
GO
ALTER TABLE [dbo].[MediaDetails] CHECK CONSTRAINT [FK_MediaDetails_CreatedByUserID]
GO
ALTER TABLE [dbo].[MediaDetails]  WITH CHECK ADD  CONSTRAINT [FK_MediaDetails_HistoryForMediaDetailID] FOREIGN KEY([HistoryForMediaDetailID])
REFERENCES [dbo].[MediaDetails] ([ID])
GO
ALTER TABLE [dbo].[MediaDetails] CHECK CONSTRAINT [FK_MediaDetails_HistoryForMediaDetailID]
GO
ALTER TABLE [dbo].[MediaDetails]  WITH CHECK ADD  CONSTRAINT [FK_MediaDetails_LanguageID_Languages_ID] FOREIGN KEY([LanguageID])
REFERENCES [dbo].[Languages] ([ID])
GO
ALTER TABLE [dbo].[MediaDetails] CHECK CONSTRAINT [FK_MediaDetails_LanguageID_Languages_ID]
GO
ALTER TABLE [dbo].[MediaDetails]  WITH CHECK ADD  CONSTRAINT [FK_MediaDetails_LastUpdatedByUserID] FOREIGN KEY([LastUpdatedByUserID])
REFERENCES [dbo].[Users] ([ID])
GO
ALTER TABLE [dbo].[MediaDetails] CHECK CONSTRAINT [FK_MediaDetails_LastUpdatedByUserID]
GO
ALTER TABLE [dbo].[MediaDetails]  WITH CHECK ADD  CONSTRAINT [FK_MediaDetails_MasterPage] FOREIGN KEY([MasterPageID])
REFERENCES [dbo].[MasterPages] ([ID])
GO
ALTER TABLE [dbo].[MediaDetails] CHECK CONSTRAINT [FK_MediaDetails_MasterPage]
GO
ALTER TABLE [dbo].[MediaDetails]  WITH CHECK ADD  CONSTRAINT [FK_MediaDetails_MediaID_Media_ID] FOREIGN KEY([MediaID])
REFERENCES [dbo].[Media] ([ID])
GO
ALTER TABLE [dbo].[MediaDetails] CHECK CONSTRAINT [FK_MediaDetails_MediaID_Media_ID]
GO
ALTER TABLE [dbo].[MediaDetails]  WITH CHECK ADD  CONSTRAINT [FK_MediaDetails_MediaTypeID_MediaType_ID] FOREIGN KEY([MediaTypeID])
REFERENCES [dbo].[MediaTypes] ([ID])
GO
ALTER TABLE [dbo].[MediaDetails] CHECK CONSTRAINT [FK_MediaDetails_MediaTypeID_MediaType_ID]
GO
ALTER TABLE [dbo].[MediaDetailsFields]  WITH CHECK ADD  CONSTRAINT [FK_MediaDetailFields_MediaDetails] FOREIGN KEY([MediaDetailID])
REFERENCES [dbo].[MediaDetails] ([ID])
GO
ALTER TABLE [dbo].[MediaDetailsFields] CHECK CONSTRAINT [FK_MediaDetailFields_MediaDetails]
GO
ALTER TABLE [dbo].[MediaDetailsFields]  WITH CHECK ADD  CONSTRAINT [FK_MediaDetailsFields_Fields] FOREIGN KEY([FieldID])
REFERENCES [dbo].[Fields] ([ID])
GO
ALTER TABLE [dbo].[MediaDetailsFields] CHECK CONSTRAINT [FK_MediaDetailsFields_Fields]
GO
ALTER TABLE [dbo].[MediaDetailsFields]  WITH CHECK ADD  CONSTRAINT [FK_MediaDetailsFields_MediaTypesFields] FOREIGN KEY([MediaTypeFieldID])
REFERENCES [dbo].[MediaTypesFields] ([FieldID])
GO
ALTER TABLE [dbo].[MediaDetailsFields] CHECK CONSTRAINT [FK_MediaDetailsFields_MediaTypesFields]
GO
ALTER TABLE [dbo].[MediaTags]  WITH CHECK ADD  CONSTRAINT [FK_MediaTags_MediaID_Media_ID] FOREIGN KEY([MediaID])
REFERENCES [dbo].[Media] ([ID])
GO
ALTER TABLE [dbo].[MediaTags] CHECK CONSTRAINT [FK_MediaTags_MediaID_Media_ID]
GO
ALTER TABLE [dbo].[MediaTags]  WITH CHECK ADD  CONSTRAINT [FK_MediaTags_TagID_Tags_ID] FOREIGN KEY([TagID])
REFERENCES [dbo].[Tags] ([ID])
GO
ALTER TABLE [dbo].[MediaTags] CHECK CONSTRAINT [FK_MediaTags_TagID_Tags_ID]
GO
ALTER TABLE [dbo].[MediaTypeRolesPermissions]  WITH CHECK ADD  CONSTRAINT [FK_MediaTypeRolesPermissions_MediaTypeRolesPermissionID] FOREIGN KEY([PermissionID])
REFERENCES [dbo].[Permissions] ([ID])
GO
ALTER TABLE [dbo].[MediaTypeRolesPermissions] CHECK CONSTRAINT [FK_MediaTypeRolesPermissions_MediaTypeRolesPermissionID]
GO
ALTER TABLE [dbo].[MediaTypeRolesPermissions]  WITH CHECK ADD  CONSTRAINT [FK_MediaTypeRolesPermissions_MediaTypesRoleID] FOREIGN KEY([MediaTypeRoleID])
REFERENCES [dbo].[MediaTypesRoles] ([ID])
GO
ALTER TABLE [dbo].[MediaTypeRolesPermissions] CHECK CONSTRAINT [FK_MediaTypeRolesPermissions_MediaTypesRoleID]
GO
ALTER TABLE [dbo].[MediaTypes]  WITH CHECK ADD  CONSTRAINT [FK_MediaTypes_MasterPages] FOREIGN KEY([MasterPageID])
REFERENCES [dbo].[MasterPages] ([ID])
GO
ALTER TABLE [dbo].[MediaTypes] CHECK CONSTRAINT [FK_MediaTypes_MasterPages]
GO
ALTER TABLE [dbo].[MediaTypesChildren]  WITH CHECK ADD  CONSTRAINT [FK_MediaTypesChildren_AllowedChildMediaTypeID] FOREIGN KEY([AllowedChildMediaTypeID])
REFERENCES [dbo].[MediaTypes] ([ID])
GO
ALTER TABLE [dbo].[MediaTypesChildren] CHECK CONSTRAINT [FK_MediaTypesChildren_AllowedChildMediaTypeID]
GO
ALTER TABLE [dbo].[MediaTypesChildren]  WITH CHECK ADD  CONSTRAINT [FK_MediaTypesChildren_MediaTypeID] FOREIGN KEY([MediaTypeID])
REFERENCES [dbo].[MediaTypes] ([ID])
GO
ALTER TABLE [dbo].[MediaTypesChildren] CHECK CONSTRAINT [FK_MediaTypesChildren_MediaTypeID]
GO
ALTER TABLE [dbo].[MediaTypesFields]  WITH CHECK ADD  CONSTRAINT [FK_MediaTypesFields_Fields] FOREIGN KEY([FieldID])
REFERENCES [dbo].[Fields] ([ID])
GO
ALTER TABLE [dbo].[MediaTypesFields] CHECK CONSTRAINT [FK_MediaTypesFields_Fields]
GO
ALTER TABLE [dbo].[MediaTypesFields]  WITH CHECK ADD  CONSTRAINT [FK_MediaTypesFields_MediaTypes] FOREIGN KEY([MediaTypeID])
REFERENCES [dbo].[MediaTypes] ([ID])
GO
ALTER TABLE [dbo].[MediaTypesFields] CHECK CONSTRAINT [FK_MediaTypesFields_MediaTypes]
GO
ALTER TABLE [dbo].[MediaTypesRoles]  WITH CHECK ADD  CONSTRAINT [FK_MediaTypesRoles_MediaTypeID] FOREIGN KEY([MediaTypeID])
REFERENCES [dbo].[MediaTypes] ([ID])
GO
ALTER TABLE [dbo].[MediaTypesRoles] CHECK CONSTRAINT [FK_MediaTypesRoles_MediaTypeID]
GO
ALTER TABLE [dbo].[MediaTypesRoles]  WITH CHECK ADD  CONSTRAINT [FK_MediaTypesRoles_Roles] FOREIGN KEY([RoleID])
REFERENCES [dbo].[Roles] ([ID])
GO
ALTER TABLE [dbo].[MediaTypesRoles] CHECK CONSTRAINT [FK_MediaTypesRoles_Roles]
GO
ALTER TABLE [dbo].[Pages]  WITH CHECK ADD  CONSTRAINT [FK_Pages_MediaDetailID_MediaDetails_ID] FOREIGN KEY([MediaDetailID])
REFERENCES [dbo].[MediaDetails] ([ID])
GO
ALTER TABLE [dbo].[Pages] CHECK CONSTRAINT [FK_Pages_MediaDetailID_MediaDetails_ID]
GO
ALTER TABLE [dbo].[RolesMediaDetails]  WITH CHECK ADD  CONSTRAINT [FK_RolesMediaDetails_MediaDetailID] FOREIGN KEY([MediaDetailID])
REFERENCES [dbo].[MediaDetails] ([ID])
GO
ALTER TABLE [dbo].[RolesMediaDetails] CHECK CONSTRAINT [FK_RolesMediaDetails_MediaDetailID]
GO
ALTER TABLE [dbo].[RolesMediaDetails]  WITH CHECK ADD  CONSTRAINT [FK_RolesMediaDetails_RoleID] FOREIGN KEY([RoleID])
REFERENCES [dbo].[Roles] ([ID])
GO
ALTER TABLE [dbo].[RolesMediaDetails] CHECK CONSTRAINT [FK_RolesMediaDetails_RoleID]
GO
ALTER TABLE [dbo].[RolesPermissions]  WITH CHECK ADD  CONSTRAINT [FK_RolesPermissions_PermissionID] FOREIGN KEY([PermissionID])
REFERENCES [dbo].[Permissions] ([ID])
GO
ALTER TABLE [dbo].[RolesPermissions] CHECK CONSTRAINT [FK_RolesPermissions_PermissionID]
GO
ALTER TABLE [dbo].[RolesPermissions]  WITH CHECK ADD  CONSTRAINT [FK_RolesPermissions_RolesID] FOREIGN KEY([RoleID])
REFERENCES [dbo].[Roles] ([ID])
GO
ALTER TABLE [dbo].[RolesPermissions] CHECK CONSTRAINT [FK_RolesPermissions_RolesID]
GO
ALTER TABLE [dbo].[RootPages]  WITH CHECK ADD  CONSTRAINT [FK_RootPages_MediaDetails] FOREIGN KEY([MediaDetailID])
REFERENCES [dbo].[MediaDetails] ([ID])
GO
ALTER TABLE [dbo].[RootPages] CHECK CONSTRAINT [FK_RootPages_MediaDetails]
GO
ALTER TABLE [dbo].[Settings]  WITH CHECK ADD  CONSTRAINT [FK_Settings_Languages] FOREIGN KEY([DefaultLanguageID])
REFERENCES [dbo].[Languages] ([ID])
GO
ALTER TABLE [dbo].[Settings] CHECK CONSTRAINT [FK_Settings_Languages]
GO
ALTER TABLE [dbo].[Settings]  WITH CHECK ADD  CONSTRAINT [FK_Settings_MasterPages] FOREIGN KEY([DefaultMasterPageID])
REFERENCES [dbo].[MasterPages] ([ID])
GO
ALTER TABLE [dbo].[Settings] CHECK CONSTRAINT [FK_Settings_MasterPages]
GO
ALTER TABLE [dbo].[UrlRedirectRules]  WITH CHECK ADD  CONSTRAINT [FK_UrlRedirectRules_MediaDetails] FOREIGN KEY([MediaDetailID])
REFERENCES [dbo].[MediaDetails] ([ID])
GO
ALTER TABLE [dbo].[UrlRedirectRules] CHECK CONSTRAINT [FK_UrlRedirectRules_MediaDetails]
GO
ALTER TABLE [dbo].[UsersMediaDetails]  WITH CHECK ADD  CONSTRAINT [FK_UsersMediaDetails_MediaDetailID] FOREIGN KEY([MediaDetailID])
REFERENCES [dbo].[MediaDetails] ([ID])
GO
ALTER TABLE [dbo].[UsersMediaDetails] CHECK CONSTRAINT [FK_UsersMediaDetails_MediaDetailID]
GO
ALTER TABLE [dbo].[UsersMediaDetails]  WITH CHECK ADD  CONSTRAINT [FK_UsersMediaDetails_PermissionID] FOREIGN KEY([PermissionID])
REFERENCES [dbo].[Permissions] ([ID])
GO
ALTER TABLE [dbo].[UsersMediaDetails] CHECK CONSTRAINT [FK_UsersMediaDetails_PermissionID]
GO
ALTER TABLE [dbo].[UsersMediaDetails]  WITH CHECK ADD  CONSTRAINT [FK_UsersMediaDetails_UserID] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([ID])
GO
ALTER TABLE [dbo].[UsersMediaDetails] CHECK CONSTRAINT [FK_UsersMediaDetails_UserID]
GO
ALTER TABLE [dbo].[UsersRoles]  WITH CHECK ADD  CONSTRAINT [FK_UsersRoles_RoleID_Roles_ID] FOREIGN KEY([RoleID])
REFERENCES [dbo].[Roles] ([ID])
GO
ALTER TABLE [dbo].[UsersRoles] CHECK CONSTRAINT [FK_UsersRoles_RoleID_Roles_ID]
GO
ALTER TABLE [dbo].[UsersRoles]  WITH CHECK ADD  CONSTRAINT [FK_UsersRoles_UserID_Users_ID] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([ID])
GO
ALTER TABLE [dbo].[UsersRoles] CHECK CONSTRAINT [FK_UsersRoles_UserID_Users_ID]
GO
ALTER TABLE [dbo].[Website]  WITH CHECK ADD  CONSTRAINT [FK_Website_MediaDetails] FOREIGN KEY([MediaDetailID])
REFERENCES [dbo].[MediaDetails] ([ID])
GO
ALTER TABLE [dbo].[Website] CHECK CONSTRAINT [FK_Website_MediaDetails]
GO
