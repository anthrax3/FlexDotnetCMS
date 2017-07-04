USE [FlexDotNetCMS]
GO
ALTER TABLE [dbo].[Website] DROP CONSTRAINT [FK_Website_MediaDetails]
GO
ALTER TABLE [dbo].[UsersRoles] DROP CONSTRAINT [FK_UsersRoles_UserID_Users_ID]
GO
ALTER TABLE [dbo].[UsersRoles] DROP CONSTRAINT [FK_UsersRoles_RoleID_Roles_ID]
GO
ALTER TABLE [dbo].[UsersMedias] DROP CONSTRAINT [FK_UsersMediaDetails_PermissionID]
GO
ALTER TABLE [dbo].[UsersMedias] DROP CONSTRAINT [FK_UsersMedia_UserID]
GO
ALTER TABLE [dbo].[UsersMedias] DROP CONSTRAINT [FK_UsersMedia_Media]
GO
ALTER TABLE [dbo].[UrlRedirectRules] DROP CONSTRAINT [FK_UrlRedirectRules_MediaDetails]
GO
ALTER TABLE [dbo].[Settings] DROP CONSTRAINT [FK_Settings_MasterPages]
GO
ALTER TABLE [dbo].[Settings] DROP CONSTRAINT [FK_Settings_Languages]
GO
ALTER TABLE [dbo].[RootPages] DROP CONSTRAINT [FK_RootPages_MediaDetails]
GO
ALTER TABLE [dbo].[RolesPermissions] DROP CONSTRAINT [FK_RolesPermissions_RolesID]
GO
ALTER TABLE [dbo].[RolesPermissions] DROP CONSTRAINT [FK_RolesPermissions_PermissionID]
GO
ALTER TABLE [dbo].[RolesMedias] DROP CONSTRAINT [FK_RolesMedia_RoleID]
GO
ALTER TABLE [dbo].[RolesMedias] DROP CONSTRAINT [FK_RolesMedia_Media]
GO
ALTER TABLE [dbo].[Pages] DROP CONSTRAINT [FK_Pages_MediaDetailID_MediaDetails_ID]
GO
ALTER TABLE [dbo].[MediaTypesRoles] DROP CONSTRAINT [FK_MediaTypesRoles_Roles]
GO
ALTER TABLE [dbo].[MediaTypesRoles] DROP CONSTRAINT [FK_MediaTypesRoles_MediaTypeID]
GO
ALTER TABLE [dbo].[MediaTypesFields] DROP CONSTRAINT [FK_MediaTypesFields_MediaTypes]
GO
ALTER TABLE [dbo].[MediaTypesFields] DROP CONSTRAINT [FK_MediaTypesFields_Fields]
GO
ALTER TABLE [dbo].[MediaTypesChildren] DROP CONSTRAINT [FK_MediaTypesChildren_MediaTypeID]
GO
ALTER TABLE [dbo].[MediaTypesChildren] DROP CONSTRAINT [FK_MediaTypesChildren_AllowedChildMediaTypeID]
GO
ALTER TABLE [dbo].[MediaTypes] DROP CONSTRAINT [FK_MediaTypes_MasterPages]
GO
ALTER TABLE [dbo].[MediaTypeRolesPermissions] DROP CONSTRAINT [FK_MediaTypeRolesPermissions_MediaTypesRoleID]
GO
ALTER TABLE [dbo].[MediaTypeRolesPermissions] DROP CONSTRAINT [FK_MediaTypeRolesPermissions_MediaTypeRolesPermissionID]
GO
ALTER TABLE [dbo].[MediaTags] DROP CONSTRAINT [FK_MediaTags_TagID_Tags_ID]
GO
ALTER TABLE [dbo].[MediaTags] DROP CONSTRAINT [FK_MediaTags_MediaID_Media_ID]
GO
ALTER TABLE [dbo].[MediaDetailsFields] DROP CONSTRAINT [FK_MediaDetailsFields_MediaTypesFields]
GO
ALTER TABLE [dbo].[MediaDetailsFields] DROP CONSTRAINT [FK_MediaDetailsFields_Fields]
GO
ALTER TABLE [dbo].[MediaDetailsFields] DROP CONSTRAINT [FK_MediaDetailFields_MediaDetails]
GO
ALTER TABLE [dbo].[MediaDetails] DROP CONSTRAINT [FK_MediaDetails_MediaTypeID_MediaType_ID]
GO
ALTER TABLE [dbo].[MediaDetails] DROP CONSTRAINT [FK_MediaDetails_MediaID_Media_ID]
GO
ALTER TABLE [dbo].[MediaDetails] DROP CONSTRAINT [FK_MediaDetails_MasterPage]
GO
ALTER TABLE [dbo].[MediaDetails] DROP CONSTRAINT [FK_MediaDetails_LastUpdatedByUserID]
GO
ALTER TABLE [dbo].[MediaDetails] DROP CONSTRAINT [FK_MediaDetails_LanguageID_Languages_ID]
GO
ALTER TABLE [dbo].[MediaDetails] DROP CONSTRAINT [FK_MediaDetails_HistoryForMediaDetailID]
GO
ALTER TABLE [dbo].[MediaDetails] DROP CONSTRAINT [FK_MediaDetails_CreatedByUserID]
GO
ALTER TABLE [dbo].[MediaComments] DROP CONSTRAINT [FK_MediaComments_Media]
GO
ALTER TABLE [dbo].[MediaComments] DROP CONSTRAINT [FK_MediaComments_Languages]
GO
ALTER TABLE [dbo].[MediaComments] DROP CONSTRAINT [FK_Comments_ReplyToCommentID]
GO
ALTER TABLE [dbo].[Media] DROP CONSTRAINT [FK_Media_ParentMediaID]
GO
ALTER TABLE [dbo].[FieldsAssociations] DROP CONSTRAINT [FK_FieldsAssociations_MediaDetailsFields]
GO
ALTER TABLE [dbo].[FieldsAssociations] DROP CONSTRAINT [FK_FieldAssociations_MediaDetails]
GO
ALTER TABLE [dbo].[Website] DROP CONSTRAINT [DF_Website_GoogleAnalyticsTrackingKey]
GO
ALTER TABLE [dbo].[Website] DROP CONSTRAINT [DF_Website_CodeInHead]
GO
ALTER TABLE [dbo].[WebserviceRequests] DROP CONSTRAINT [DF_WebserviceRequests_DateLastModified]
GO
ALTER TABLE [dbo].[WebserviceRequests] DROP CONSTRAINT [DF_WebserviceRequests_DateCreated]
GO
ALTER TABLE [dbo].[WebserviceRequests] DROP CONSTRAINT [DF_WebserviceRequests_Response]
GO
ALTER TABLE [dbo].[WebserviceRequests] DROP CONSTRAINT [DF_WebserviceRequests_UrlReferrer]
GO
ALTER TABLE [dbo].[UsersMedias] DROP CONSTRAINT [DF_UsersMediaDetails_DateLastModified]
GO
ALTER TABLE [dbo].[UsersMedias] DROP CONSTRAINT [DF_UsersMediaDetails_DateCreated]
GO
ALTER TABLE [dbo].[Users] DROP CONSTRAINT [DF_Users_AfterLoginStartPage]
GO
ALTER TABLE [dbo].[Users] DROP CONSTRAINT [DF_Users_LastName]
GO
ALTER TABLE [dbo].[Users] DROP CONSTRAINT [DF_Users_FirstName]
GO
ALTER TABLE [dbo].[UrlRedirectRules] DROP CONSTRAINT [DF_UrlRedirectRules_Is301Redirect]
GO
ALTER TABLE [dbo].[Tags] DROP CONSTRAINT [DF_Topics_DateLastModified]
GO
ALTER TABLE [dbo].[Tags] DROP CONSTRAINT [DF_Topics_DateCreated]
GO
ALTER TABLE [dbo].[Tags] DROP CONSTRAINT [DF_Tags_IsActive]
GO
ALTER TABLE [dbo].[Tags] DROP CONSTRAINT [DF_Tags_ThumbnailPath]
GO
ALTER TABLE [dbo].[Settings] DROP CONSTRAINT [DF_Features_DateLastModified]
GO
ALTER TABLE [dbo].[Settings] DROP CONSTRAINT [DF_Features_DateCreated]
GO
ALTER TABLE [dbo].[Settings] DROP CONSTRAINT [DF_Settings_OutputCacheDurationInSeconds]
GO
ALTER TABLE [dbo].[Settings] DROP CONSTRAINT [DF_Settings_EnableGlossaryTerms]
GO
ALTER TABLE [dbo].[Settings] DROP CONSTRAINT [DF_Settings_PageNotFoundUrl]
GO
ALTER TABLE [dbo].[Settings] DROP CONSTRAINT [DF_Settings_SiteOfflineUrl]
GO
ALTER TABLE [dbo].[Settings] DROP CONSTRAINT [DF_Settings_SiteOnlineAtDateTime]
GO
ALTER TABLE [dbo].[Settings] DROP CONSTRAINT [DF_Settings_MaxUploadFileSizePerFile]
GO
ALTER TABLE [dbo].[Settings] DROP CONSTRAINT [DF_Settings_MaxRequestLength]
GO
ALTER TABLE [dbo].[Settings] DROP CONSTRAINT [DF_Settings_ShoppingCartTax]
GO
ALTER TABLE [dbo].[Settings] DROP CONSTRAINT [DF_Settings_GlobalCodeInBody]
GO
ALTER TABLE [dbo].[Settings] DROP CONSTRAINT [DF_Settings_GlobalCodeInHead]
GO
ALTER TABLE [dbo].[RolesMedias] DROP CONSTRAINT [DF_RolesMediaDetails_DateLastModified]
GO
ALTER TABLE [dbo].[RolesMedias] DROP CONSTRAINT [DF_RolesMediaDetails_DateCreated]
GO
ALTER TABLE [dbo].[Roles] DROP CONSTRAINT [DF__Roles__DateLastM__0880433F]
GO
ALTER TABLE [dbo].[Roles] DROP CONSTRAINT [DF__Roles__DateCreat__078C1F06]
GO
ALTER TABLE [dbo].[Roles] DROP CONSTRAINT [DF_Roles_IsActive]
GO
ALTER TABLE [dbo].[Permissions] DROP CONSTRAINT [DF_Permissions_DateLastModified]
GO
ALTER TABLE [dbo].[Permissions] DROP CONSTRAINT [DF_Permissions_DateCreated]
GO
ALTER TABLE [dbo].[MediaTypesRoles] DROP CONSTRAINT [DF_MediaTypesRoles_DateLastModified]
GO
ALTER TABLE [dbo].[MediaTypesRoles] DROP CONSTRAINT [DF_MediaTypesRoles_DateCreated]
GO
ALTER TABLE [dbo].[MediaTypes] DROP CONSTRAINT [DF_MediaTypes_UseMediaTypeLayouts]
GO
ALTER TABLE [dbo].[MediaTypes] DROP CONSTRAINT [DF_MediaTypes_SummaryLayout1]
GO
ALTER TABLE [dbo].[MediaTypes] DROP CONSTRAINT [DF_MediaTypes_SummaryLayout]
GO
ALTER TABLE [dbo].[MediaTypes] DROP CONSTRAINT [DF_MediaTypes_CustomCode]
GO
ALTER TABLE [dbo].[MediaTypes] DROP CONSTRAINT [DF_MediaTypes_EnableCaching]
GO
ALTER TABLE [dbo].[MediaTypes] DROP CONSTRAINT [DF_MediaTypes_ShowInSiteTree]
GO
ALTER TABLE [dbo].[MediaTypes] DROP CONSTRAINT [DF_MediaTypes_ShowInSearchResults_1]
GO
ALTER TABLE [dbo].[MediaTypeRolesPermissions] DROP CONSTRAINT [DF_MediaTypeRolesPermissions_DateLastModified]
GO
ALTER TABLE [dbo].[MediaTypeRolesPermissions] DROP CONSTRAINT [DF_MediaTypeRolesPermissions_DateCreated]
GO
ALTER TABLE [dbo].[MediaTags] DROP CONSTRAINT [DF_MediaTags_OrderIndex]
GO
ALTER TABLE [dbo].[MediaDetailsFields] DROP CONSTRAINT [DF_MediaDetailsFields_UseMediaTypeFieldDescription]
GO
ALTER TABLE [dbo].[MediaDetailsFields] DROP CONSTRAINT [DF_MediaDetailsFields_UseMediaTypeFieldFrontEndLayout]
GO
ALTER TABLE [dbo].[MediaDetails] DROP CONSTRAINT [DF_MediaDetails_UseDefaultLanguageLayouts]
GO
ALTER TABLE [dbo].[MediaDetails] DROP CONSTRAINT [DF_MediaDetails_UseMediaTypeLayouts]
GO
ALTER TABLE [dbo].[MediaDetails] DROP CONSTRAINT [DF_MediaDetails_SummaryLayout1]
GO
ALTER TABLE [dbo].[MediaDetails] DROP CONSTRAINT [DF_MediaDetails_SummaryLayout]
GO
ALTER TABLE [dbo].[MediaDetails] DROP CONSTRAINT [DF_MediaDetails_CustomCode]
GO
ALTER TABLE [dbo].[MediaDetails] DROP CONSTRAINT [DF_MediaDetails_CssClasses]
GO
ALTER TABLE [dbo].[MediaDetails] DROP CONSTRAINT [DF_MediaDetails_IsProtected]
GO
ALTER TABLE [dbo].[MediaDetails] DROP CONSTRAINT [DF_MediaDetails_ForceSSL]
GO
ALTER TABLE [dbo].[MediaDetails] DROP CONSTRAINT [DF_MediaDetails_RenderInFooter1]
GO
ALTER TABLE [dbo].[MediaDetails] DROP CONSTRAINT [DF__MediaDeta__DateL__3B75D760]
GO
ALTER TABLE [dbo].[MediaDetails] DROP CONSTRAINT [DF__MediaDeta__DateC__3A81B327]
GO
ALTER TABLE [dbo].[MediaDetails] DROP CONSTRAINT [DF_MediaDetails_RedirectToFirstChild_1]
GO
ALTER TABLE [dbo].[MediaDetails] DROP CONSTRAINT [DF_MediaDetails_RecurringTimePeriod]
GO
ALTER TABLE [dbo].[MediaDetails] DROP CONSTRAINT [DF_MediaDetails_InStock]
GO
ALTER TABLE [dbo].[MediaDetails] DROP CONSTRAINT [DF_MediaDetails_Price]
GO
ALTER TABLE [dbo].[MediaDetails] DROP CONSTRAINT [DF_MediaDetails_CanAddToShoppingCart]
GO
ALTER TABLE [dbo].[MediaDetails] DROP CONSTRAINT [DF_MediaDetails_IsDraft]
GO
ALTER TABLE [dbo].[MediaDetails] DROP CONSTRAINT [DF_MediaDetails_HistoryVersionNumber]
GO
ALTER TABLE [dbo].[MediaDetails] DROP CONSTRAINT [DF_MediaDetails_AllowCaching]
GO
ALTER TABLE [dbo].[MediaDetails] DROP CONSTRAINT [DF_MediaDetails_ShowInSearchResults_1]
GO
ALTER TABLE [dbo].[MediaDetails] DROP CONSTRAINT [DF__MediaDeta__ShowI__398D8EEE]
GO
ALTER TABLE [dbo].[MediaDetails] DROP CONSTRAINT [DF_MediaDetails_EnableCommenting]
GO
ALTER TABLE [dbo].[MediaDetails] DROP CONSTRAINT [DF_Media_IsDeleted]
GO
ALTER TABLE [dbo].[MediaDetails] DROP CONSTRAINT [DF_Media_NumberOfStars]
GO
ALTER TABLE [dbo].[MediaDetails] DROP CONSTRAINT [DF_Media_NumberOfViews]
GO
ALTER TABLE [dbo].[MediaDetails] DROP CONSTRAINT [DF_MediaDetails_MetaDescription]
GO
ALTER TABLE [dbo].[MediaDetails] DROP CONSTRAINT [DF_MediaDetails_MetaKeywords]
GO
ALTER TABLE [dbo].[MediaDetails] DROP CONSTRAINT [DF_MediaDetails_DirectLinkVirtualPath]
GO
ALTER TABLE [dbo].[MediaDetails] DROP CONSTRAINT [DF_MediaDetails_OpenInNewWindow]
GO
ALTER TABLE [dbo].[MediaDetails] DROP CONSTRAINT [DF_MediaDetails_UseDirectLink]
GO
ALTER TABLE [dbo].[MediaComments] DROP CONSTRAINT [DF__Comments__DateLa__29ACF837]
GO
ALTER TABLE [dbo].[MediaComments] DROP CONSTRAINT [DF__Comments__DateCr__28B8D3FE]
GO
ALTER TABLE [dbo].[Media] DROP CONSTRAINT [DF__Media__OrderInde__7F2BE32F]
GO
ALTER TABLE [dbo].[MasterPages] DROP CONSTRAINT [DF_MasterPages_DateLastModified]
GO
ALTER TABLE [dbo].[MasterPages] DROP CONSTRAINT [DF_MasterPages_DateCreated]
GO
ALTER TABLE [dbo].[MasterPages] DROP CONSTRAINT [DF_MasterPages_LayoutCode]
GO
ALTER TABLE [dbo].[MasterPages] DROP CONSTRAINT [DF_MasterPages_UseLayout]
GO
ALTER TABLE [dbo].[MasterPages] DROP CONSTRAINT [DF_MasterPages_IsMobileTemplate]
GO
ALTER TABLE [dbo].[Languages] DROP CONSTRAINT [DF_Languages_DateLastModified]
GO
ALTER TABLE [dbo].[Languages] DROP CONSTRAINT [DF_Languages_DateCreated]
GO
ALTER TABLE [dbo].[Languages] DROP CONSTRAINT [DF__Languages__IsAct__0F8D3381]
GO
ALTER TABLE [dbo].[Languages] DROP CONSTRAINT [DF_Languages_DisplayName]
GO
ALTER TABLE [dbo].[IPLocationTracker] DROP CONSTRAINT [DF_IPLocationTracker_DateLastModified]
GO
ALTER TABLE [dbo].[IPLocationTracker] DROP CONSTRAINT [DF_IPLocationTracker_DateCreated]
GO
ALTER TABLE [dbo].[IPLocationTracker] DROP CONSTRAINT [DF_IPLocationTracker_Location]
GO
ALTER TABLE [dbo].[IPLocationTracker] DROP CONSTRAINT [DF_IPLocationTracker_IPAddress]
GO
ALTER TABLE [dbo].[GlossaryTerms] DROP CONSTRAINT [DF_GlossaryTerms_DateLastModified]
GO
ALTER TABLE [dbo].[GlossaryTerms] DROP CONSTRAINT [DF_GlossaryTerms_DateCreated]
GO
ALTER TABLE [dbo].[FieldTypes] DROP CONSTRAINT [DF_FieldTypes_DateLastModified]
GO
ALTER TABLE [dbo].[FieldTypes] DROP CONSTRAINT [DF_FieldTypes_DateCreated]
GO
ALTER TABLE [dbo].[FieldTypes] DROP CONSTRAINT [DF_FieldTypes_FieldDescription]
GO
ALTER TABLE [dbo].[FieldsAssociations] DROP CONSTRAINT [DF_FieldsAssociations_OrderIndex]
GO
ALTER TABLE [dbo].[Fields] DROP CONSTRAINT [DF_Fields_DateLastModified]
GO
ALTER TABLE [dbo].[Fields] DROP CONSTRAINT [DF_Fields_DateCreated]
GO
ALTER TABLE [dbo].[Fields] DROP CONSTRAINT [DF_Fields_ShowFrontEndFieldEditor]
GO
ALTER TABLE [dbo].[Fields] DROP CONSTRAINT [DF_Fields_FrontEndLayout]
GO
ALTER TABLE [dbo].[Fields] DROP CONSTRAINT [DF_Fields_GroupName]
GO
ALTER TABLE [dbo].[Fields] DROP CONSTRAINT [DF_Fields_SetValueCode]
GO
ALTER TABLE [dbo].[Fields] DROP CONSTRAINT [DF_Fields_ReturnValuePropertyName]
GO
ALTER TABLE [dbo].[Fields] DROP CONSTRAINT [DF_Fields_FieldValue]
GO
ALTER TABLE [dbo].[Fields] DROP CONSTRAINT [DF_Fields_RenderLabelAfterControl]
GO
ALTER TABLE [dbo].[Fields] DROP CONSTRAINT [DF_Fields_FieldDescription]
GO
ALTER TABLE [dbo].[Fields] DROP CONSTRAINT [DF_Fields_FieldCode]
GO
ALTER TABLE [dbo].[EmailLog] DROP CONSTRAINT [DF__EmailLog__DateLa__21229F2E]
GO
ALTER TABLE [dbo].[EmailLog] DROP CONSTRAINT [DF__EmailLog__DateCr__202E7AF5]
GO
/****** Object:  Index [UNIQUE_UriSegment]    Script Date: 7/4/2017 3:06:57 PM ******/
ALTER TABLE [dbo].[Languages] DROP CONSTRAINT [UNIQUE_UriSegment]
GO
/****** Object:  Index [Languages_uq2]    Script Date: 7/4/2017 3:06:57 PM ******/
ALTER TABLE [dbo].[Languages] DROP CONSTRAINT [Languages_uq2]
GO
/****** Object:  Index [Languages_uq]    Script Date: 7/4/2017 3:06:57 PM ******/
ALTER TABLE [dbo].[Languages] DROP CONSTRAINT [Languages_uq]
GO
/****** Object:  Table [dbo].[Website]    Script Date: 7/4/2017 3:06:57 PM ******/
DROP TABLE [dbo].[Website]
GO
/****** Object:  Table [dbo].[WebserviceRequests]    Script Date: 7/4/2017 3:06:57 PM ******/
DROP TABLE [dbo].[WebserviceRequests]
GO
/****** Object:  Table [dbo].[UsersRoles]    Script Date: 7/4/2017 3:06:57 PM ******/
DROP TABLE [dbo].[UsersRoles]
GO
/****** Object:  Table [dbo].[UsersMedias]    Script Date: 7/4/2017 3:06:57 PM ******/
DROP TABLE [dbo].[UsersMedias]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 7/4/2017 3:06:57 PM ******/
DROP TABLE [dbo].[Users]
GO
/****** Object:  Table [dbo].[UrlRedirectRules]    Script Date: 7/4/2017 3:06:57 PM ******/
DROP TABLE [dbo].[UrlRedirectRules]
GO
/****** Object:  Table [dbo].[Tags]    Script Date: 7/4/2017 3:06:57 PM ******/
DROP TABLE [dbo].[Tags]
GO
/****** Object:  Table [dbo].[Settings]    Script Date: 7/4/2017 3:06:57 PM ******/
DROP TABLE [dbo].[Settings]
GO
/****** Object:  Table [dbo].[RootPages]    Script Date: 7/4/2017 3:06:57 PM ******/
DROP TABLE [dbo].[RootPages]
GO
/****** Object:  Table [dbo].[RolesPermissions]    Script Date: 7/4/2017 3:06:57 PM ******/
DROP TABLE [dbo].[RolesPermissions]
GO
/****** Object:  Table [dbo].[RolesMedias]    Script Date: 7/4/2017 3:06:57 PM ******/
DROP TABLE [dbo].[RolesMedias]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 7/4/2017 3:06:57 PM ******/
DROP TABLE [dbo].[Roles]
GO
/****** Object:  Table [dbo].[Permissions]    Script Date: 7/4/2017 3:06:57 PM ******/
DROP TABLE [dbo].[Permissions]
GO
/****** Object:  Table [dbo].[Pages]    Script Date: 7/4/2017 3:06:57 PM ******/
DROP TABLE [dbo].[Pages]
GO
/****** Object:  Table [dbo].[MediaTypesRoles]    Script Date: 7/4/2017 3:06:57 PM ******/
DROP TABLE [dbo].[MediaTypesRoles]
GO
/****** Object:  Table [dbo].[MediaTypesFields]    Script Date: 7/4/2017 3:06:57 PM ******/
DROP TABLE [dbo].[MediaTypesFields]
GO
/****** Object:  Table [dbo].[MediaTypesChildren]    Script Date: 7/4/2017 3:06:57 PM ******/
DROP TABLE [dbo].[MediaTypesChildren]
GO
/****** Object:  Table [dbo].[MediaTypes]    Script Date: 7/4/2017 3:06:57 PM ******/
DROP TABLE [dbo].[MediaTypes]
GO
/****** Object:  Table [dbo].[MediaTypeRolesPermissions]    Script Date: 7/4/2017 3:06:57 PM ******/
DROP TABLE [dbo].[MediaTypeRolesPermissions]
GO
/****** Object:  Table [dbo].[MediaTags]    Script Date: 7/4/2017 3:06:57 PM ******/
DROP TABLE [dbo].[MediaTags]
GO
/****** Object:  Table [dbo].[MediaDetailsFields]    Script Date: 7/4/2017 3:06:57 PM ******/
DROP TABLE [dbo].[MediaDetailsFields]
GO
/****** Object:  Table [dbo].[MediaDetails]    Script Date: 7/4/2017 3:06:57 PM ******/
DROP TABLE [dbo].[MediaDetails]
GO
/****** Object:  Table [dbo].[MediaComments]    Script Date: 7/4/2017 3:06:57 PM ******/
DROP TABLE [dbo].[MediaComments]
GO
/****** Object:  Table [dbo].[Media]    Script Date: 7/4/2017 3:06:57 PM ******/
DROP TABLE [dbo].[Media]
GO
/****** Object:  Table [dbo].[MasterPages]    Script Date: 7/4/2017 3:06:57 PM ******/
DROP TABLE [dbo].[MasterPages]
GO
/****** Object:  Table [dbo].[Languages]    Script Date: 7/4/2017 3:06:57 PM ******/
DROP TABLE [dbo].[Languages]
GO
/****** Object:  Table [dbo].[IPLocationTracker]    Script Date: 7/4/2017 3:06:57 PM ******/
DROP TABLE [dbo].[IPLocationTracker]
GO
/****** Object:  Table [dbo].[GlossaryTerms]    Script Date: 7/4/2017 3:06:57 PM ******/
DROP TABLE [dbo].[GlossaryTerms]
GO
/****** Object:  Table [dbo].[FieldTypes]    Script Date: 7/4/2017 3:06:57 PM ******/
DROP TABLE [dbo].[FieldTypes]
GO
/****** Object:  Table [dbo].[FieldsAssociations]    Script Date: 7/4/2017 3:06:57 PM ******/
DROP TABLE [dbo].[FieldsAssociations]
GO
/****** Object:  Table [dbo].[Fields]    Script Date: 7/4/2017 3:06:57 PM ******/
DROP TABLE [dbo].[Fields]
GO
/****** Object:  Table [dbo].[EmailLog]    Script Date: 7/4/2017 3:06:57 PM ******/
DROP TABLE [dbo].[EmailLog]
GO
/****** Object:  Table [dbo].[EmailLog]    Script Date: 7/4/2017 3:06:57 PM ******/
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
/****** Object:  Table [dbo].[Fields]    Script Date: 7/4/2017 3:06:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fields](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[FieldCode] [nvarchar](255) NOT NULL,
	[FieldLabel] [nvarchar](255) NOT NULL,
	[FieldDescription] [nvarchar](max) NOT NULL,
	[RenderLabelAfterControl] [bit] NOT NULL,
	[AdminControl] [nvarchar](max) NOT NULL,
	[FieldValue] [nvarchar](max) NOT NULL,
	[GetAdminControlValue] [nvarchar](max) NOT NULL,
	[SetAdminControlValue] [nvarchar](max) NOT NULL,
	[OrderIndex] [bigint] NOT NULL,
	[GroupName] [nvarchar](255) NOT NULL,
	[FrontEndLayout] [nvarchar](max) NULL,
	[ShowFrontEndFieldEditor] [bit] NOT NULL,
	[DateCreated] [datetime] NOT NULL,
	[DateLastModified] [datetime] NOT NULL,
 CONSTRAINT [PK_Fields] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FieldsAssociations]    Script Date: 7/4/2017 3:06:57 PM ******/
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
/****** Object:  Table [dbo].[FieldTypes]    Script Date: 7/4/2017 3:06:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FieldTypes](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[CodeToRenderAdminControl] [nvarchar](max) NOT NULL,
	[CodeToGetAdminControlValue] [nvarchar](max) NOT NULL,
	[CodeToSetAdminControlValue] [nvarchar](max) NOT NULL,
	[CodeToRenderFrontEndLayout] [nvarchar](max) NOT NULL,
	[FieldDescription] [nvarchar](max) NOT NULL,
	[DateCreated] [datetime] NOT NULL,
	[DateLastModified] [datetime] NOT NULL,
 CONSTRAINT [PK_FieldTypes] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GlossaryTerms]    Script Date: 7/4/2017 3:06:57 PM ******/
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
/****** Object:  Table [dbo].[IPLocationTracker]    Script Date: 7/4/2017 3:06:57 PM ******/
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
/****** Object:  Table [dbo].[Languages]    Script Date: 7/4/2017 3:06:57 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MasterPages]    Script Date: 7/4/2017 3:06:57 PM ******/
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
/****** Object:  Table [dbo].[Media]    Script Date: 7/4/2017 3:06:57 PM ******/
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
/****** Object:  Table [dbo].[MediaComments]    Script Date: 7/4/2017 3:06:57 PM ******/
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
/****** Object:  Table [dbo].[MediaDetails]    Script Date: 7/4/2017 3:06:57 PM ******/
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
	[UseDefaultLanguageLayouts] [bit] NOT NULL,
 CONSTRAINT [MediaDetails_pk] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MediaDetailsFields]    Script Date: 7/4/2017 3:06:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MediaDetailsFields](
	[FieldID] [bigint] NOT NULL,
	[MediaDetailID] [bigint] NOT NULL,
	[MediaTypeFieldID] [bigint] NULL,
	[UseMediaTypeFieldFrontEndLayout] [bit] NOT NULL,
	[UseMediaTypeFieldDescription] [bit] NOT NULL,
 CONSTRAINT [PK_MediaDetailsFields_1] PRIMARY KEY CLUSTERED 
(
	[FieldID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MediaTags]    Script Date: 7/4/2017 3:06:57 PM ******/
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
/****** Object:  Table [dbo].[MediaTypeRolesPermissions]    Script Date: 7/4/2017 3:06:57 PM ******/
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
/****** Object:  Table [dbo].[MediaTypes]    Script Date: 7/4/2017 3:06:57 PM ******/
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
/****** Object:  Table [dbo].[MediaTypesChildren]    Script Date: 7/4/2017 3:06:57 PM ******/
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
/****** Object:  Table [dbo].[MediaTypesFields]    Script Date: 7/4/2017 3:06:57 PM ******/
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
/****** Object:  Table [dbo].[MediaTypesRoles]    Script Date: 7/4/2017 3:06:57 PM ******/
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
/****** Object:  Table [dbo].[Pages]    Script Date: 7/4/2017 3:06:57 PM ******/
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
/****** Object:  Table [dbo].[Permissions]    Script Date: 7/4/2017 3:06:57 PM ******/
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
/****** Object:  Table [dbo].[Roles]    Script Date: 7/4/2017 3:06:57 PM ******/
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
/****** Object:  Table [dbo].[RolesMedias]    Script Date: 7/4/2017 3:06:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RolesMedias](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[MediaID] [bigint] NOT NULL,
	[RoleID] [bigint] NOT NULL,
	[DateCreated] [datetime] NOT NULL,
	[DateLastModified] [datetime] NOT NULL,
 CONSTRAINT [PK_RolesMediaDetails] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RolesPermissions]    Script Date: 7/4/2017 3:06:57 PM ******/
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
/****** Object:  Table [dbo].[RootPages]    Script Date: 7/4/2017 3:06:57 PM ******/
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
/****** Object:  Table [dbo].[Settings]    Script Date: 7/4/2017 3:06:57 PM ******/
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
/****** Object:  Table [dbo].[Tags]    Script Date: 7/4/2017 3:06:57 PM ******/
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
/****** Object:  Table [dbo].[UrlRedirectRules]    Script Date: 7/4/2017 3:06:57 PM ******/
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
/****** Object:  Table [dbo].[Users]    Script Date: 7/4/2017 3:06:57 PM ******/
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
/****** Object:  Table [dbo].[UsersMedias]    Script Date: 7/4/2017 3:06:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsersMedias](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[UserID] [bigint] NOT NULL,
	[MediaID] [bigint] NOT NULL,
	[PermissionID] [bigint] NOT NULL,
	[DateCreated] [datetime] NOT NULL,
	[DateLastModified] [datetime] NOT NULL,
 CONSTRAINT [PK_UsersMediaDetails_1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UsersRoles]    Script Date: 7/4/2017 3:06:57 PM ******/
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
/****** Object:  Table [dbo].[WebserviceRequests]    Script Date: 7/4/2017 3:06:57 PM ******/
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
/****** Object:  Table [dbo].[Website]    Script Date: 7/4/2017 3:06:57 PM ******/
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
SET IDENTITY_INSERT [dbo].[Fields] ON 

INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [DateCreated], [DateLastModified]) VALUES (1, N'SectionTitle', N'Section Title', N'<p>This field type displays a simple input field.</p>', 0, N'<asp:TextBox runat=''server'' />', N'', N'Text', N'Text', 0, N'', N'', 1, CAST(N'2017-04-22T12:30:57.790' AS DateTime), CAST(N'2017-04-22T12:30:57.790' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [DateCreated], [DateLastModified]) VALUES (2, N'ShortDescription', N'Short Description', N'<p>This field type displays a TinyMCE WYSIWYG editor.</p>', 0, N'<Admin:Editor runat=''server'' Height=''200px'' />', N'', N'EditorInstance.Text', N'EditorInstance.Text', 1, N'', N'', 1, CAST(N'2017-04-22T12:31:45.123' AS DateTime), CAST(N'2017-04-22T12:31:45.123' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [DateCreated], [DateLastModified]) VALUES (3, N'MainContent', N'Main Content', N'<p>This field type displays a TinyMCE WYSIWYG editor.</p>', 0, N'<Admin:Editor runat=''server'' Height=''400px'' />', N'', N'EditorInstance.Text', N'EditorInstance.Text', 2, N'', N'', 1, CAST(N'2017-04-22T12:31:37.963' AS DateTime), CAST(N'2017-04-22T12:31:37.963' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [DateCreated], [DateLastModified]) VALUES (4, N'SectionTitle', N'Section Title', N'<p>This field type displays a simple input field.</p>', 0, N'<asp:TextBox runat=''server'' />', N'', N'Text', N'Text', 0, N'', N'', 1, CAST(N'2017-04-22T12:32:22.820' AS DateTime), CAST(N'2017-04-22T12:32:22.820' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [DateCreated], [DateLastModified]) VALUES (5, N'ShortDescription', N'Short Description', N'<p>This field type displays a TinyMCE WYSIWYG editor.</p>', 0, N'<Admin:Editor runat=''server'' Height=''200px'' />', N'', N'EditorInstance.Text', N'EditorInstance.Text', 1, N'', N'', 1, CAST(N'2017-04-22T12:32:40.957' AS DateTime), CAST(N'2017-04-22T12:32:40.957' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [DateCreated], [DateLastModified]) VALUES (6, N'MainContent', N'Main Content', N'<p>This field type displays a TinyMCE WYSIWYG editor.</p>', 0, N'<Admin:Editor runat=''server'' Height=''400px'' />', N'', N'EditorInstance.Text', N'EditorInstance.Text', 2, N'', N'', 1, CAST(N'2017-04-22T12:32:55.960' AS DateTime), CAST(N'2017-04-22T12:32:55.960' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [DateCreated], [DateLastModified]) VALUES (7, N'SectionTitle', N'Section Title', N'<p>This field type displays a simple input field.</p>', 0, N'<asp:TextBox runat=''server'' />', N'', N'Text', N'Text', 0, N'', N'', 1, CAST(N'2017-05-23T16:12:44.597' AS DateTime), CAST(N'2017-05-23T16:12:44.597' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [DateCreated], [DateLastModified]) VALUES (9, N'MainContent', N'Main Content', N'<p>This field type displays a TinyMCE WYSIWYG editor.</p>', 0, N'<Admin:Editor runat=''server'' Height=''400px'' />', N'', N'EditorInstance.Text', N'EditorInstance.Text', 0, N'', N'', 1, CAST(N'2017-04-22T12:56:33.830' AS DateTime), CAST(N'2017-04-22T12:56:33.830' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [DateCreated], [DateLastModified]) VALUES (10, N'SectionTitle', N'Section Title', N'<p>This field type displays a simple input field.</p>', 0, N'<asp:TextBox runat=''server'' />', N'', N'Text', N'Text', 0, N'', N'', 1, CAST(N'2017-04-22T13:30:19.293' AS DateTime), CAST(N'2017-04-22T13:30:19.293' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [DateCreated], [DateLastModified]) VALUES (11, N'ShortDescription', N'Short Description', N'<p>This field type displays a TinyMCE WYSIWYG editor.</p>', 0, N'<Admin:Editor runat=''server'' Height=''200px'' />', N'', N'EditorInstance.Text', N'EditorInstance.Text', 0, N'', N'', 1, CAST(N'2017-04-22T13:30:19.293' AS DateTime), CAST(N'2017-04-22T13:30:19.293' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [DateCreated], [DateLastModified]) VALUES (12, N'MainContent', N'Main Content', N'<p>This field type displays a TinyMCE WYSIWYG editor.</p>', 0, N'<Admin:Editor runat=''server'' Height=''400px'' />', N'', N'EditorInstance.Text', N'EditorInstance.Text', 0, N'', N'', 1, CAST(N'2017-06-07T08:50:53.200' AS DateTime), CAST(N'2017-06-07T08:50:53.200' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [DateCreated], [DateLastModified]) VALUES (13, N'SectionTitle', N'Section Title', N'<p>This field type displays a simple input field.</p>', 0, N'<asp:TextBox runat=''server'' />', N'', N'Text', N'Text', 0, N'', N'', 1, CAST(N'2017-04-22T13:35:29.363' AS DateTime), CAST(N'2017-04-22T13:35:29.363' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [DateCreated], [DateLastModified]) VALUES (14, N'ShortDescription', N'Short Description', N'<p>This field type displays a TinyMCE WYSIWYG editor.</p>', 0, N'<Admin:Editor runat=''server'' Height=''200px'' />', N'', N'EditorInstance.Text', N'EditorInstance.Text', 0, N'', N'', 1, CAST(N'2017-04-22T13:35:29.363' AS DateTime), CAST(N'2017-04-22T13:35:29.363' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [DateCreated], [DateLastModified]) VALUES (15, N'MainContent', N'Main Content', N'<p>This field type displays a TinyMCE WYSIWYG editor.</p>', 0, N'<Admin:Editor runat=''server'' Height=''400px'' />', N'', N'EditorInstance.Text', N'EditorInstance.Text', 0, N'', N'', 1, CAST(N'2017-04-22T13:35:29.363' AS DateTime), CAST(N'2017-04-22T13:35:29.363' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [DateCreated], [DateLastModified]) VALUES (16, N'SectionTitle', N'Section Title', N'<p>This field type displays a simple input field.</p>', 0, N'<asp:TextBox runat=''server'' />', N'', N'Text', N'Text', 0, N'', N'', 1, CAST(N'2017-04-22T13:35:43.777' AS DateTime), CAST(N'2017-04-22T13:35:43.777' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [DateCreated], [DateLastModified]) VALUES (17, N'ShortDescription', N'Short Description', N'<p>This field type displays a TinyMCE WYSIWYG editor.</p>', 0, N'<Admin:Editor runat=''server'' Height=''200px'' />', N'', N'EditorInstance.Text', N'EditorInstance.Text', 0, N'', N'', 1, CAST(N'2017-04-22T13:35:43.777' AS DateTime), CAST(N'2017-04-22T13:35:43.777' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [DateCreated], [DateLastModified]) VALUES (18, N'MainContent', N'Main Content', N'<p>This field type displays a TinyMCE WYSIWYG editor.</p>', 0, N'<Admin:Editor runat=''server'' Height=''400px'' />', N'', N'EditorInstance.Text', N'EditorInstance.Text', 0, N'', N'', 1, CAST(N'2017-04-22T13:35:43.777' AS DateTime), CAST(N'2017-04-22T13:35:43.777' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [DateCreated], [DateLastModified]) VALUES (19, N'SectionTitle', N'Section Title', N'<p>This field type displays a simple input field.</p>', 0, N'<asp:TextBox runat=''server'' />', N'', N'Text', N'Text', 0, N'', N'', 1, CAST(N'2017-04-22T13:36:03.163' AS DateTime), CAST(N'2017-04-22T13:36:03.163' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [DateCreated], [DateLastModified]) VALUES (20, N'ShortDescription', N'Short Description', N'<p>This field type displays a TinyMCE WYSIWYG editor.</p>', 0, N'<Admin:Editor runat=''server'' Height=''200px'' />', N'', N'EditorInstance.Text', N'EditorInstance.Text', 0, N'', N'', 1, CAST(N'2017-04-22T13:36:03.163' AS DateTime), CAST(N'2017-04-22T13:36:03.163' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [DateCreated], [DateLastModified]) VALUES (21, N'MainContent', N'Main Content', N'<p>This field type displays a TinyMCE WYSIWYG editor.</p>', 0, N'<Admin:Editor runat=''server'' Height=''400px'' />', N'', N'EditorInstance.Text', N'EditorInstance.Text', 0, N'', N'', 1, CAST(N'2017-04-22T13:36:03.163' AS DateTime), CAST(N'2017-04-22T13:36:03.163' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [DateCreated], [DateLastModified]) VALUES (22, N'SectionTitle', N'Section Title', N'<p>This field type displays a simple input field.</p>', 0, N'<asp:TextBox runat=''server'' />', N'', N'Text', N'Text', 0, N'', N'', 1, CAST(N'2017-04-22T13:36:14.090' AS DateTime), CAST(N'2017-04-22T13:36:14.090' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [DateCreated], [DateLastModified]) VALUES (23, N'ShortDescription', N'Short Description', N'<p>This field type displays a TinyMCE WYSIWYG editor.</p>', 0, N'<Admin:Editor runat=''server'' Height=''200px'' />', N'', N'EditorInstance.Text', N'EditorInstance.Text', 0, N'', N'', 1, CAST(N'2017-04-22T13:36:14.090' AS DateTime), CAST(N'2017-04-22T13:36:14.090' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [DateCreated], [DateLastModified]) VALUES (24, N'MainContent', N'Main Content', N'<p>This field type displays a TinyMCE WYSIWYG editor.</p>', 0, N'<Admin:Editor runat=''server'' Height=''400px'' />', N'', N'EditorInstance.Text', N'EditorInstance.Text', 0, N'', N'', 1, CAST(N'2017-04-22T13:36:14.090' AS DateTime), CAST(N'2017-04-22T13:36:14.090' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [DateCreated], [DateLastModified]) VALUES (28, N'PathToFile', N'PathToFile', N'<p>This field type displays a text box and a "Select" link above the textbox, when you click on the "Select" link, it will popup the File Manager, which allows you to select a file, selecting a file will update the textbox with the path to the file.</p>', 0, N'<Admin:FileSelector runat=''server'' DirPath=''/media/uploads/'' />', N'', N'SelectedFilePath', N'SelectedFilePath', 0, N'', N'<img src="@Model.Field.FieldValue" alt="@Model.Field.FieldLabel" />', 1, CAST(N'2017-05-23T16:13:46.890' AS DateTime), CAST(N'2017-05-23T16:13:46.890' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [DateCreated], [DateLastModified]) VALUES (46, N'SectionTitle', N'Section Title', N'<p>This field type displays a simple input field.</p>', 0, N'<asp:TextBox runat=''server'' />', N'', N'Text', N'Text', 0, N'', N'', 1, CAST(N'2017-04-22T14:24:39.843' AS DateTime), CAST(N'2017-04-22T14:24:39.843' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [DateCreated], [DateLastModified]) VALUES (47, N'ShortDescription', N'Short Description', N'<p>This field type displays a TinyMCE WYSIWYG editor.</p>', 0, N'<Admin:Editor runat=''server'' Height=''200px'' />', N'', N'EditorInstance.Text', N'EditorInstance.Text', 0, N'', N'', 1, CAST(N'2017-04-22T14:24:39.843' AS DateTime), CAST(N'2017-04-22T14:24:39.843' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [DateCreated], [DateLastModified]) VALUES (48, N'MainContent', N'Main Content', N'<p>This field type displays a TinyMCE WYSIWYG editor.</p>', 0, N'<Admin:Editor runat=''server'' Height=''400px'' />', N'', N'EditorInstance.Text', N'EditorInstance.Text', 0, N'', N'', 1, CAST(N'2017-04-22T14:24:39.843' AS DateTime), CAST(N'2017-04-22T14:24:39.843' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [DateCreated], [DateLastModified]) VALUES (138, N'ArticlePublishDate', N'ArticlePublishDate', N'<p>This field type displays a text box which when clicked on displays a date / time picker.</p>', 0, N'<asp:TextBox runat=''server'' class=''datetimepicker'' />', N'', N'Text', N'Text', 0, N'', N'@model RazorFieldParams
@{
    var field = Model.Field as MediaDetailField;
    if(!string.IsNullOrEmpty(field.FieldValue))
    {
        var dateTime = DateTime.Parse(field.FieldValue);
        @StringHelper.FormatOnlyDate(dateTime)
    }
    else
    {
        @field.FieldValue
    }
}', 1, CAST(N'2017-04-22T15:31:06.317' AS DateTime), CAST(N'2017-04-22T15:31:06.317' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [DateCreated], [DateLastModified]) VALUES (387, N'SectionTitle', N'Section Title', N'<p>This field type displays a simple input field.</p>', 0, N'<asp:TextBox runat=''server'' />', N'', N'Text', N'Text', 0, N'', N'', 0, CAST(N'2017-04-24T13:37:06.267' AS DateTime), CAST(N'2017-04-24T13:37:06.277' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [DateCreated], [DateLastModified]) VALUES (388, N'ShortDescription', N'Short Description', N'<p>This field type displays a TinyMCE WYSIWYG editor.</p>', 0, N'<Admin:Editor runat=''server'' Height=''200px'' />', N'HD-Wallpapers1_QlwttNW.jpeg', N'EditorInstance.Text', N'EditorInstance.Text', 0, N'', N'', 1, CAST(N'2017-04-22T12:56:18.473' AS DateTime), CAST(N'2017-04-22T12:56:18.473' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [DateCreated], [DateLastModified]) VALUES (389, N'MainContent', N'Main Content', N'<p>This field type displays a TinyMCE WYSIWYG editor.</p>', 0, N'<Admin:Editor runat=''server'' Height=''400px'' />', N'HD-Wallpapers1_QlwttNW.jpeg', N'EditorInstance.Text', N'EditorInstance.Text', 0, N'', N'', 1, CAST(N'2017-04-22T12:56:33.830' AS DateTime), CAST(N'2017-04-22T12:56:33.830' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [DateCreated], [DateLastModified]) VALUES (390, N'PathToFile', N'PathToFile', N'<p>This field type displays a text box and a "Select" link above the textbox, when you click on the "Select" link, it will popup the File Manager, which allows you to select a file, selecting a file will update the textbox with the path to the file.</p>', 0, N'<Admin:FileSelector runat=''server'' DirPath=''/media/uploads/'' />', N'', N'SelectedFilePath', N'SelectedFilePath', 0, N'', N'', 0, CAST(N'2017-04-22T17:20:20.777' AS DateTime), CAST(N'2017-04-22T17:20:20.790' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [DateCreated], [DateLastModified]) VALUES (391, N'HideTagsField', N'Hide Tags Field', N'<p>This field type hides hides the TagsHolder Field</p>', 0, N'<script type=''text/javascript''>
    $(document).ready(function(){        
        //$(''#ShortDescriptionHolder'').hide();
        //$(''#LongDescriptionHolder'').hide();
        $(''#TagsHolder'').hide();
        //$(''#PathToFileHolder'').hide();
    });
</script>', N'', N'', N'', 0, N'Script', N'', 1, CAST(N'2017-04-22T14:17:12.643' AS DateTime), CAST(N'2017-04-22T14:17:12.643' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [DateCreated], [DateLastModified]) VALUES (392, N'SectionTitle', N'Section Title', N'<p>This field type displays a simple input field.</p>', 0, N'<asp:TextBox runat=''server'' />', N'', N'Text', N'Text', 0, N'', N'', 0, CAST(N'2017-04-24T13:37:06.267' AS DateTime), CAST(N'2017-04-24T13:37:06.277' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [DateCreated], [DateLastModified]) VALUES (393, N'ShortDescription', N'Short Description', N'<p>This field type displays a TinyMCE WYSIWYG editor.</p>', 0, N'<Admin:Editor runat=''server'' Height=''200px'' />', N'images.jpg', N'EditorInstance.Text', N'EditorInstance.Text', 0, N'', N'', 1, CAST(N'2017-04-22T12:56:18.473' AS DateTime), CAST(N'2017-04-22T12:56:18.473' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [DateCreated], [DateLastModified]) VALUES (394, N'MainContent', N'Main Content', N'<p>This field type displays a TinyMCE WYSIWYG editor.</p>', 0, N'<Admin:Editor runat=''server'' Height=''400px'' />', N'images.jpg', N'EditorInstance.Text', N'EditorInstance.Text', 0, N'', N'', 1, CAST(N'2017-04-22T12:56:33.830' AS DateTime), CAST(N'2017-04-22T12:56:33.830' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [DateCreated], [DateLastModified]) VALUES (395, N'PathToFile', N'PathToFile', N'<p>This field type displays a text box and a "Select" link above the textbox, when you click on the "Select" link, it will popup the File Manager, which allows you to select a file, selecting a file will update the textbox with the path to the file.</p>', 0, N'<Admin:FileSelector runat=''server'' DirPath=''/media/uploads/'' />', N'', N'SelectedFilePath', N'SelectedFilePath', 0, N'', N'', 0, CAST(N'2017-04-22T17:20:20.777' AS DateTime), CAST(N'2017-04-22T17:20:20.790' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [DateCreated], [DateLastModified]) VALUES (396, N'HideTagsField', N'Hide Tags Field', N'<p>This field type hides hides the TagsHolder Field</p>', 0, N'<script type=''text/javascript''>
    $(document).ready(function(){        
        //$(''#ShortDescriptionHolder'').hide();
        //$(''#LongDescriptionHolder'').hide();
        $(''#TagsHolder'').hide();
        //$(''#PathToFileHolder'').hide();
    });
</script>', N'', N'', N'', 0, N'Script', N'', 1, CAST(N'2017-04-22T14:17:12.643' AS DateTime), CAST(N'2017-04-22T14:17:12.643' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [DateCreated], [DateLastModified]) VALUES (397, N'SectionTitle', N'Section Title', N'<p>This field type displays a simple input field.</p>', 0, N'<asp:TextBox runat=''server'' />', N'', N'Text', N'Text', 0, N'', N'', 0, CAST(N'2017-04-24T13:37:06.267' AS DateTime), CAST(N'2017-04-24T13:37:06.277' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [DateCreated], [DateLastModified]) VALUES (398, N'ShortDescription', N'Short Description', N'<p>This field type displays a TinyMCE WYSIWYG editor.</p>', 0, N'<Admin:Editor runat=''server'' Height=''200px'' />', N'images2.jpg', N'EditorInstance.Text', N'EditorInstance.Text', 0, N'', N'', 1, CAST(N'2017-04-22T12:56:18.473' AS DateTime), CAST(N'2017-04-22T12:56:18.473' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [DateCreated], [DateLastModified]) VALUES (399, N'MainContent', N'Main Content', N'<p>This field type displays a TinyMCE WYSIWYG editor.</p>', 0, N'<Admin:Editor runat=''server'' Height=''400px'' />', N'images2.jpg', N'EditorInstance.Text', N'EditorInstance.Text', 0, N'', N'', 1, CAST(N'2017-04-22T12:56:33.830' AS DateTime), CAST(N'2017-04-22T12:56:33.830' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [DateCreated], [DateLastModified]) VALUES (400, N'PathToFile', N'PathToFile', N'<p>This field type displays a text box and a "Select" link above the textbox, when you click on the "Select" link, it will popup the File Manager, which allows you to select a file, selecting a file will update the textbox with the path to the file.</p>', 0, N'<Admin:FileSelector runat=''server'' DirPath=''/media/uploads/'' />', N'', N'SelectedFilePath', N'SelectedFilePath', 0, N'', N'', 0, CAST(N'2017-04-22T17:20:20.777' AS DateTime), CAST(N'2017-04-22T17:20:20.790' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [DateCreated], [DateLastModified]) VALUES (401, N'HideTagsField', N'Hide Tags Field', N'<p>This field type hides hides the TagsHolder Field</p>', 0, N'<script type=''text/javascript''>
    $(document).ready(function(){        
        //$(''#ShortDescriptionHolder'').hide();
        //$(''#LongDescriptionHolder'').hide();
        $(''#TagsHolder'').hide();
        //$(''#PathToFileHolder'').hide();
    });
</script>', N'', N'', N'', 0, N'Script', N'', 1, CAST(N'2017-04-22T14:17:12.643' AS DateTime), CAST(N'2017-04-22T14:17:12.643' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [DateCreated], [DateLastModified]) VALUES (402, N'SectionTitle', N'Section Title', N'<p>This field type displays a simple input field.</p>', 0, N'<asp:TextBox runat=''server'' />', N'', N'Text', N'Text', 0, N'', N'', 0, CAST(N'2017-04-24T13:37:06.267' AS DateTime), CAST(N'2017-04-24T13:37:06.277' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [DateCreated], [DateLastModified]) VALUES (403, N'ShortDescription', N'Short Description', N'<p>This field type displays a TinyMCE WYSIWYG editor.</p>', 0, N'<Admin:Editor runat=''server'' Height=''200px'' />', N'index.jpg', N'EditorInstance.Text', N'EditorInstance.Text', 0, N'', N'', 1, CAST(N'2017-04-22T12:56:18.473' AS DateTime), CAST(N'2017-04-22T12:56:18.473' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [DateCreated], [DateLastModified]) VALUES (404, N'MainContent', N'Main Content', N'<p>This field type displays a TinyMCE WYSIWYG editor.</p>', 0, N'<Admin:Editor runat=''server'' Height=''400px'' />', N'index.jpg', N'EditorInstance.Text', N'EditorInstance.Text', 0, N'', N'', 1, CAST(N'2017-04-22T12:56:33.830' AS DateTime), CAST(N'2017-04-22T12:56:33.830' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [DateCreated], [DateLastModified]) VALUES (405, N'PathToFile', N'PathToFile', N'<p>This field type displays a text box and a "Select" link above the textbox, when you click on the "Select" link, it will popup the File Manager, which allows you to select a file, selecting a file will update the textbox with the path to the file.</p>', 0, N'<Admin:FileSelector runat=''server'' DirPath=''/media/uploads/'' />', N'', N'SelectedFilePath', N'SelectedFilePath', 0, N'', N'', 0, CAST(N'2017-04-22T17:20:20.777' AS DateTime), CAST(N'2017-04-22T17:20:20.790' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [DateCreated], [DateLastModified]) VALUES (406, N'HideTagsField', N'Hide Tags Field', N'<p>This field type hides hides the TagsHolder Field</p>', 0, N'<script type=''text/javascript''>
    $(document).ready(function(){        
        //$(''#ShortDescriptionHolder'').hide();
        //$(''#LongDescriptionHolder'').hide();
        $(''#TagsHolder'').hide();
        //$(''#PathToFileHolder'').hide();
    });
</script>', N'', N'', N'', 0, N'Script', N'', 1, CAST(N'2017-04-22T14:17:12.643' AS DateTime), CAST(N'2017-04-22T14:17:12.643' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [DateCreated], [DateLastModified]) VALUES (34583, N'SectionTitle', N'Section Title', N'<p>This field type displays a simple input field.</p>', 0, N'<asp:TextBox runat=''server'' />', N'Home', N'Text', N'Text', 0, N'', N'', 1, CAST(N'2017-04-22T12:30:57.790' AS DateTime), CAST(N'2017-04-22T12:30:57.790' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [DateCreated], [DateLastModified]) VALUES (34584, N'ShortDescription', N'Short Description', N'<p>This field type displays a TinyMCE WYSIWYG editor.</p>', 0, N'<Admin:Editor runat=''server'' Height=''200px'' />', N'<p>Home</p>', N'EditorInstance.Text', N'EditorInstance.Text', 1, N'', N'', 1, CAST(N'2017-04-22T12:31:45.123' AS DateTime), CAST(N'2017-04-22T12:31:45.123' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [DateCreated], [DateLastModified]) VALUES (34585, N'MainContent', N'Main Content', N'<p>This field type displays a TinyMCE WYSIWYG editor.</p>', 0, N'<Admin:Editor runat=''server'' Height=''400px'' />', N'<p>Home</p>', N'EditorInstance.Text', N'EditorInstance.Text', 2, N'', N'', 1, CAST(N'2017-04-22T12:31:37.963' AS DateTime), CAST(N'2017-04-22T12:31:37.963' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [DateCreated], [DateLastModified]) VALUES (34587, N'SectionTitle', N'Section Title', N'<p>This field type displays a simple input field.</p>', 0, N'<asp:TextBox runat=''server'' />', N'Login', N'Text', N'Text', 0, N'', N'', 1, CAST(N'2017-04-22T12:32:22.820' AS DateTime), CAST(N'2017-04-22T12:32:22.820' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [DateCreated], [DateLastModified]) VALUES (34588, N'ShortDescription', N'Short Description', N'<p>This field type displays a TinyMCE WYSIWYG editor.</p>', 0, N'<Admin:Editor runat=''server'' Height=''200px'' />', N'<p>Login</p>', N'EditorInstance.Text', N'EditorInstance.Text', 1, N'', N'', 1, CAST(N'2017-04-22T12:32:40.957' AS DateTime), CAST(N'2017-04-22T12:32:40.957' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [DateCreated], [DateLastModified]) VALUES (34589, N'MainContent', N'Main Content', N'<p>This field type displays a TinyMCE WYSIWYG editor.</p>', 0, N'<Admin:Editor runat=''server'' Height=''400px'' />', N'<p>Login</p>', N'EditorInstance.Text', N'EditorInstance.Text', 2, N'', N'', 1, CAST(N'2017-04-22T12:32:55.960' AS DateTime), CAST(N'2017-04-22T12:32:55.960' AS DateTime))
SET IDENTITY_INSERT [dbo].[Fields] OFF
SET IDENTITY_INSERT [dbo].[FieldTypes] ON 

INSERT [dbo].[FieldTypes] ([ID], [Name], [CodeToRenderAdminControl], [CodeToGetAdminControlValue], [CodeToSetAdminControlValue], [CodeToRenderFrontEndLayout], [FieldDescription], [DateCreated], [DateLastModified]) VALUES (1, N'Text Box Single Line', N'<asp:TextBox runat=''server'' />', N'Text', N'Text', N'', N'<p>This field type displays a simple input field.</p>', CAST(N'2017-02-21T09:37:16.980' AS DateTime), CAST(N'2017-03-02T11:43:24.263' AS DateTime))
INSERT [dbo].[FieldTypes] ([ID], [Name], [CodeToRenderAdminControl], [CodeToGetAdminControlValue], [CodeToSetAdminControlValue], [CodeToRenderFrontEndLayout], [FieldDescription], [DateCreated], [DateLastModified]) VALUES (2, N'Text Box Multi Line', N'<asp:TextBox runat=''server'' TextMode=''Multiline'' Height=''200px'' />', N'Text', N'Text', N'', N'<p>This field type displays a simple textarea.</p>', CAST(N'2017-02-21T09:37:47.060' AS DateTime), CAST(N'2017-03-02T11:43:04.373' AS DateTime))
INSERT [dbo].[FieldTypes] ([ID], [Name], [CodeToRenderAdminControl], [CodeToGetAdminControlValue], [CodeToSetAdminControlValue], [CodeToRenderFrontEndLayout], [FieldDescription], [DateCreated], [DateLastModified]) VALUES (3, N'Html Editor', N'<asp:TextBox runat=''server'' TextMode=''Multiline'' CssClass=''AceEditor'' Height=''200px'' />', N'Text', N'Text', N'', N'<p>This field type displays an <a href="https://ace.c9.io/" target="_blank">HTML Editor</a></p>', CAST(N'2017-02-21T09:38:06.537' AS DateTime), CAST(N'2017-03-02T11:35:08.397' AS DateTime))
INSERT [dbo].[FieldTypes] ([ID], [Name], [CodeToRenderAdminControl], [CodeToGetAdminControlValue], [CodeToSetAdminControlValue], [CodeToRenderFrontEndLayout], [FieldDescription], [DateCreated], [DateLastModified]) VALUES (4, N'WYSIWYG Editor', N'<Admin:Editor runat=''server'' Height=''200px'' />', N'EditorInstance.Text', N'EditorInstance.Text', N'', N'<p>This field type displays a TinyMCE WYSIWYG editor.</p>', CAST(N'2017-02-21T09:38:48.663' AS DateTime), CAST(N'2017-03-02T11:44:03.407' AS DateTime))
INSERT [dbo].[FieldTypes] ([ID], [Name], [CodeToRenderAdminControl], [CodeToGetAdminControlValue], [CodeToSetAdminControlValue], [CodeToRenderFrontEndLayout], [FieldDescription], [DateCreated], [DateLastModified]) VALUES (5, N'Date Time Picker', N'<asp:TextBox runat=''server'' class=''datetimepicker'' />', N'Text', N'Text', N'@model RazorFieldParams
@{
    var field = Model.Field as MediaDetailField;
    if(!string.IsNullOrEmpty(field.FieldValue))
    {
        var dateTime = DateTime.Parse(field.FieldValue);
        @StringHelper.FormatOnlyDate(dateTime)
    }
    else
    {
        @field.FieldValue
    }
}', N'<p>This field type displays a text box which when clicked on displays a date / time picker.</p>', CAST(N'2017-02-21T09:39:16.240' AS DateTime), CAST(N'2017-03-15T11:53:47.427' AS DateTime))
INSERT [dbo].[FieldTypes] ([ID], [Name], [CodeToRenderAdminControl], [CodeToGetAdminControlValue], [CodeToSetAdminControlValue], [CodeToRenderFrontEndLayout], [FieldDescription], [DateCreated], [DateLastModified]) VALUES (6, N'Check Box', N'<asp:CheckBox runat=''server'' />', N'Checked', N'Checked', N'', N'<p>This field type displays a checkbox item.</p>', CAST(N'2017-02-21T09:39:37.997' AS DateTime), CAST(N'2017-03-02T11:28:20.160' AS DateTime))
INSERT [dbo].[FieldTypes] ([ID], [Name], [CodeToRenderAdminControl], [CodeToGetAdminControlValue], [CodeToSetAdminControlValue], [CodeToRenderFrontEndLayout], [FieldDescription], [DateCreated], [DateLastModified]) VALUES (7, N'Check Box List', N'<asp:CheckBoxList runat=''server''>
    <asp:ListItem Text=''Item1'' Value=''Item1''></asp:ListItem>
    <asp:ListItem Text=''Item2'' Value=''Item2''></asp:ListItem>
    <asp:ListItem Text=''Item3'' Value=''Item3''></asp:ListItem>
    <asp:ListItem Text=''Item4'' Value=''Item4''></asp:ListItem>
    <asp:ListItem Text=''Item5'' Value=''Item5''></asp:ListItem>
</asp:CheckBoxList>', N'@using System.Web.UI.WebControls
@{
    var selectedItems = ((ListItemCollection)Model.Control.Items).Cast<ListItem>().Where(i => i.Selected);
    @Raw(StringHelper.ObjectToJson(selectedItems.Select(i => i.Value).ToList()));
}', N'@{
    var newValues = StringHelper.JsonToObject<List<string>>(Model.NewValue);

    if(newValues != null)
    {
        foreach(var controlItem in Model.Control.Items)
        {
            if(Enumerable.Contains(newValues, controlItem.Value))
            {
                controlItem.Selected=true;
            }
        }
    }
}', N'@model RazorFieldParams
@{
    var fieldValues = StringHelper.JsonToObject<List<string>>(Model.Field.FieldValue);

    if(fieldValues != null)
    {
        foreach(var item in fieldValues)
        {
            <li>@item</li>
        }
    }
}', N'<p>This field type displays a list of checkbox items.</p>', CAST(N'2017-02-21T09:40:31.513' AS DateTime), CAST(N'2017-03-15T10:22:47.017' AS DateTime))
INSERT [dbo].[FieldTypes] ([ID], [Name], [CodeToRenderAdminControl], [CodeToGetAdminControlValue], [CodeToSetAdminControlValue], [CodeToRenderFrontEndLayout], [FieldDescription], [DateCreated], [DateLastModified]) VALUES (8, N'Radio Button List', N'<asp:RadioButtonList runat=''server''>
    <asp:ListItem Text=''Item1'' Value=''Item1''></asp:ListItem>
    <asp:ListItem Text=''Item2'' Value=''Item2''></asp:ListItem>
    <asp:ListItem Text=''Item3'' Value=''Item3''></asp:ListItem>
    <asp:ListItem Text=''Item4'' Value=''Item4''></asp:ListItem>
    <asp:ListItem Text=''Item5'' Value=''Item5''></asp:ListItem>
</asp:RadioButtonList>', N'@using System.Web.UI.WebControls
@{
    var selectedItems = ((ListItemCollection)Model.Control.Items).Cast<ListItem>().Where(i => i.Selected);
    @Raw(StringHelper.ObjectToJson(selectedItems.Select(i => i.Value).ToList()));
}', N'@{
    var newValues = StringHelper.JsonToObject<List<string>>(Model.NewValue);

    if(newValues != null)
    {
        foreach(var controlItem in Model.Control.Items)
        {
            if(Enumerable.Contains(newValues, controlItem.Value))
            {
                controlItem.Selected=true;
            }
        }
    }
}', N'@model RazorFieldParams
@{
    var fieldValues = StringHelper.JsonToObject<List<string>>(Model.Field.FieldValue);

    if(fieldValues != null)
    {
        foreach(var item in fieldValues)
        {
            <li>@item</li>
        }
    }
}', N'<p>This field type displays a list of radio button items.</p>', CAST(N'2017-02-21T09:41:11.920' AS DateTime), CAST(N'2017-03-15T10:23:05.377' AS DateTime))
INSERT [dbo].[FieldTypes] ([ID], [Name], [CodeToRenderAdminControl], [CodeToGetAdminControlValue], [CodeToSetAdminControlValue], [CodeToRenderFrontEndLayout], [FieldDescription], [DateCreated], [DateLastModified]) VALUES (9, N'Drop Down List', N'<asp:DropDownList runat=''server''>
    <asp:ListItem Text=''Item1'' Value=''Item1''></asp:ListItem>
    <asp:ListItem Text=''Item2'' Value=''Item2''></asp:ListItem>
    <asp:ListItem Text=''Item3'' Value=''Item3''></asp:ListItem>
    <asp:ListItem Text=''Item4'' Value=''Item4''></asp:ListItem>
    <asp:ListItem Text=''Item5'' Value=''Item5''></asp:ListItem>
</asp:DropDownList>', N'@using System.Web.UI.WebControls
@{
    var selectedItems = ((ListItemCollection)Model.Control.Items).Cast<ListItem>().Where(i => i.Selected);
    @Raw(StringHelper.ObjectToJson(selectedItems.Select(i => i.Value).ToList()));
}', N'@{
    var newValues = StringHelper.JsonToObject<List<string>>(Model.NewValue);

    if(newValues != null)
    {
        foreach(var controlItem in Model.Control.Items)
        {
            if(Enumerable.Contains(newValues, controlItem.Value))
            {
                controlItem.Selected=true;
            }
        }
    }
}', N'@model RazorFieldParams
@{
    var fieldValues = StringHelper.JsonToObject<List<string>>(Model.Field.FieldValue);

    if(fieldValues != null)
    {
        foreach(var item in fieldValues)
        {
            <li>@item</li>
        }
    }
}', N'<p>This field type displays a dropdown list.</p>', CAST(N'2017-02-21T09:41:51.673' AS DateTime), CAST(N'2017-03-15T10:23:24.163' AS DateTime))
INSERT [dbo].[FieldTypes] ([ID], [Name], [CodeToRenderAdminControl], [CodeToGetAdminControlValue], [CodeToSetAdminControlValue], [CodeToRenderFrontEndLayout], [FieldDescription], [DateCreated], [DateLastModified]) VALUES (10, N'File Selector - Image', N'<Admin:FileSelector runat=''server'' DirPath=''/media/uploads/'' />', N'SelectedFilePath', N'SelectedFilePath', N'<img src="@Model.Field.FieldValue" alt="@Model.Field.FieldLabel" />', N'<p>This field type displays a text box and a "Select" link above the textbox, when you click on the "Select" link, it will popup the File Manager, which allows you to select a file, selecting a file will update the textbox with the path to the file.</p>', CAST(N'2017-02-21T09:42:28.070' AS DateTime), CAST(N'2017-05-23T15:53:59.387' AS DateTime))
INSERT [dbo].[FieldTypes] ([ID], [Name], [CodeToRenderAdminControl], [CodeToGetAdminControlValue], [CodeToSetAdminControlValue], [CodeToRenderFrontEndLayout], [FieldDescription], [DateCreated], [DateLastModified]) VALUES (11, N'Association - Auto Suggest', N'<Admin:AssociationAutoSuggest runat=''server'' ParentMediaDetailID=''0'' MediaTypeID=''1'' ShowInMenu="True" />', N'Value', N'Value', N'@model RazorFieldParams
@{
    var field = (MediaDetailField)Model.Field;
    <ul>
    @foreach(var item in field.FieldAssociations)
    {
        <li>
            <a href="@item.MediaDetail.AbsoluteUrl">@item.MediaDetail.SectionTitle</a>
        </li>
    }
    </ul>    
}', N'<p>This field type displays a field which allows you to select multiple tab seperated items, these items correspond with pages in the site tree, selecting items and hitting the "Save" button will create an association between this field and the selected pages.</p>', CAST(N'2017-02-21T09:43:14.990' AS DateTime), CAST(N'2017-03-15T11:48:54.547' AS DateTime))
INSERT [dbo].[FieldTypes] ([ID], [Name], [CodeToRenderAdminControl], [CodeToGetAdminControlValue], [CodeToSetAdminControlValue], [CodeToRenderFrontEndLayout], [FieldDescription], [DateCreated], [DateLastModified]) VALUES (12, N'Association - Drag Drop List', N'<Admin:AssociationDragDrop runat=''server'' />', N'Value', N'Value', N'@model RazorFieldParams
@{
    var field = (MediaDetailField)Model.Field;

    <ul>
    @foreach(var item in field.FieldAssociations.OrderBy(i=>i.OrderIndex))
    {
        <li><a href=''@item.MediaDetail.AbsoluteUrl''>@item.MediaDetail.SectionTitle</a></li>
        <ul>
        @foreach(var child in item.MediaDetail.ChildMediaDetails.OrderBy(i => i.Media.OrderIndex))
        {
            <li><a href=''@child.AbsoluteUrl''>@child.SectionTitle </a></li>
        }
        </ul>
    }
    </ul>
}', N'<p>This field type displays an area where you can drag and drop pages from the site tree, dragging and dropping pages and hitting the "Save" button will create an association between this field and the dropped pages.</p>', CAST(N'2017-02-21T09:43:56.137' AS DateTime), CAST(N'2017-03-15T11:49:32.240' AS DateTime))
INSERT [dbo].[FieldTypes] ([ID], [Name], [CodeToRenderAdminControl], [CodeToGetAdminControlValue], [CodeToSetAdminControlValue], [CodeToRenderFrontEndLayout], [FieldDescription], [DateCreated], [DateLastModified]) VALUES (13, N'Association - Drop Down List', N'<Admin:AssociationDropDownList runat=''server'' ParentMediaID=''0'' MediaTypeID=''1'' ShowInMenu="True"/>', N'SelectedValue', N'SelectedValue', N'<ul>
@foreach(var item in Model.Field.FieldAssociations)
{
    <li>
        <a href="@item.MediaDetail.AbsoluteUrl">@item.MediaDetail.SectionTitle</a>
    </li>
}
</ul>', N'<p>This field type displays a dropdown list of items, these items correspond with pages in the site tree, selecting an item and hitting the "Save" button will create an association between this field and the selected page.</p>', CAST(N'2017-02-21T09:44:33.403' AS DateTime), CAST(N'2017-03-15T10:57:48.370' AS DateTime))
INSERT [dbo].[FieldTypes] ([ID], [Name], [CodeToRenderAdminControl], [CodeToGetAdminControlValue], [CodeToSetAdminControlValue], [CodeToRenderFrontEndLayout], [FieldDescription], [DateCreated], [DateLastModified]) VALUES (14, N'Association - Check Box List', N'<Admin:AssociationCheckBoxList runat=''server'' ParentMediaID=''0'' MediaTypeID=''1'' ShowInMenu="True" />', N'SelectedValue', N'SelectedValue', N'@model RazorFieldParams
@{
    var field = (MediaDetailField)Model.Field;
    <ul>
    @foreach(var item in field.FieldAssociations)
    {
        <li>
            <a href="@item.MediaDetail.AbsoluteUrl">@item.MediaDetail.SectionTitle</a>
        </li>
    }
    </ul>    
}', N'<p>This field type displays a check box list of items, these items correspond with pages in the site tree, checking items and hitting the "Save" button will create an association between this field and the selected pages.</p>', CAST(N'2017-02-21T09:45:01.800' AS DateTime), CAST(N'2017-03-15T11:49:12.177' AS DateTime))
INSERT [dbo].[FieldTypes] ([ID], [Name], [CodeToRenderAdminControl], [CodeToGetAdminControlValue], [CodeToSetAdminControlValue], [CodeToRenderFrontEndLayout], [FieldDescription], [DateCreated], [DateLastModified]) VALUES (15, N'Association - Radio Box List', N'<Admin:AssociationCheckBoxList runat=''server'' IsRadioButtonList=''True'' ParentMediaID=''0'' MediaTypeID=''1'' ShowInMenu="True" />', N'SelectedValue', N'SelectedValue', N'@model RazorFieldParams
@{
    var field = (MediaDetailField)Model.Field;
    <ul>
    @foreach(var item in field.FieldAssociations)
    {
        <li>
            <a href="@item.MediaDetail.AbsoluteUrl">@item.MediaDetail.SectionTitle</a>
        </li>
    }
    </ul>    
}', N'<p>This field type displays a radio button list of items, these items correspond with pages in the site tree, selecting an item and hitting the "Save" button will create an association between this field and the selected page.</p>', CAST(N'2017-02-21T09:45:32.747' AS DateTime), CAST(N'2017-03-15T11:50:01.833' AS DateTime))
INSERT [dbo].[FieldTypes] ([ID], [Name], [CodeToRenderAdminControl], [CodeToGetAdminControlValue], [CodeToSetAdminControlValue], [CodeToRenderFrontEndLayout], [FieldDescription], [DateCreated], [DateLastModified]) VALUES (16, N'Multi Item - Uploader', N'<Admin:MultiFileUploader runat=''server'' SaveToFolder='''' MediaTypeID=''25'' PageSize=''12'' Mode=''Uploader'' />', N'SelectedValue', N'SelectedValue', N'@model RazorFieldParams
@{
    var field = (MediaDetailField)Model.Field;

    <ul>
    @foreach(var item in field.FieldAssociations.OrderBy(i=>i.OrderIndex))
    {
        <li><a href=''@URIHelper.ConvertToAbsUrl(item.MediaDetail.PathToFile)''><img src=''@URIHelper.ConvertToAbsUrl(item.MediaDetail.PathToFile)?width=300&height=300&mode=min'' alt=''@item.MediaDetail.SectionTitle''></a></li>
    }
    </ul>
}', N'<p>The field type displays a widget that allows you to create multiple items of a specific media type and displays these items in a thumbnail format. You can also upload one or more files / images and this will automaticly create items linking to it.</p>', CAST(N'2017-02-21T09:46:02.030' AS DateTime), CAST(N'2017-03-15T11:51:06.163' AS DateTime))
INSERT [dbo].[FieldTypes] ([ID], [Name], [CodeToRenderAdminControl], [CodeToGetAdminControlValue], [CodeToSetAdminControlValue], [CodeToRenderFrontEndLayout], [FieldDescription], [DateCreated], [DateLastModified]) VALUES (17, N'Multi Item - GridView', N'<Admin:MultiFileUploader runat=''server'' SaveToFolder='''' MediaTypeID=''25'' PageSize=''15'' Mode=''GridView'' />', N'SelectedValue', N'SelectedValue', N'@model RazorFieldParams
@{
    var field = (MediaDetailField)Model.Field;

    <ul>
    @foreach(var item in field.FieldAssociations.OrderBy(i=>i.OrderIndex))
    {
        <li><a href=''@URIHelper.ConvertToAbsUrl(item.MediaDetail.PathToFile)''><img src=''@URIHelper.ConvertToAbsUrl(item.MediaDetail.PathToFile)?width=300&height=300&mode=min'' alt=''@item.MediaDetail.SectionTitle''></a></li>
    }
    </ul>
}', N'<p>The field type displays a widget that allows you to create multiple items of a specific media type. And displays these items in a grid view format.</p>', CAST(N'2017-02-21T09:46:36.107' AS DateTime), CAST(N'2017-03-15T11:51:16.047' AS DateTime))
INSERT [dbo].[FieldTypes] ([ID], [Name], [CodeToRenderAdminControl], [CodeToGetAdminControlValue], [CodeToSetAdminControlValue], [CodeToRenderFrontEndLayout], [FieldDescription], [DateCreated], [DateLastModified]) VALUES (18, N'Hide Tags Field', N'<script type=''text/javascript''>
    $(document).ready(function(){        
        //$(''#ShortDescriptionHolder'').hide();
        //$(''#LongDescriptionHolder'').hide();
        $(''#TagsHolder'').hide();
        //$(''#PathToFileHolder'').hide();
    });
</script>', N'', N'', N'', N'<p>This field type hides hides the TagsHolder Field</p>', CAST(N'2017-02-21T09:46:58.447' AS DateTime), CAST(N'2017-04-22T14:14:57.343' AS DateTime))
INSERT [dbo].[FieldTypes] ([ID], [Name], [CodeToRenderAdminControl], [CodeToGetAdminControlValue], [CodeToSetAdminControlValue], [CodeToRenderFrontEndLayout], [FieldDescription], [DateCreated], [DateLastModified]) VALUES (19, N'Other', N'', N'', N'', N'', N'<p>This is a completly blank field type, which simply blanks all the fields and allows you to put your own code, view the "HideAdminFields" field type to see how i am using it to inject javascript directly in the CMS.</p>', CAST(N'2017-02-21T09:47:11.127' AS DateTime), CAST(N'2017-03-02T11:42:12.370' AS DateTime))
INSERT [dbo].[FieldTypes] ([ID], [Name], [CodeToRenderAdminControl], [CodeToGetAdminControlValue], [CodeToSetAdminControlValue], [CodeToRenderFrontEndLayout], [FieldDescription], [DateCreated], [DateLastModified]) VALUES (20, N'Widget - Gallery', N'<Admin:MultiFileUploader runat=''server'' SaveToFolder='''' MediaTypeID=''25'' PageSize=''12'' Mode=''Uploader'' />', N'SelectedValue', N'SelectedValue', N'<!-- FieldsTab:RazorGallery: Razor Code showing how you can load a field and loop through its associated items -->
@model RazorFieldParams
@{
    var field = (MediaDetailField)Model.Field;
    var wrapperId = "Gallery-"+field.ID;
    var fieldAssociations = field.FieldAssociations.OrderBy(i=>i.OrderIndex);
    
    if(fieldAssociations.Count() > 0)
    {    
        <script>
            head.load([''//cdnjs.cloudflare.com/ajax/libs/bxslider/4.2.12/jquery.bxslider.min.js'',''//cdnjs.cloudflare.com/ajax/libs/bxslider/4.2.12/jquery.bxslider.min.css''], function() {
                // Call a function when done
                $("#@wrapperId").bxSlider();
            });
        </script>
        
        <ul id="@wrapperId">
        @foreach(var item in fieldAssociations)
        {
            <li><a href=''#''>@Raw(item.MediaDetail.RenderField("PathToFile"))</a></li>
        }
        </ul>
    }
}', N'<p>The field type displays a widget that allows you to create multiple items of a specific media type and displays these items in a thumbnail format. You can also upload one or more files / images and this will automaticly create items linking to it. A gallery will show up in the frontend corresponding to the items in this field.</p>', CAST(N'2017-03-30T15:20:29.417' AS DateTime), CAST(N'2017-05-23T16:22:03.430' AS DateTime))
INSERT [dbo].[FieldTypes] ([ID], [Name], [CodeToRenderAdminControl], [CodeToGetAdminControlValue], [CodeToSetAdminControlValue], [CodeToRenderFrontEndLayout], [FieldDescription], [DateCreated], [DateLastModified]) VALUES (22, N'Widget - Tabs', N'<Admin:MultiFileUploader runat=''server'' SaveToFolder='''' MediaTypeID=''25'' PageSize=''12'' Mode=''GridView'' />', N'SelectedValue', N'SelectedValue', N'<!-- FieldsTab:RazorTabs: Razor Code showing how you can load a field and loop through its associated items -->
@model RazorFieldParams
@{
    var field = (MediaDetailField)Model.Field;
    var fieldAssociations = field.FieldAssociations.OrderBy(i=>i.OrderIndex);
    var wrapperId = "Tabs-"+field.ID;
    
    if(fieldAssociations.Count() > 0)
    {
        <script>
            head.load([''//code.jquery.com/ui/1.12.1/jquery-ui.js'',''//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css''], function() {
                // Call a function when done
                $("#@wrapperId").tabs();
            });
        </script>
        
        <div id="@wrapperId">
            <ul>
            @foreach(var item in fieldAssociations)
            {
                <li><a href="#Tab-@item.MediaDetail.MediaID">@Raw(item.MediaDetail.RenderField("SectionTitle"))</a></li>
            }
            </ul>
            @foreach(var item in fieldAssociations)
            {
                <div id="Tab-@item.MediaDetail.MediaID">
                    <p>@Raw(item.MediaDetail.RenderField("MainContent"))</p>
                </div>
            }        
        </div>
    }
}', N'<p>The field type displays a widget that allows you to create multiple items of a specific media type and displays these items in a grid format. Tabs will show up in the frontend corresponding to the items in this field.</p>', CAST(N'2017-05-04T09:19:56.840' AS DateTime), CAST(N'2017-05-23T16:22:21.927' AS DateTime))
INSERT [dbo].[FieldTypes] ([ID], [Name], [CodeToRenderAdminControl], [CodeToGetAdminControlValue], [CodeToSetAdminControlValue], [CodeToRenderFrontEndLayout], [FieldDescription], [DateCreated], [DateLastModified]) VALUES (23, N'Widget - Accordian', N'<Admin:MultiFileUploader runat=''server'' SaveToFolder='''' MediaTypeID=''25'' PageSize=''12'' Mode=''GridView'' />', N'SelectedValue', N'SelectedValue', N'<!-- FieldsTab:RazorAccordian: Razor Code showing how you can load a field and loop through its associated items -->
@model RazorFieldParams
@{
    var field = (MediaDetailField)Model.Field;
    var fieldAssociations = field.FieldAssociations.OrderBy(i=>i.OrderIndex);
    var wrapperId = "Accordian-"+field.ID;

    if(fieldAssociations.Count() > 0)
    {    
        <script>
            head.load([''//code.jquery.com/ui/1.12.1/jquery-ui.js'',''//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css''], function() {
                // Call a function when done
                $("#@wrapperId").accordion();
            });
        </script>
    
        <div id="@wrapperId">
            @foreach(var item in fieldAssociations)
            {
                <h3>@Raw(item.MediaDetail.RenderField("SectionTitle"))</h3>
                <div>
                    @Raw(item.MediaDetail.RenderField("MainContent"))
                </div>            
            }
        </div>
    }
}', N'<p>The field type displays a widget that allows you to create multiple items of a specific media type and displays these items in a grid format. An Accordian will show up in the frontend corresponding to the items in this field.</p>', CAST(N'2017-05-04T09:20:41.923' AS DateTime), CAST(N'2017-05-23T16:21:45.930' AS DateTime))
INSERT [dbo].[FieldTypes] ([ID], [Name], [CodeToRenderAdminControl], [CodeToGetAdminControlValue], [CodeToSetAdminControlValue], [CodeToRenderFrontEndLayout], [FieldDescription], [DateCreated], [DateLastModified]) VALUES (24, N'File Selector - Raw Path To File', N'<Admin:FileSelector runat=''server'' DirPath=''/media/uploads/'' />', N'SelectedFilePath', N'SelectedFilePath', N'', N'', CAST(N'2017-05-23T15:55:59.763' AS DateTime), CAST(N'2017-05-23T16:02:06.077' AS DateTime))
SET IDENTITY_INSERT [dbo].[FieldTypes] OFF
SET IDENTITY_INSERT [dbo].[Languages] ON 

INSERT [dbo].[Languages] ([ID], [DisplayName], [Name], [UriSegment], [CultureCode], [Description], [IsActive], [DateCreated], [DateLastModified]) VALUES (5, N'English', N'English', N'en', N'en-CA', N'Canadian English', 1, CAST(N'2010-12-10T22:51:31.000' AS DateTime), CAST(N'2012-01-12T10:23:53.993' AS DateTime))
INSERT [dbo].[Languages] ([ID], [DisplayName], [Name], [UriSegment], [CultureCode], [Description], [IsActive], [DateCreated], [DateLastModified]) VALUES (6, N'French', N'French', N'fr', N'fr-CA', N'Canadian French', 0, CAST(N'2011-02-05T16:01:55.260' AS DateTime), CAST(N'2017-05-16T14:26:14.997' AS DateTime))
SET IDENTITY_INSERT [dbo].[Languages] OFF
SET IDENTITY_INSERT [dbo].[MasterPages] ON 

INSERT [dbo].[MasterPages] ([ID], [Name], [PathToFile], [MobileTemplate], [UseLayout], [Layout], [DateCreated], [DateLastModified]) VALUES (2, N'Home Page Template', N'', N'', 1, N'<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <meta name="description" content="{GetMetaDescription()}" />
    <meta name="keywords" content="{GetMetaKeywords()}" />
    <title>{GetPageTitle()}</title>
    {Settings:GlobalCodeInHead}
</head>

<body>
    {Settings:GlobalCodeInBody}
    <Site:LoggedInHeader runat="server" /> {{Load:8}.UseMainLayout} {PageContent} {{Load:9}.UseMainLayout}
</body>

</html>', CAST(N'2012-01-12T15:32:36.367' AS DateTime), CAST(N'2017-07-04T15:03:17.937' AS DateTime))
INSERT [dbo].[MasterPages] ([ID], [Name], [PathToFile], [MobileTemplate], [UseLayout], [Layout], [DateCreated], [DateLastModified]) VALUES (3, N'Interior Page Template', N'', N'', 1, N'<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <meta name="description" content="{GetMetaDescription()}" />
    <meta name="keywords" content="{GetMetaKeywords()}" />
    <title>{GetPageTitle()}</title>
    {Settings:GlobalCodeInHead}
</head>

<body>
    {Settings:GlobalCodeInBody}
    <Site:LoggedInHeader runat="server" />

    {{Load:8}.UseMainLayout} {PageContent} {{Load:9}.UseMainLayout}
</body>

</html>', CAST(N'2012-03-05T15:28:40.647' AS DateTime), CAST(N'2017-07-04T15:03:32.503' AS DateTime))
INSERT [dbo].[MasterPages] ([ID], [Name], [PathToFile], [MobileTemplate], [UseLayout], [Layout], [DateCreated], [DateLastModified]) VALUES (4, N'Blank Template ( Includes GlobalSettings )', N'', N'', 1, N'<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <meta name="description" content="{GetMetaDescription()}" />
    <meta name="keywords" content="{GetMetaKeywords()}" />
    <title>{GetPageTitle()}</title>
    {Settings:GlobalCodeInHead}
</head>

<body>
    {Settings:GlobalCodeInBody}
    <Site:LoggedInHeader runat="server" />
    {PageContent}
</body>

</html>', CAST(N'2017-01-20T13:23:29.697' AS DateTime), CAST(N'2017-07-04T11:52:21.440' AS DateTime))
SET IDENTITY_INSERT [dbo].[MasterPages] OFF
SET IDENTITY_INSERT [dbo].[Media] ON 

INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (2, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (3, 2, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (4, 3, 2)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (5, 3, 1)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (6, 5, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (7, 3, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (8, 7, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (9, 7, 1)
SET IDENTITY_INSERT [dbo].[Media] OFF
SET IDENTITY_INSERT [dbo].[MediaDetails] ON 

INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [MetaKeywords], [MetaDescription], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [UseDefaultLanguageLayouts]) VALUES (2, 2, N'Root', N'Root', 0, 0, N'', N'', N'', 5, 0, 0, 0, 0, NULL, CAST(N'2017-07-04T14:19:43.827' AS DateTime), 0, 0, 1, N'', N'', N'~/', 13, 0, NULL, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'', 0, CAST(N'2017-07-04T14:19:43.687' AS DateTime), CAST(N'2017-07-04T14:19:43.827' AS DateTime), 0, 0, 0, N'', NULL, N'', N'', N'', 1, 1)
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [MetaKeywords], [MetaDescription], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [UseDefaultLanguageLayouts]) VALUES (3, 3, N'Home', N'Home', 0, 0, N'', N'', N'', 5, 0, 0, 0, 0, NULL, CAST(N'2017-07-04T14:19:55.030' AS DateTime), 1, 1, 1, N'', N'', N'~/', 19, 0, NULL, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'', 0, CAST(N'2017-07-04T14:19:54.890' AS DateTime), CAST(N'2017-07-04T14:21:53.593' AS DateTime), 0, 0, 0, N'', NULL, N'<h1>{Field:SectionTitle}</h1>
{Field:MainContent}', N'', N'', 1, 1)
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [MetaKeywords], [MetaDescription], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [UseDefaultLanguageLayouts]) VALUES (4, 4, N'Login', N'Login', 0, 0, N'', N'', N'', 5, 0, 0, 0, 0, NULL, CAST(N'2017-07-04T14:20:10.000' AS DateTime), 0, 1, 1, N'', N'', N'~/login/', 1, 0, NULL, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'', 0, CAST(N'2017-07-04T14:20:10.393' AS DateTime), CAST(N'2017-07-04T14:21:58.917' AS DateTime), 0, 0, 0, N'', NULL, N'<form runat="server">
    <div class="login-page-container">
        <Site:Login ID="LoginControl" runat="server" />
    </div>
</form>', N'', N'', 0, 1)
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [MetaKeywords], [MetaDescription], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [UseDefaultLanguageLayouts]) VALUES (6, 5, N'Url Redirect Rules', N'Url Redirect Rules', 0, 0, N'', N'', N'', 5, 0, 0, 0, 0, NULL, CAST(N'2017-07-04T14:50:48.377' AS DateTime), 0, 0, 1, N'', N'', N'~/url-redirect-rules/', 17, 0, NULL, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'', 0, CAST(N'2017-07-04T14:50:48.167' AS DateTime), CAST(N'2017-07-04T14:50:48.377' AS DateTime), 0, 0, 0, N'', NULL, N'', N'', N'', 1, 1)
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [MetaKeywords], [MetaDescription], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [UseDefaultLanguageLayouts]) VALUES (7, 6, N'/sample/ -> /login/', N'/sample/ -> /login/', 0, 0, N'', N'', N'', 5, 0, 0, 0, 0, NULL, CAST(N'2017-07-04T14:51:23.000' AS DateTime), 0, 0, 1, N'', N'', N'~/url-redirect-rules/sample-login/', 16, 0, NULL, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'', 0, CAST(N'2017-07-04T14:51:23.507' AS DateTime), CAST(N'2017-07-04T15:00:20.017' AS DateTime), 0, 0, 0, N'', NULL, N'', N'', N'', 1, 1)
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [MetaKeywords], [MetaDescription], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [UseDefaultLanguageLayouts]) VALUES (8, 6, N'/sample/ -> /login/', N'/sample/ -> /login/', 0, 0, N'', N'', N'', 5, 0, 0, 0, 0, NULL, CAST(N'2017-07-04T14:51:23.813' AS DateTime), 0, 0, 1, N'', N'', N'~/url-redirect-rules/sample-login/', 16, 1, 7, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'', 0, CAST(N'2017-07-04T14:51:30.417' AS DateTime), CAST(N'2017-07-04T14:51:30.417' AS DateTime), 0, 0, 0, N'', NULL, N'', N'', N'', 1, 1)
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [MetaKeywords], [MetaDescription], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [UseDefaultLanguageLayouts]) VALUES (9, 6, N'/sample/ -> /login/', N'/sample/ -> /login/', 0, 0, N'', N'', N'', 5, 0, 0, 0, 0, NULL, CAST(N'2017-07-04T14:51:23.000' AS DateTime), 0, 0, 1, N'', N'', N'~/url-redirect-rules/sample-login/', 16, 2, 7, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'', 0, CAST(N'2017-07-04T14:51:49.983' AS DateTime), CAST(N'2017-07-04T14:51:49.983' AS DateTime), 0, 0, 0, N'', NULL, N'', N'', N'', 1, 1)
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [MetaKeywords], [MetaDescription], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [UseDefaultLanguageLayouts]) VALUES (10, 6, N'/sample/ -> /login/', N'/sample/ -> /login/', 0, 0, N'', N'', N'', 5, 0, 0, 0, 0, NULL, CAST(N'2017-07-04T14:51:23.000' AS DateTime), 0, 0, 1, N'', N'', N'~/url-redirect-rules/sample-login/', 16, 3, 7, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'', 0, CAST(N'2017-07-04T14:58:11.793' AS DateTime), CAST(N'2017-07-04T14:58:11.793' AS DateTime), 0, 0, 0, N'', NULL, N'', N'', N'', 1, 1)
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [MetaKeywords], [MetaDescription], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [UseDefaultLanguageLayouts]) VALUES (11, 6, N'/sample/ -> /login/', N'/sample/ -> /login/', 0, 0, N'', N'', N'', 5, 0, 0, 0, 0, NULL, CAST(N'2017-07-04T14:51:23.000' AS DateTime), 0, 0, 1, N'', N'', N'~/url-redirect-rules/sample-login/', 16, 4, 7, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'', 0, CAST(N'2017-07-04T14:58:21.760' AS DateTime), CAST(N'2017-07-04T14:58:21.760' AS DateTime), 0, 0, 0, N'', NULL, N'', N'', N'', 1, 1)
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [MetaKeywords], [MetaDescription], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [UseDefaultLanguageLayouts]) VALUES (12, 6, N'/sample/ -> /login/', N'/sample/ -> /login/', 0, 0, N'', N'', N'', 5, 0, 0, 0, 0, NULL, CAST(N'2017-07-04T14:51:23.000' AS DateTime), 0, 0, 1, N'', N'', N'~/url-redirect-rules/sample-login/', 16, 5, 7, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'', 0, CAST(N'2017-07-04T15:00:19.943' AS DateTime), CAST(N'2017-07-04T15:00:19.943' AS DateTime), 0, 0, 0, N'', NULL, N'', N'', N'', 1, 1)
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [MetaKeywords], [MetaDescription], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [UseDefaultLanguageLayouts]) VALUES (13, 7, N'Includes', N'Includes', 0, 0, N'', N'', N'', 5, 0, 0, 0, 0, NULL, CAST(N'2017-07-04T15:01:52.077' AS DateTime), 0, 0, 0, N'', N'', N'~/includes/', 31, 0, NULL, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'', 0, CAST(N'2017-07-04T15:01:51.803' AS DateTime), CAST(N'2017-07-04T15:01:52.077' AS DateTime), 0, 0, 0, N'', NULL, N'', N'', N'', 0, 1)
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [MetaKeywords], [MetaDescription], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [UseDefaultLanguageLayouts]) VALUES (14, 8, N'Header', N'Header', 0, 0, N'', N'', N'', 5, 0, 0, 0, 0, NULL, CAST(N'2017-07-04T15:02:12.000' AS DateTime), 0, 0, 0, N'', N'', N'~/includes/header/', 30, 0, NULL, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'', 0, CAST(N'2017-07-04T15:02:12.397' AS DateTime), CAST(N'2017-07-04T15:04:22.373' AS DateTime), 0, 0, 0, N'', NULL, N'<div id="HeaderNav">
    <Site:GenerateNav runat="server" RenderRootMedia="True" RootMediaID="3" RenderDepth="2" DisplayProtectedSections="false" />
</div>', N'', N'', 0, 1)
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [MetaKeywords], [MetaDescription], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [UseDefaultLanguageLayouts]) VALUES (15, 9, N'Header', N'Footer', 0, 0, N'', N'', N'', 5, 0, 0, 0, 0, NULL, CAST(N'2017-07-04T15:02:12.000' AS DateTime), 0, 0, 0, N'', N'', N'~/includes/footer/', 30, 0, NULL, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'', 0, CAST(N'2017-07-04T15:02:22.447' AS DateTime), CAST(N'2017-07-04T15:04:06.280' AS DateTime), 0, 0, 0, N'', NULL, N'<div id="FooterNav">
    <Site:GenerateNav runat="server" RenderRootMedia="False" RootMediaID="3" RenderDepth="2" DisplayProtectedSections="false" />
</div>', N'', N'', 0, 1)
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [MetaKeywords], [MetaDescription], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [UseDefaultLanguageLayouts]) VALUES (16, 9, N'Header', N'Footer', 0, 0, N'', N'', N'', 5, 0, 0, 0, 0, NULL, CAST(N'2017-07-04T15:02:12.690' AS DateTime), 0, 0, 0, N'', N'', N'~/includes/footer/', 30, 1, 15, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'', 0, CAST(N'2017-07-04T15:02:33.783' AS DateTime), CAST(N'2017-07-04T15:02:33.783' AS DateTime), 0, 0, 0, N'', NULL, N'<div id="HeaderNav">
    <Site:GenerateNav runat="server" RenderRootMedia="False" RootMediaID="2" RenderDepth="2" DisplayProtectedSections="false" />
</div>', N'', N'', 0, 1)
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [MetaKeywords], [MetaDescription], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [UseDefaultLanguageLayouts]) VALUES (17, 9, N'Header', N'Footer', 0, 0, N'', N'', N'', 5, 0, 0, 0, 0, NULL, CAST(N'2017-07-04T15:02:12.000' AS DateTime), 0, 0, 0, N'', N'', N'~/includes/footer/', 30, 2, 15, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'', 0, CAST(N'2017-07-04T15:04:06.240' AS DateTime), CAST(N'2017-07-04T15:04:06.240' AS DateTime), 0, 0, 0, N'', NULL, N'<div id="FooterNav">
    <Site:GenerateNav runat="server" RenderRootMedia="False" RootMediaID="2" RenderDepth="2" DisplayProtectedSections="false" />
</div>', N'', N'', 0, 1)
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [MetaKeywords], [MetaDescription], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [UseDefaultLanguageLayouts]) VALUES (18, 8, N'Header', N'Header', 0, 0, N'', N'', N'', 5, 0, 0, 0, 0, NULL, CAST(N'2017-07-04T15:02:12.690' AS DateTime), 0, 0, 0, N'', N'', N'~/includes/header/', 30, 1, 14, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'', 0, CAST(N'2017-07-04T15:04:15.367' AS DateTime), CAST(N'2017-07-04T15:04:15.367' AS DateTime), 0, 0, 0, N'', NULL, N'<div id="HeaderNav">
    <Site:GenerateNav runat="server" RenderRootMedia="False" RootMediaID="2" RenderDepth="2" DisplayProtectedSections="false" />
</div>', N'', N'', 0, 1)
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [MetaKeywords], [MetaDescription], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [UseDefaultLanguageLayouts]) VALUES (19, 8, N'Header', N'Header', 0, 0, N'', N'', N'', 5, 0, 0, 0, 0, NULL, CAST(N'2017-07-04T15:02:12.000' AS DateTime), 0, 0, 0, N'', N'', N'~/includes/header/', 30, 2, 14, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'', 0, CAST(N'2017-07-04T15:04:22.353' AS DateTime), CAST(N'2017-07-04T15:04:22.353' AS DateTime), 0, 0, 0, N'', NULL, N'<div id="HeaderNav">
    <Site:GenerateNav runat="server" RenderRootMedia="False" RootMediaID="3" RenderDepth="2" DisplayProtectedSections="false" />
</div>', N'', N'', 0, 1)
SET IDENTITY_INSERT [dbo].[MediaDetails] OFF
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (34583, 3, 1, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (34584, 3, 2, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (34585, 3, 3, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (34587, 4, 4, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (34588, 4, 5, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (34589, 4, 6, 1, 1)
SET IDENTITY_INSERT [dbo].[MediaTypes] ON 

INSERT [dbo].[MediaTypes] ([ID], [Name], [Label], [MediaTypeHandler], [MasterPageID], [IsActive], [ShowInMenu], [ShowInSearchResults], [ShowInSiteTree], [EnableCaching], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [DateCreated], [DateLastModified]) VALUES (1, N'Page', N'Page', N'~/Views/MediaTypeHandlers/Page.aspx', NULL, 1, 1, 1, 1, 1, N'{MainContent}', N'', N'', 1, CAST(N'2011-02-25T16:00:51.810' AS DateTime), CAST(N'2017-07-04T14:24:34.270' AS DateTime))
INSERT [dbo].[MediaTypes] ([ID], [Name], [Label], [MediaTypeHandler], [MasterPageID], [IsActive], [ShowInMenu], [ShowInSearchResults], [ShowInSiteTree], [EnableCaching], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [DateCreated], [DateLastModified]) VALUES (13, N'RootPage', N'RootPage', N'~/Views/MediaTypeHandlers/RootPage.aspx', NULL, 1, 0, 0, 1, 1, N'', N'', N'', 1, CAST(N'2012-01-17T14:36:29.107' AS DateTime), CAST(N'2017-07-04T14:18:19.477' AS DateTime))
INSERT [dbo].[MediaTypes] ([ID], [Name], [Label], [MediaTypeHandler], [MasterPageID], [IsActive], [ShowInMenu], [ShowInSearchResults], [ShowInSiteTree], [EnableCaching], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [DateCreated], [DateLastModified]) VALUES (16, N'UrlRedirectRule', N'UrlRedirectRule', N'~/Views/MediaTypeHandlers/UrlRedirectRule.aspx', NULL, 1, 0, 0, 1, 1, N'', N'', N'', 1, CAST(N'2012-04-13T15:39:37.113' AS DateTime), CAST(N'2017-05-01T08:25:32.580' AS DateTime))
INSERT [dbo].[MediaTypes] ([ID], [Name], [Label], [MediaTypeHandler], [MasterPageID], [IsActive], [ShowInMenu], [ShowInSearchResults], [ShowInSiteTree], [EnableCaching], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [DateCreated], [DateLastModified]) VALUES (17, N'UrlRedirectRuleList', N'UrlRedirectRuleList', N'~/Views/MediaTypeHandlers/UrlRedirectRuleList.aspx', NULL, 1, 0, 0, 1, 1, N'', N'', N'', 1, CAST(N'2012-04-13T15:40:04.020' AS DateTime), CAST(N'2017-07-04T14:49:08.550' AS DateTime))
INSERT [dbo].[MediaTypes] ([ID], [Name], [Label], [MediaTypeHandler], [MasterPageID], [IsActive], [ShowInMenu], [ShowInSearchResults], [ShowInSiteTree], [EnableCaching], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [DateCreated], [DateLastModified]) VALUES (19, N'Website', N'Website', N'~/Views/MediaTypeHandlers/Website.aspx', 2, 1, 1, 1, 1, 1, N'<h1>{Field:SectionTitle}</h1>
{Field:MainContent}', N'', N'', 1, CAST(N'2012-06-14T16:49:05.997' AS DateTime), CAST(N'2017-07-04T15:01:39.397' AS DateTime))
INSERT [dbo].[MediaTypes] ([ID], [Name], [Label], [MediaTypeHandler], [MasterPageID], [IsActive], [ShowInMenu], [ShowInSearchResults], [ShowInSiteTree], [EnableCaching], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [DateCreated], [DateLastModified]) VALUES (23, N'Blog', N'Blog', N'/Views/MediaTypeHandlers/Blog.aspx', NULL, 1, 1, 0, 1, 0, N'<Site:RenderChildren runat="server" ShowPager="True" PageSize="10" ChildPropertyName="UseSummaryLayout" Where=''MediaType.Name=="BlogPost"'' OrderBy="DateCreated DESC" />', N'', N'', 1, CAST(N'2016-02-26T14:56:06.043' AS DateTime), CAST(N'2017-07-04T14:22:26.247' AS DateTime))
INSERT [dbo].[MediaTypes] ([ID], [Name], [Label], [MediaTypeHandler], [MasterPageID], [IsActive], [ShowInMenu], [ShowInSearchResults], [ShowInSiteTree], [EnableCaching], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [DateCreated], [DateLastModified]) VALUES (24, N'BlogPost', N'BlogPost', N'~/Views/MediaTypeHandlers/Page.aspx', NULL, 1, 0, 0, 1, 1, N'@model Page 
@{
    var relatedItems = Model.GetRelatedItems().Take(3);
    var currentArticleDate = Model.RenderField("ArticlePublishDate");
    if(string.IsNullOrEmpty(currentArticleDate) && Model.PublishDate != null)
    {
        currentArticleDate = StringHelper.FormatOnlyDate((DateTime) Model.PublishDate);
    }
}
<div class="blog-details">
    <article>
        <div class="container">
            <h1 class="blog-title">{Field:SectionTitle}</h1>
                <span class="blog-date">@Raw(currentArticleDate)</span>
                <div class="blog-social-share">
                    <span class=''st_sharethis'' displaytext=''ShareThis''></span>
                    <span class=''st_facebook'' displaytext=''Facebook''></span>
                    <span class=''st_twitter'' displaytext=''Tweet''></span>
                    <span class=''st_linkedin'' displaytext=''LinkedIn''></span>
                    <span class=''st_email'' displaytext=''Email''></span>
                </div>
                {Field:MainContent}
        </div>
    </article>
    <aside>
        <div class="container related-blog-posts">
            <h4>Related Posts</h4>
            @foreach(var item in relatedItems)
            {
                var date = item.RenderField("ArticlePublishDate");
                if(string.IsNullOrEmpty(date) && item.PublishDate != null)
                {
                    date = StringHelper.FormatOnlyDate((DateTime) item.PublishDate);
                }
            <div class="post">
                <h5>@item.RenderField("SectionTitle")</h5>
                <small><em>@date</em></small>
                <p>@Raw(item.RenderField("ShortDescription"))</p>
                <a href="@item.AbsoluteUrl" class="related-blog-posts-link">Read more &raquo;</a>
            </div>
            }
        </div>
    </aside>
</div>
<form runat="server">
    <asp:scriptmanager runat="server"></asp:scriptmanager>
    <site:commentsform runat="server"></site:commentsform>
    <site:commentslist runat="server"></site:commentslist>
</form>', N'', N'', 1, CAST(N'2016-03-11T10:23:22.883' AS DateTime), CAST(N'2017-07-04T14:22:45.570' AS DateTime))
INSERT [dbo].[MediaTypes] ([ID], [Name], [Label], [MediaTypeHandler], [MasterPageID], [IsActive], [ShowInMenu], [ShowInSearchResults], [ShowInSiteTree], [EnableCaching], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [DateCreated], [DateLastModified]) VALUES (25, N'FieldItem', N'FieldItem', N'~/Views/MediaTypeHandlers/Page.aspx', NULL, 1, 0, 0, 0, 0, N'', N'', N'', 1, CAST(N'2016-07-06T09:44:49.593' AS DateTime), CAST(N'2017-07-04T14:22:58.620' AS DateTime))
INSERT [dbo].[MediaTypes] ([ID], [Name], [Label], [MediaTypeHandler], [MasterPageID], [IsActive], [ShowInMenu], [ShowInSearchResults], [ShowInSiteTree], [EnableCaching], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [DateCreated], [DateLastModified]) VALUES (26, N'BlogCategory', N'BlogCategory', N'/Views/MediaTypeHandlers/Blog.aspx', NULL, 1, 0, 0, 1, 1, N'', N'', N'', 1, CAST(N'2016-10-12T08:48:11.100' AS DateTime), CAST(N'2017-07-04T14:22:34.660' AS DateTime))
INSERT [dbo].[MediaTypes] ([ID], [Name], [Label], [MediaTypeHandler], [MasterPageID], [IsActive], [ShowInMenu], [ShowInSearchResults], [ShowInSiteTree], [EnableCaching], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [DateCreated], [DateLastModified]) VALUES (27, N'LandingPage', N'LandingPage', N'/Views/MediaTypeHandlers/LandingPage.aspx', NULL, 1, 0, 0, 1, 1, N'', N'', N'', 1, CAST(N'2016-10-12T08:52:47.283' AS DateTime), CAST(N'2017-07-04T14:23:16.460' AS DateTime))
INSERT [dbo].[MediaTypes] ([ID], [Name], [Label], [MediaTypeHandler], [MasterPageID], [IsActive], [ShowInMenu], [ShowInSearchResults], [ShowInSiteTree], [EnableCaching], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [DateCreated], [DateLastModified]) VALUES (28, N'LandingPages', N'LandingPages', N'/Views/MediaTypeHandlers/Page.aspx', NULL, 1, 0, 0, 1, 1, N'', N'', N'', 1, CAST(N'2016-10-12T08:53:22.953' AS DateTime), CAST(N'2017-07-04T14:23:55.343' AS DateTime))
INSERT [dbo].[MediaTypes] ([ID], [Name], [Label], [MediaTypeHandler], [MasterPageID], [IsActive], [ShowInMenu], [ShowInSearchResults], [ShowInSiteTree], [EnableCaching], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [DateCreated], [DateLastModified]) VALUES (29, N'RedirectPage', N'RedirectPage', N'/Views/MediaTypeHandlers/Page.aspx', NULL, 1, 0, 0, 1, 0, N'', N'', N'', 1, CAST(N'2017-01-30T12:59:52.550' AS DateTime), CAST(N'2017-07-04T14:48:46.597' AS DateTime))
INSERT [dbo].[MediaTypes] ([ID], [Name], [Label], [MediaTypeHandler], [MasterPageID], [IsActive], [ShowInMenu], [ShowInSearchResults], [ShowInSiteTree], [EnableCaching], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [DateCreated], [DateLastModified]) VALUES (30, N'Include', N'Include', N'/Views/MediaTypeHandlers/Page.aspx', 4, 1, 0, 0, 1, 0, N'', N'', N'', 0, CAST(N'2017-07-04T11:53:45.740' AS DateTime), CAST(N'2017-07-04T11:53:45.740' AS DateTime))
INSERT [dbo].[MediaTypes] ([ID], [Name], [Label], [MediaTypeHandler], [MasterPageID], [IsActive], [ShowInMenu], [ShowInSearchResults], [ShowInSiteTree], [EnableCaching], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [DateCreated], [DateLastModified]) VALUES (31, N'Container', N'Container', N'/Views/MediaTypeHandlers/Page.aspx', 4, 1, 0, 0, 1, 0, N'', N'', N'', 0, CAST(N'2017-07-04T11:56:39.263' AS DateTime), CAST(N'2017-07-04T11:57:47.553' AS DateTime))
SET IDENTITY_INSERT [dbo].[MediaTypes] OFF
INSERT [dbo].[MediaTypesChildren] ([MediaTypeID], [AllowedChildMediaTypeID]) VALUES (1, 1)
INSERT [dbo].[MediaTypesChildren] ([MediaTypeID], [AllowedChildMediaTypeID]) VALUES (1, 29)
INSERT [dbo].[MediaTypesChildren] ([MediaTypeID], [AllowedChildMediaTypeID]) VALUES (13, 19)
INSERT [dbo].[MediaTypesChildren] ([MediaTypeID], [AllowedChildMediaTypeID]) VALUES (17, 16)
INSERT [dbo].[MediaTypesChildren] ([MediaTypeID], [AllowedChildMediaTypeID]) VALUES (19, 1)
INSERT [dbo].[MediaTypesChildren] ([MediaTypeID], [AllowedChildMediaTypeID]) VALUES (19, 17)
INSERT [dbo].[MediaTypesChildren] ([MediaTypeID], [AllowedChildMediaTypeID]) VALUES (19, 23)
INSERT [dbo].[MediaTypesChildren] ([MediaTypeID], [AllowedChildMediaTypeID]) VALUES (19, 31)
INSERT [dbo].[MediaTypesChildren] ([MediaTypeID], [AllowedChildMediaTypeID]) VALUES (23, 26)
INSERT [dbo].[MediaTypesChildren] ([MediaTypeID], [AllowedChildMediaTypeID]) VALUES (26, 24)
INSERT [dbo].[MediaTypesChildren] ([MediaTypeID], [AllowedChildMediaTypeID]) VALUES (28, 27)
INSERT [dbo].[MediaTypesChildren] ([MediaTypeID], [AllowedChildMediaTypeID]) VALUES (31, 30)
INSERT [dbo].[MediaTypesFields] ([FieldID], [MediaTypeID], [Instructions]) VALUES (1, 19, N'')
INSERT [dbo].[MediaTypesFields] ([FieldID], [MediaTypeID], [Instructions]) VALUES (2, 19, N'')
INSERT [dbo].[MediaTypesFields] ([FieldID], [MediaTypeID], [Instructions]) VALUES (3, 19, N'')
INSERT [dbo].[MediaTypesFields] ([FieldID], [MediaTypeID], [Instructions]) VALUES (4, 1, N'')
INSERT [dbo].[MediaTypesFields] ([FieldID], [MediaTypeID], [Instructions]) VALUES (5, 1, N'')
INSERT [dbo].[MediaTypesFields] ([FieldID], [MediaTypeID], [Instructions]) VALUES (6, 1, N'')
INSERT [dbo].[MediaTypesFields] ([FieldID], [MediaTypeID], [Instructions]) VALUES (7, 25, N'')
INSERT [dbo].[MediaTypesFields] ([FieldID], [MediaTypeID], [Instructions]) VALUES (9, 25, N'')
INSERT [dbo].[MediaTypesFields] ([FieldID], [MediaTypeID], [Instructions]) VALUES (10, 23, N'')
INSERT [dbo].[MediaTypesFields] ([FieldID], [MediaTypeID], [Instructions]) VALUES (11, 23, N'')
INSERT [dbo].[MediaTypesFields] ([FieldID], [MediaTypeID], [Instructions]) VALUES (12, 23, N'')
INSERT [dbo].[MediaTypesFields] ([FieldID], [MediaTypeID], [Instructions]) VALUES (13, 26, N'')
INSERT [dbo].[MediaTypesFields] ([FieldID], [MediaTypeID], [Instructions]) VALUES (14, 26, N'')
INSERT [dbo].[MediaTypesFields] ([FieldID], [MediaTypeID], [Instructions]) VALUES (15, 26, N'')
INSERT [dbo].[MediaTypesFields] ([FieldID], [MediaTypeID], [Instructions]) VALUES (16, 24, N'')
INSERT [dbo].[MediaTypesFields] ([FieldID], [MediaTypeID], [Instructions]) VALUES (17, 24, N'')
INSERT [dbo].[MediaTypesFields] ([FieldID], [MediaTypeID], [Instructions]) VALUES (18, 24, N'')
INSERT [dbo].[MediaTypesFields] ([FieldID], [MediaTypeID], [Instructions]) VALUES (19, 27, N'')
INSERT [dbo].[MediaTypesFields] ([FieldID], [MediaTypeID], [Instructions]) VALUES (20, 27, N'')
INSERT [dbo].[MediaTypesFields] ([FieldID], [MediaTypeID], [Instructions]) VALUES (21, 27, N'')
INSERT [dbo].[MediaTypesFields] ([FieldID], [MediaTypeID], [Instructions]) VALUES (22, 28, N'')
INSERT [dbo].[MediaTypesFields] ([FieldID], [MediaTypeID], [Instructions]) VALUES (23, 28, N'')
INSERT [dbo].[MediaTypesFields] ([FieldID], [MediaTypeID], [Instructions]) VALUES (24, 28, N'')
INSERT [dbo].[MediaTypesFields] ([FieldID], [MediaTypeID], [Instructions]) VALUES (28, 25, N'')
INSERT [dbo].[MediaTypesFields] ([FieldID], [MediaTypeID], [Instructions]) VALUES (46, 29, N'')
INSERT [dbo].[MediaTypesFields] ([FieldID], [MediaTypeID], [Instructions]) VALUES (47, 29, N'')
INSERT [dbo].[MediaTypesFields] ([FieldID], [MediaTypeID], [Instructions]) VALUES (48, 29, N'')
INSERT [dbo].[MediaTypesFields] ([FieldID], [MediaTypeID], [Instructions]) VALUES (138, 24, N'')
INSERT [dbo].[Pages] ([MediaDetailID]) VALUES (4)
INSERT [dbo].[Pages] ([MediaDetailID]) VALUES (6)
INSERT [dbo].[Pages] ([MediaDetailID]) VALUES (13)
INSERT [dbo].[Pages] ([MediaDetailID]) VALUES (14)
INSERT [dbo].[Pages] ([MediaDetailID]) VALUES (15)
INSERT [dbo].[Pages] ([MediaDetailID]) VALUES (16)
INSERT [dbo].[Pages] ([MediaDetailID]) VALUES (17)
INSERT [dbo].[Pages] ([MediaDetailID]) VALUES (18)
INSERT [dbo].[Pages] ([MediaDetailID]) VALUES (19)
SET IDENTITY_INSERT [dbo].[Permissions] ON 

INSERT [dbo].[Permissions] ([ID], [Name], [EnumName], [Description], [IsActive], [DateCreated], [DateLastModified]) VALUES (13, N'AccessCMS', N'AccessCMS', N'AccessCMS', 1, CAST(N'2017-04-12T10:21:11.460' AS DateTime), CAST(N'2017-04-12T10:21:11.460' AS DateTime))
INSERT [dbo].[Permissions] ([ID], [Name], [EnumName], [Description], [IsActive], [DateCreated], [DateLastModified]) VALUES (14, N'AccessAdvanceOptions', N'AccessAdvanceOptions', N'AccessAdvanceOptions', 1, CAST(N'2017-04-12T10:21:18.033' AS DateTime), CAST(N'2017-04-12T10:21:18.033' AS DateTime))
INSERT [dbo].[Permissions] ([ID], [Name], [EnumName], [Description], [IsActive], [DateCreated], [DateLastModified]) VALUES (15, N'AccessProtectedSections', N'AccessProtectedSections', N'AccessProtectedSections', 1, CAST(N'2017-04-12T10:21:23.627' AS DateTime), CAST(N'2017-04-12T10:21:23.627' AS DateTime))
INSERT [dbo].[Permissions] ([ID], [Name], [EnumName], [Description], [IsActive], [DateCreated], [DateLastModified]) VALUES (16, N'Create', N'Create', N'Create', 1, CAST(N'2017-04-12T10:21:28.780' AS DateTime), CAST(N'2017-04-12T10:21:28.780' AS DateTime))
INSERT [dbo].[Permissions] ([ID], [Name], [EnumName], [Description], [IsActive], [DateCreated], [DateLastModified]) VALUES (17, N'Save', N'Save', N'Save', 1, CAST(N'2017-04-12T10:21:33.990' AS DateTime), CAST(N'2017-04-12T10:21:33.990' AS DateTime))
INSERT [dbo].[Permissions] ([ID], [Name], [EnumName], [Description], [IsActive], [DateCreated], [DateLastModified]) VALUES (18, N'Delete', N'Delete', N'Delete', 1, CAST(N'2017-04-12T10:21:38.623' AS DateTime), CAST(N'2017-04-12T10:21:38.623' AS DateTime))
INSERT [dbo].[Permissions] ([ID], [Name], [EnumName], [Description], [IsActive], [DateCreated], [DateLastModified]) VALUES (19, N'Publish', N'Publish', N'Publish', 1, CAST(N'2017-04-12T10:21:43.407' AS DateTime), CAST(N'2017-04-12T10:21:43.407' AS DateTime))
SET IDENTITY_INSERT [dbo].[Permissions] OFF
SET IDENTITY_INSERT [dbo].[Roles] ON 

INSERT [dbo].[Roles] ([ID], [Name], [EnumName], [Description], [IsActive], [DateCreated], [DateLastModified]) VALUES (20, N'Administrator', N'Administrator', N'Administrator', 1, CAST(N'2011-10-26T14:58:24.577' AS DateTime), CAST(N'2017-04-12T10:22:17.053' AS DateTime))
INSERT [dbo].[Roles] ([ID], [Name], [EnumName], [Description], [IsActive], [DateCreated], [DateLastModified]) VALUES (25, N'Client', N'Client', N'Client', 1, CAST(N'2017-04-12T10:26:27.643' AS DateTime), CAST(N'2017-04-12T10:26:27.643' AS DateTime))
SET IDENTITY_INSERT [dbo].[Roles] OFF
INSERT [dbo].[RolesPermissions] ([RoleID], [PermissionID]) VALUES (20, 13)
INSERT [dbo].[RolesPermissions] ([RoleID], [PermissionID]) VALUES (20, 14)
INSERT [dbo].[RolesPermissions] ([RoleID], [PermissionID]) VALUES (20, 15)
INSERT [dbo].[RolesPermissions] ([RoleID], [PermissionID]) VALUES (20, 16)
INSERT [dbo].[RolesPermissions] ([RoleID], [PermissionID]) VALUES (20, 17)
INSERT [dbo].[RolesPermissions] ([RoleID], [PermissionID]) VALUES (20, 18)
INSERT [dbo].[RolesPermissions] ([RoleID], [PermissionID]) VALUES (20, 19)
INSERT [dbo].[RolesPermissions] ([RoleID], [PermissionID]) VALUES (25, 13)
INSERT [dbo].[RolesPermissions] ([RoleID], [PermissionID]) VALUES (25, 15)
INSERT [dbo].[RolesPermissions] ([RoleID], [PermissionID]) VALUES (25, 16)
INSERT [dbo].[RolesPermissions] ([RoleID], [PermissionID]) VALUES (25, 17)
INSERT [dbo].[RolesPermissions] ([RoleID], [PermissionID]) VALUES (25, 18)
INSERT [dbo].[RolesPermissions] ([RoleID], [PermissionID]) VALUES (25, 19)
INSERT [dbo].[RootPages] ([MediaDetailID]) VALUES (2)
SET IDENTITY_INSERT [dbo].[Settings] ON 

INSERT [dbo].[Settings] ([ID], [GlobalCodeInHead], [GlobalCodeInBody], [ShoppingCartTax], [MaxRequestLength], [MaxUploadFileSizePerFile], [SiteOnlineAtDateTime], [SiteOfflineAtDateTime], [SiteOfflineUrl], [PageNotFoundUrl], [EnableGlossaryTerms], [OutputCacheDurationInSeconds], [DefaultLanguageID], [DefaultMasterPageID], [DateCreated], [DateLastModified]) VALUES (1, N'@{
    var BaseUrl = URIHelper.BaseUrl;
}

<script type="text/javascript">
    var BaseUrl = "@BaseUrl";
</script>

<link rel="stylesheet" href="/Scripts/colorbox-master/example3/colorbox.css" type="text/css" media="all" />
<link rel="stylesheet" href="/Views/MasterPages/SiteTemplates/css/Style.min.css" />
<link rel="shortcut icon" href="/favicon.ico" />

<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js" type="text/javascript" charset="utf-8"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js" type="text/javascript" charset="utf-8"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery.colorbox/1.6.3/jquery.colorbox-min.js" type="text/javascript" charset="utf-8"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/headjs/1.0.3/head.min.js"></script>
<script src="/Scripts/global.js" type="text/javascript" charset="utf-8"></script>', N'<script src="/Scripts/commonFrontEnd.js" type="text/javascript" charset="utf-8"></script>', CAST(0.00 AS Decimal(18, 2)), 0, 0, CAST(N'2016-06-17T22:39:00.000' AS DateTime), NULL, N'/site-offline/', N'/page-not-found/', 0, 31536000, 5, 3, CAST(N'2012-02-08T10:55:42.713' AS DateTime), CAST(N'2017-04-12T10:56:56.250' AS DateTime))
SET IDENTITY_INSERT [dbo].[Settings] OFF
INSERT [dbo].[UrlRedirectRules] ([MediaDetailID], [VirtualPathToRedirect], [RedirectToUrl], [Is301Redirect]) VALUES (7, N'/sample/', N'/login/', 0)
INSERT [dbo].[UrlRedirectRules] ([MediaDetailID], [VirtualPathToRedirect], [RedirectToUrl], [Is301Redirect]) VALUES (8, N'/sample/', N'/login/', 0)
INSERT [dbo].[UrlRedirectRules] ([MediaDetailID], [VirtualPathToRedirect], [RedirectToUrl], [Is301Redirect]) VALUES (9, N'/sample/', N'/login/', 0)
INSERT [dbo].[UrlRedirectRules] ([MediaDetailID], [VirtualPathToRedirect], [RedirectToUrl], [Is301Redirect]) VALUES (10, N'/sample/', N'{Link:4}', 0)
INSERT [dbo].[UrlRedirectRules] ([MediaDetailID], [VirtualPathToRedirect], [RedirectToUrl], [Is301Redirect]) VALUES (11, N'/sample/', N'/login/', 0)
INSERT [dbo].[UrlRedirectRules] ([MediaDetailID], [VirtualPathToRedirect], [RedirectToUrl], [Is301Redirect]) VALUES (12, N'/sample/', N'/login/', 0)
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([ID], [ProfilePhoto], [UserName], [Password], [FirstName], [LastName], [EmailAddress], [AfterLoginStartPage], [AuthenticationType], [LastLoggedInAt], [IsActive], [DateCreated], [DateLastModified]) VALUES (25, N'http://www.gravatar.com/avatar/b642b4217b34b1e8d3bd915fc65c4452.jpg?s=50', N'admin', N'[?a??????%l?3~???', N'', N'', N'test@test.com', N'', N'Forms', CAST(N'2015-12-08T14:18:13.027' AS DateTime), 1, CAST(N'2011-05-31T15:14:59.767' AS DateTime), CAST(N'2017-04-22T10:35:40.617' AS DateTime))
INSERT [dbo].[Users] ([ID], [ProfilePhoto], [UserName], [Password], [FirstName], [LastName], [EmailAddress], [AfterLoginStartPage], [AuthenticationType], [LastLoggedInAt], [IsActive], [DateCreated], [DateLastModified]) VALUES (29, N'', N'client', N'??Mq0?!}?????l?X', N'client', N'client', N'client', N'', N'Forms', NULL, 1, CAST(N'2017-04-12T10:27:28.417' AS DateTime), CAST(N'2017-04-12T10:27:28.417' AS DateTime))
SET IDENTITY_INSERT [dbo].[Users] OFF
INSERT [dbo].[UsersRoles] ([UserID], [RoleID]) VALUES (25, 20)
INSERT [dbo].[UsersRoles] ([UserID], [RoleID]) VALUES (29, 25)
INSERT [dbo].[Website] ([MediaDetailID], [CodeInHead], [CodeInBody]) VALUES (3, N'', N'')
SET ANSI_PADDING ON

GO
/****** Object:  Index [Languages_uq]    Script Date: 7/4/2017 3:06:57 PM ******/
ALTER TABLE [dbo].[Languages] ADD  CONSTRAINT [Languages_uq] UNIQUE NONCLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [Languages_uq2]    Script Date: 7/4/2017 3:06:57 PM ******/
ALTER TABLE [dbo].[Languages] ADD  CONSTRAINT [Languages_uq2] UNIQUE NONCLUSTERED 
(
	[CultureCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UNIQUE_UriSegment]    Script Date: 7/4/2017 3:06:57 PM ******/
ALTER TABLE [dbo].[Languages] ADD  CONSTRAINT [UNIQUE_UriSegment] UNIQUE NONCLUSTERED 
(
	[UriSegment] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[EmailLog] ADD  CONSTRAINT [DF__EmailLog__DateCr__202E7AF5]  DEFAULT (getdate()) FOR [DateCreated]
GO
ALTER TABLE [dbo].[EmailLog] ADD  CONSTRAINT [DF__EmailLog__DateLa__21229F2E]  DEFAULT (getdate()) FOR [DateLastModified]
GO
ALTER TABLE [dbo].[Fields] ADD  CONSTRAINT [DF_Fields_FieldCode]  DEFAULT ('') FOR [FieldCode]
GO
ALTER TABLE [dbo].[Fields] ADD  CONSTRAINT [DF_Fields_FieldDescription]  DEFAULT ('') FOR [FieldDescription]
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
ALTER TABLE [dbo].[Fields] ADD  CONSTRAINT [DF_Fields_ShowFrontEndFieldEditor]  DEFAULT ((1)) FOR [ShowFrontEndFieldEditor]
GO
ALTER TABLE [dbo].[Fields] ADD  CONSTRAINT [DF_Fields_DateCreated]  DEFAULT (getdate()) FOR [DateCreated]
GO
ALTER TABLE [dbo].[Fields] ADD  CONSTRAINT [DF_Fields_DateLastModified]  DEFAULT (getdate()) FOR [DateLastModified]
GO
ALTER TABLE [dbo].[FieldsAssociations] ADD  CONSTRAINT [DF_FieldsAssociations_OrderIndex]  DEFAULT ((0)) FOR [OrderIndex]
GO
ALTER TABLE [dbo].[FieldTypes] ADD  CONSTRAINT [DF_FieldTypes_FieldDescription]  DEFAULT ('') FOR [FieldDescription]
GO
ALTER TABLE [dbo].[FieldTypes] ADD  CONSTRAINT [DF_FieldTypes_DateCreated]  DEFAULT (getdate()) FOR [DateCreated]
GO
ALTER TABLE [dbo].[FieldTypes] ADD  CONSTRAINT [DF_FieldTypes_DateLastModified]  DEFAULT (getdate()) FOR [DateLastModified]
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
ALTER TABLE [dbo].[MediaDetails] ADD  CONSTRAINT [DF_MediaDetails_UseDefaultLanguageLayouts]  DEFAULT ((1)) FOR [UseDefaultLanguageLayouts]
GO
ALTER TABLE [dbo].[MediaDetailsFields] ADD  CONSTRAINT [DF_MediaDetailsFields_UseMediaTypeFieldFrontEndLayout]  DEFAULT ((0)) FOR [UseMediaTypeFieldFrontEndLayout]
GO
ALTER TABLE [dbo].[MediaDetailsFields] ADD  CONSTRAINT [DF_MediaDetailsFields_UseMediaTypeFieldDescription]  DEFAULT ((0)) FOR [UseMediaTypeFieldDescription]
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
ALTER TABLE [dbo].[RolesMedias] ADD  CONSTRAINT [DF_RolesMediaDetails_DateCreated]  DEFAULT (getdate()) FOR [DateCreated]
GO
ALTER TABLE [dbo].[RolesMedias] ADD  CONSTRAINT [DF_RolesMediaDetails_DateLastModified]  DEFAULT (getdate()) FOR [DateLastModified]
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
ALTER TABLE [dbo].[UsersMedias] ADD  CONSTRAINT [DF_UsersMediaDetails_DateCreated]  DEFAULT (getdate()) FOR [DateCreated]
GO
ALTER TABLE [dbo].[UsersMedias] ADD  CONSTRAINT [DF_UsersMediaDetails_DateLastModified]  DEFAULT (getdate()) FOR [DateLastModified]
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
ALTER TABLE [dbo].[RolesMedias]  WITH CHECK ADD  CONSTRAINT [FK_RolesMedia_Media] FOREIGN KEY([MediaID])
REFERENCES [dbo].[Media] ([ID])
GO
ALTER TABLE [dbo].[RolesMedias] CHECK CONSTRAINT [FK_RolesMedia_Media]
GO
ALTER TABLE [dbo].[RolesMedias]  WITH CHECK ADD  CONSTRAINT [FK_RolesMedia_RoleID] FOREIGN KEY([RoleID])
REFERENCES [dbo].[Roles] ([ID])
GO
ALTER TABLE [dbo].[RolesMedias] CHECK CONSTRAINT [FK_RolesMedia_RoleID]
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
ALTER TABLE [dbo].[UsersMedias]  WITH CHECK ADD  CONSTRAINT [FK_UsersMedia_Media] FOREIGN KEY([MediaID])
REFERENCES [dbo].[Media] ([ID])
GO
ALTER TABLE [dbo].[UsersMedias] CHECK CONSTRAINT [FK_UsersMedia_Media]
GO
ALTER TABLE [dbo].[UsersMedias]  WITH CHECK ADD  CONSTRAINT [FK_UsersMedia_UserID] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([ID])
GO
ALTER TABLE [dbo].[UsersMedias] CHECK CONSTRAINT [FK_UsersMedia_UserID]
GO
ALTER TABLE [dbo].[UsersMedias]  WITH CHECK ADD  CONSTRAINT [FK_UsersMediaDetails_PermissionID] FOREIGN KEY([PermissionID])
REFERENCES [dbo].[Permissions] ([ID])
GO
ALTER TABLE [dbo].[UsersMedias] CHECK CONSTRAINT [FK_UsersMediaDetails_PermissionID]
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
