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
ALTER TABLE [dbo].[ScheduledTasks] DROP CONSTRAINT [DF_ScheduledTasks_DateLastModified]
GO
ALTER TABLE [dbo].[ScheduledTasks] DROP CONSTRAINT [DF_ScheduledTasks_DateCreated]
GO
ALTER TABLE [dbo].[ScheduledTasks] DROP CONSTRAINT [DF_ScheduledTasks_IsActive]
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
ALTER TABLE [dbo].[MediaTypes] DROP CONSTRAINT [DF_MediaTypes_OnPublishExecuteCode]
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
ALTER TABLE [dbo].[MediaDetails] DROP CONSTRAINT [DF_MediaDetails_CSS]
GO
ALTER TABLE [dbo].[MediaDetails] DROP CONSTRAINT [DF_MediaDetails_OnPublishExecuteCode]
GO
ALTER TABLE [dbo].[MediaDetails] DROP CONSTRAINT [DF_MediaDetails_EnforceRoleLimitationsOnFrontEnd]
GO
ALTER TABLE [dbo].[MediaDetails] DROP CONSTRAINT [DF_MediaDetails_CanAccessAllChildPages]
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
ALTER TABLE [dbo].[MediaDetails] DROP CONSTRAINT [DF_MediaDetails_MetaRobots]
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
ALTER TABLE [dbo].[Fields] DROP CONSTRAINT [DF_Fields_FieldSettings]
GO
ALTER TABLE [dbo].[Fields] DROP CONSTRAINT [DF_Fields_IsGlobalField]
GO
ALTER TABLE [dbo].[Fields] DROP CONSTRAINT [DF_Fields_FieldFrontEndSubmissions]
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
ALTER TABLE [dbo].[Fields] DROP CONSTRAINT [DF_Fields_UsageExample]
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
/****** Object:  Index [UNIQUE_UriSegment]    Script Date: 4/13/2018 11:42:22 AM ******/
ALTER TABLE [dbo].[Languages] DROP CONSTRAINT [UNIQUE_UriSegment]
GO
/****** Object:  Index [Languages_uq2]    Script Date: 4/13/2018 11:42:22 AM ******/
ALTER TABLE [dbo].[Languages] DROP CONSTRAINT [Languages_uq2]
GO
/****** Object:  Index [Languages_uq]    Script Date: 4/13/2018 11:42:22 AM ******/
ALTER TABLE [dbo].[Languages] DROP CONSTRAINT [Languages_uq]
GO
/****** Object:  Table [dbo].[Website]    Script Date: 4/13/2018 11:42:22 AM ******/
DROP TABLE [dbo].[Website]
GO
/****** Object:  Table [dbo].[WebserviceRequests]    Script Date: 4/13/2018 11:42:22 AM ******/
DROP TABLE [dbo].[WebserviceRequests]
GO
/****** Object:  Table [dbo].[UsersRoles]    Script Date: 4/13/2018 11:42:22 AM ******/
DROP TABLE [dbo].[UsersRoles]
GO
/****** Object:  Table [dbo].[UsersMedias]    Script Date: 4/13/2018 11:42:22 AM ******/
DROP TABLE [dbo].[UsersMedias]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 4/13/2018 11:42:22 AM ******/
DROP TABLE [dbo].[Users]
GO
/****** Object:  Table [dbo].[UrlRedirectRules]    Script Date: 4/13/2018 11:42:22 AM ******/
DROP TABLE [dbo].[UrlRedirectRules]
GO
/****** Object:  Table [dbo].[Tags]    Script Date: 4/13/2018 11:42:22 AM ******/
DROP TABLE [dbo].[Tags]
GO
/****** Object:  Table [dbo].[Settings]    Script Date: 4/13/2018 11:42:22 AM ******/
DROP TABLE [dbo].[Settings]
GO
/****** Object:  Table [dbo].[ScheduledTasks]    Script Date: 4/13/2018 11:42:22 AM ******/
DROP TABLE [dbo].[ScheduledTasks]
GO
/****** Object:  Table [dbo].[RootPages]    Script Date: 4/13/2018 11:42:22 AM ******/
DROP TABLE [dbo].[RootPages]
GO
/****** Object:  Table [dbo].[RolesPermissions]    Script Date: 4/13/2018 11:42:22 AM ******/
DROP TABLE [dbo].[RolesPermissions]
GO
/****** Object:  Table [dbo].[RolesMedias]    Script Date: 4/13/2018 11:42:22 AM ******/
DROP TABLE [dbo].[RolesMedias]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 4/13/2018 11:42:22 AM ******/
DROP TABLE [dbo].[Roles]
GO
/****** Object:  Table [dbo].[Permissions]    Script Date: 4/13/2018 11:42:22 AM ******/
DROP TABLE [dbo].[Permissions]
GO
/****** Object:  Table [dbo].[Pages]    Script Date: 4/13/2018 11:42:22 AM ******/
DROP TABLE [dbo].[Pages]
GO
/****** Object:  Table [dbo].[MediaTypesRoles]    Script Date: 4/13/2018 11:42:22 AM ******/
DROP TABLE [dbo].[MediaTypesRoles]
GO
/****** Object:  Table [dbo].[MediaTypesFields]    Script Date: 4/13/2018 11:42:22 AM ******/
DROP TABLE [dbo].[MediaTypesFields]
GO
/****** Object:  Table [dbo].[MediaTypesChildren]    Script Date: 4/13/2018 11:42:22 AM ******/
DROP TABLE [dbo].[MediaTypesChildren]
GO
/****** Object:  Table [dbo].[MediaTypes]    Script Date: 4/13/2018 11:42:22 AM ******/
DROP TABLE [dbo].[MediaTypes]
GO
/****** Object:  Table [dbo].[MediaTypeRolesPermissions]    Script Date: 4/13/2018 11:42:22 AM ******/
DROP TABLE [dbo].[MediaTypeRolesPermissions]
GO
/****** Object:  Table [dbo].[MediaTags]    Script Date: 4/13/2018 11:42:22 AM ******/
DROP TABLE [dbo].[MediaTags]
GO
/****** Object:  Table [dbo].[MediaDetailsFields]    Script Date: 4/13/2018 11:42:22 AM ******/
DROP TABLE [dbo].[MediaDetailsFields]
GO
/****** Object:  Table [dbo].[MediaDetails]    Script Date: 4/13/2018 11:42:22 AM ******/
DROP TABLE [dbo].[MediaDetails]
GO
/****** Object:  Table [dbo].[MediaComments]    Script Date: 4/13/2018 11:42:22 AM ******/
DROP TABLE [dbo].[MediaComments]
GO
/****** Object:  Table [dbo].[Media]    Script Date: 4/13/2018 11:42:22 AM ******/
DROP TABLE [dbo].[Media]
GO
/****** Object:  Table [dbo].[MasterPages]    Script Date: 4/13/2018 11:42:22 AM ******/
DROP TABLE [dbo].[MasterPages]
GO
/****** Object:  Table [dbo].[Languages]    Script Date: 4/13/2018 11:42:22 AM ******/
DROP TABLE [dbo].[Languages]
GO
/****** Object:  Table [dbo].[IPLocationTracker]    Script Date: 4/13/2018 11:42:22 AM ******/
DROP TABLE [dbo].[IPLocationTracker]
GO
/****** Object:  Table [dbo].[GlossaryTerms]    Script Date: 4/13/2018 11:42:22 AM ******/
DROP TABLE [dbo].[GlossaryTerms]
GO
/****** Object:  Table [dbo].[FieldTypes]    Script Date: 4/13/2018 11:42:22 AM ******/
DROP TABLE [dbo].[FieldTypes]
GO
/****** Object:  Table [dbo].[FieldsAssociations]    Script Date: 4/13/2018 11:42:22 AM ******/
DROP TABLE [dbo].[FieldsAssociations]
GO
/****** Object:  Table [dbo].[Fields]    Script Date: 4/13/2018 11:42:22 AM ******/
DROP TABLE [dbo].[Fields]
GO
/****** Object:  Table [dbo].[EmailLog]    Script Date: 4/13/2018 11:42:22 AM ******/
DROP TABLE [dbo].[EmailLog]
GO
/****** Object:  Table [dbo].[EmailLog]    Script Date: 4/13/2018 11:42:22 AM ******/
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
/****** Object:  Table [dbo].[Fields]    Script Date: 4/13/2018 11:42:23 AM ******/
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
	[UsageExample] [nvarchar](255) NOT NULL,
	[GetAdminControlValue] [nvarchar](max) NOT NULL,
	[SetAdminControlValue] [nvarchar](max) NOT NULL,
	[OrderIndex] [bigint] NOT NULL,
	[GroupName] [nvarchar](255) NOT NULL,
	[FrontEndLayout] [nvarchar](max) NULL,
	[ShowFrontEndFieldEditor] [bit] NOT NULL,
	[FrontEndSubmissions] [nvarchar](max) NOT NULL,
	[IsGlobalField] [bit] NOT NULL,
	[FieldSettings] [nvarchar](max) NOT NULL,
	[DateCreated] [datetime] NOT NULL,
	[DateLastModified] [datetime] NOT NULL,
 CONSTRAINT [PK_Fields] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FieldsAssociations]    Script Date: 4/13/2018 11:42:23 AM ******/
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
/****** Object:  Table [dbo].[FieldTypes]    Script Date: 4/13/2018 11:42:23 AM ******/
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
/****** Object:  Table [dbo].[GlossaryTerms]    Script Date: 4/13/2018 11:42:23 AM ******/
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
/****** Object:  Table [dbo].[IPLocationTracker]    Script Date: 4/13/2018 11:42:23 AM ******/
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
/****** Object:  Table [dbo].[Languages]    Script Date: 4/13/2018 11:42:23 AM ******/
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
/****** Object:  Table [dbo].[MasterPages]    Script Date: 4/13/2018 11:42:23 AM ******/
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
/****** Object:  Table [dbo].[Media]    Script Date: 4/13/2018 11:42:23 AM ******/
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
/****** Object:  Table [dbo].[MediaComments]    Script Date: 4/13/2018 11:42:23 AM ******/
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
/****** Object:  Table [dbo].[MediaDetails]    Script Date: 4/13/2018 11:42:23 AM ******/
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
	[MetaRobots] [nvarchar](255) NOT NULL,
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
	[CanLimitedRolesAccessAllChildPages] [bit] NOT NULL,
	[EnforceRoleLimitationsOnFrontEnd] [bit] NOT NULL,
	[OnPublishExecuteCode] [nvarchar](max) NOT NULL,
	[InjectHtml] [nvarchar](max) NOT NULL,
 CONSTRAINT [MediaDetails_pk] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MediaDetailsFields]    Script Date: 4/13/2018 11:42:23 AM ******/
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
/****** Object:  Table [dbo].[MediaTags]    Script Date: 4/13/2018 11:42:23 AM ******/
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
/****** Object:  Table [dbo].[MediaTypeRolesPermissions]    Script Date: 4/13/2018 11:42:23 AM ******/
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
/****** Object:  Table [dbo].[MediaTypes]    Script Date: 4/13/2018 11:42:23 AM ******/
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
	[OnPublishExecuteCode] [nvarchar](max) NOT NULL,
	[DateCreated] [datetime] NOT NULL,
	[DateLastModified] [datetime] NOT NULL,
 CONSTRAINT [MediaType_pk] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MediaTypesChildren]    Script Date: 4/13/2018 11:42:23 AM ******/
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
/****** Object:  Table [dbo].[MediaTypesFields]    Script Date: 4/13/2018 11:42:23 AM ******/
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
/****** Object:  Table [dbo].[MediaTypesRoles]    Script Date: 4/13/2018 11:42:23 AM ******/
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
/****** Object:  Table [dbo].[Pages]    Script Date: 4/13/2018 11:42:23 AM ******/
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
/****** Object:  Table [dbo].[Permissions]    Script Date: 4/13/2018 11:42:23 AM ******/
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
/****** Object:  Table [dbo].[Roles]    Script Date: 4/13/2018 11:42:23 AM ******/
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
/****** Object:  Table [dbo].[RolesMedias]    Script Date: 4/13/2018 11:42:23 AM ******/
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
/****** Object:  Table [dbo].[RolesPermissions]    Script Date: 4/13/2018 11:42:23 AM ******/
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
/****** Object:  Table [dbo].[RootPages]    Script Date: 4/13/2018 11:42:23 AM ******/
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
/****** Object:  Table [dbo].[ScheduledTasks]    Script Date: 4/13/2018 11:42:23 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ScheduledTasks](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[CodeToExecute] [nvarchar](max) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[DateCreated] [datetime] NOT NULL,
	[DateLastModified] [datetime] NOT NULL,
 CONSTRAINT [PK_ScheduledTasks] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Settings]    Script Date: 4/13/2018 11:42:23 AM ******/
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
/****** Object:  Table [dbo].[Tags]    Script Date: 4/13/2018 11:42:23 AM ******/
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
/****** Object:  Table [dbo].[UrlRedirectRules]    Script Date: 4/13/2018 11:42:23 AM ******/
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
/****** Object:  Table [dbo].[Users]    Script Date: 4/13/2018 11:42:23 AM ******/
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
/****** Object:  Table [dbo].[UsersMedias]    Script Date: 4/13/2018 11:42:23 AM ******/
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
/****** Object:  Table [dbo].[UsersRoles]    Script Date: 4/13/2018 11:42:23 AM ******/
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
/****** Object:  Table [dbo].[WebserviceRequests]    Script Date: 4/13/2018 11:42:23 AM ******/
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
/****** Object:  Table [dbo].[Website]    Script Date: 4/13/2018 11:42:23 AM ******/
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
SET IDENTITY_INSERT [dbo].[EmailLog] ON 

INSERT [dbo].[EmailLog] ([ID], [SenderName], [SenderEmailAddress], [ToEmailAddresses], [FromEmailAddress], [Subject], [Message], [VisitorIP], [RequestUrl], [ServerMessage], [DateCreated], [DateLastModified]) VALUES (1, N'ME', N'macdonald.robinson@zgm.ca', N'macdonald.robinson@zgm.ca', N'noreply@domain.com', N'Test SMTP', N'This is a test', N'::1', N'http://localhost:1112/', N'Successfully sent email', CAST(N'2017-07-21T10:50:36.913' AS DateTime), CAST(N'2017-07-21T10:50:36.913' AS DateTime))
INSERT [dbo].[EmailLog] ([ID], [SenderName], [SenderEmailAddress], [ToEmailAddresses], [FromEmailAddress], [Subject], [Message], [VisitorIP], [RequestUrl], [ServerMessage], [DateCreated], [DateLastModified]) VALUES (2, N'', N'system@localhost', N'macdonald.robinson@zgm.ca', N'noreply@domain.com', N'Contact Form Submission', N'<div>
    <strong>First Name</strong>
    <div>first name</div>
</div>
<div>
    <strong>Last Name</strong>
    <div>last-name</div>
</div>
<div>
    <strong>Email Address</strong>
    <div>example@example.com</div>
</div>', N'::1', N'http://localhost:1112/includes/global-fields/', N'The remote name could not be resolved: ''[SMTP_HOSTNAME_IP]''', CAST(N'2018-01-17T10:02:41.487' AS DateTime), CAST(N'2018-01-17T10:02:41.487' AS DateTime))
INSERT [dbo].[EmailLog] ([ID], [SenderName], [SenderEmailAddress], [ToEmailAddresses], [FromEmailAddress], [Subject], [Message], [VisitorIP], [RequestUrl], [ServerMessage], [DateCreated], [DateLastModified]) VALUES (3, N'', N'system@localhost', N'macdonald.robinson@zgm.ca', N'noreply@domain.com', N'Contact Form Submission', N'<table>
    <tr>
        <th>First Name:</th>
        <td>first name</td>
    </tr>
    <tr>
        <th>Last Name:</th>
        <td>last name</td>
    </tr>    
    <tr>
        <th>Email Address:</th>
        <td>example@example.com</td>
    </tr>      
</table>', N'::1', N'http://localhost:1112/includes/global-fields/', N'The remote name could not be resolved: ''[SMTP_HOSTNAME_IP]''', CAST(N'2018-01-17T10:06:19.883' AS DateTime), CAST(N'2018-01-17T10:06:19.883' AS DateTime))
INSERT [dbo].[EmailLog] ([ID], [SenderName], [SenderEmailAddress], [ToEmailAddresses], [FromEmailAddress], [Subject], [Message], [VisitorIP], [RequestUrl], [ServerMessage], [DateCreated], [DateLastModified]) VALUES (4, N'', N'system@localhost', N'macdonald.robinson@zgm.ca', N'noreply@domain.com', N'Contact Form Submission', N'<table>
    <tr>
        <td><h3>First Name:</h3></td>
        <td>first name</td>
    </tr>
    <tr>
        <td><h3>Last Name:<h3></td>
        <td>last-name</td>
    </tr>    
    <tr>
        <td><h3>Email Address:<h3></td>
        <td>example@example.com</td>
    </tr>      
</table>', N'::1', N'http://localhost:1112/includes/global-fields/', N'The remote name could not be resolved: ''[SMTP_HOSTNAME_IP]''', CAST(N'2018-01-17T10:11:15.343' AS DateTime), CAST(N'2018-01-17T10:11:15.343' AS DateTime))
INSERT [dbo].[EmailLog] ([ID], [SenderName], [SenderEmailAddress], [ToEmailAddresses], [FromEmailAddress], [Subject], [Message], [VisitorIP], [RequestUrl], [ServerMessage], [DateCreated], [DateLastModified]) VALUES (5, N'', N'system@localhost', N'macdonald.robinson@zgm.ca', N'noreply@domain.com', N'Contact Form Submission', N'<table>
    <tr>
        <td><b>First Name:</b></td>
        <td>first name</td>
    </tr>
    <tr>
        <td><b>Last Name:<b></td>
        <td>last-name</td>
    </tr>    
    <tr>
        <td><b>Email Address:<b></td>
        <td>example@example.com</td>
    </tr>      
</table>', N'::1', N'http://localhost:1112/includes/global-fields/', N'The remote name could not be resolved: ''[SMTP_HOSTNAME_IP]''', CAST(N'2018-01-17T10:12:05.370' AS DateTime), CAST(N'2018-01-17T10:12:05.370' AS DateTime))
INSERT [dbo].[EmailLog] ([ID], [SenderName], [SenderEmailAddress], [ToEmailAddresses], [FromEmailAddress], [Subject], [Message], [VisitorIP], [RequestUrl], [ServerMessage], [DateCreated], [DateLastModified]) VALUES (6, N'', N'system@localhost', N'', N'noreply@domain.com', N'Contact Form Submission', N'<table>
    <tr>
        <td><b>First Name:</b></td>
        <td>test</td>
    </tr>
    <tr>
        <td><b>Last Name:<b></td>
        <td>test</td>
    </tr>    
    <tr>
        <td><b>Email Address:<b></td>
        <td>test@test.com</td>
    </tr>      
</table>', N'::1', N'http://localhost:1112/', N'The remote name could not be resolved: ''[SMTP_HOSTNAME_IP]''', CAST(N'2018-03-16T08:45:56.220' AS DateTime), CAST(N'2018-03-16T08:45:56.220' AS DateTime))
INSERT [dbo].[EmailLog] ([ID], [SenderName], [SenderEmailAddress], [ToEmailAddresses], [FromEmailAddress], [Subject], [Message], [VisitorIP], [RequestUrl], [ServerMessage], [DateCreated], [DateLastModified]) VALUES (7, N'', N'', N'', N'system@localhost', N'Contact Form Submission', N'<table>
    <tr>
        <td><b>First Name:</b></td>
        <td>test</td>
    </tr>
    <tr>
        <td><b>Last Name:<b></td>
        <td>test</td>
    </tr>    
    <tr>
        <td><b>Email Address:<b></td>
        <td>test@test.com</td>
    </tr>      
</table>', N'', N'', N'Command "rcpt to: <test@test.com>" failed : 550 Access denied - Invalid HELO name (See RFC5321 4.1.1.1)', CAST(N'2018-03-16T08:46:01.623' AS DateTime), CAST(N'2018-03-16T08:46:01.623' AS DateTime))
INSERT [dbo].[EmailLog] ([ID], [SenderName], [SenderEmailAddress], [ToEmailAddresses], [FromEmailAddress], [Subject], [Message], [VisitorIP], [RequestUrl], [ServerMessage], [DateCreated], [DateLastModified]) VALUES (8, N'', N'system@localhost', N'', N'noreply@domain.com', N'Contact Form Submission', N'<table>
    <tr>
        <td><b>First Name:</b></td>
        <td>test</td>
    </tr>
    <tr>
        <td><b>Last Name:<b></td>
        <td>test</td>
    </tr>    
    <tr>
        <td><b>Email Address:<b></td>
        <td>test@test.com</td>
    </tr>      
</table>', N'::1', N'http://localhost:1112/', N'The remote name could not be resolved: ''[SMTP_HOSTNAME_IP]''', CAST(N'2018-03-16T08:46:01.660' AS DateTime), CAST(N'2018-03-16T08:46:01.660' AS DateTime))
INSERT [dbo].[EmailLog] ([ID], [SenderName], [SenderEmailAddress], [ToEmailAddresses], [FromEmailAddress], [Subject], [Message], [VisitorIP], [RequestUrl], [ServerMessage], [DateCreated], [DateLastModified]) VALUES (9, N'', N'', N'', N'system@localhost', N'Contact Form Submission', N'<table>
    <tr>
        <td><b>First Name:</b></td>
        <td>test</td>
    </tr>
    <tr>
        <td><b>Last Name:<b></td>
        <td>test</td>
    </tr>    
    <tr>
        <td><b>Email Address:<b></td>
        <td>test@test.com</td>
    </tr>      
</table>', N'', N'', N'Command "rcpt to: <test@test.com>" failed : 550 Access denied - Invalid HELO name (See RFC5321 4.1.1.1)', CAST(N'2018-03-16T08:46:06.990' AS DateTime), CAST(N'2018-03-16T08:46:06.990' AS DateTime))
INSERT [dbo].[EmailLog] ([ID], [SenderName], [SenderEmailAddress], [ToEmailAddresses], [FromEmailAddress], [Subject], [Message], [VisitorIP], [RequestUrl], [ServerMessage], [DateCreated], [DateLastModified]) VALUES (10, N'', N'system@localhost', N'', N'noreply@domain.com', N'Contact Form Submission', N'<table>
    <tr>
        <td><b>First Name:</b></td>
        <td>test</td>
    </tr>
    <tr>
        <td><b>Last Name:<b></td>
        <td>test</td>
    </tr>    
    <tr>
        <td><b>Email Address:<b></td>
        <td>test@test.com</td>
    </tr>      
</table>', N'::1', N'http://localhost:1112/', N'The remote name could not be resolved: ''[SMTP_HOSTNAME_IP]''', CAST(N'2018-03-16T08:46:29.527' AS DateTime), CAST(N'2018-03-16T08:46:29.527' AS DateTime))
INSERT [dbo].[EmailLog] ([ID], [SenderName], [SenderEmailAddress], [ToEmailAddresses], [FromEmailAddress], [Subject], [Message], [VisitorIP], [RequestUrl], [ServerMessage], [DateCreated], [DateLastModified]) VALUES (11, N'', N'', N'', N'system@localhost', N'Contact Form Submission', N'<table>
    <tr>
        <td><b>First Name:</b></td>
        <td>test</td>
    </tr>
    <tr>
        <td><b>Last Name:<b></td>
        <td>test</td>
    </tr>    
    <tr>
        <td><b>Email Address:<b></td>
        <td>test@test.com</td>
    </tr>      
</table>', N'', N'', N'Command "rcpt to: <test@test.com>" failed : 550 Access denied - Invalid HELO name (See RFC5321 4.1.1.1)', CAST(N'2018-03-16T08:46:41.397' AS DateTime), CAST(N'2018-03-16T08:46:41.397' AS DateTime))
INSERT [dbo].[EmailLog] ([ID], [SenderName], [SenderEmailAddress], [ToEmailAddresses], [FromEmailAddress], [Subject], [Message], [VisitorIP], [RequestUrl], [ServerMessage], [DateCreated], [DateLastModified]) VALUES (12, N'', N'system@localhost', N'', N'noreply@domain.com', N'Contact Form Submission', N'<table>
    <tr>
        <td><b>First Name:</b></td>
        <td>test</td>
    </tr>
    <tr>
        <td><b>Last Name:<b></td>
        <td>test</td>
    </tr>    
    <tr>
        <td><b>Email Address:<b></td>
        <td>test@test.com</td>
    </tr>      
</table>', N'::1', N'http://localhost:1112/', N'The remote name could not be resolved: ''[SMTP_HOSTNAME_IP]''', CAST(N'2018-03-16T08:46:41.430' AS DateTime), CAST(N'2018-03-16T08:46:41.430' AS DateTime))
INSERT [dbo].[EmailLog] ([ID], [SenderName], [SenderEmailAddress], [ToEmailAddresses], [FromEmailAddress], [Subject], [Message], [VisitorIP], [RequestUrl], [ServerMessage], [DateCreated], [DateLastModified]) VALUES (13, N'', N'', N'', N'system@localhost', N'Contact Form Submission', N'<table>
    <tr>
        <td><b>First Name:</b></td>
        <td>test</td>
    </tr>
    <tr>
        <td><b>Last Name:<b></td>
        <td>test</td>
    </tr>    
    <tr>
        <td><b>Email Address:<b></td>
        <td>test@test.com</td>
    </tr>      
</table>', N'', N'', N'Could not read response from the server. The connection has been closed by the remote server.', CAST(N'2018-03-16T08:46:41.650' AS DateTime), CAST(N'2018-03-16T08:46:41.650' AS DateTime))
INSERT [dbo].[EmailLog] ([ID], [SenderName], [SenderEmailAddress], [ToEmailAddresses], [FromEmailAddress], [Subject], [Message], [VisitorIP], [RequestUrl], [ServerMessage], [DateCreated], [DateLastModified]) VALUES (14, N'', N'system@localhost', N'', N'noreply@domain.com', N'Contact Form Submission', N'<table>
    <tr>
        <td><b>First Name:</b></td>
        <td>test</td>
    </tr>
    <tr>
        <td><b>Last Name:<b></td>
        <td>test</td>
    </tr>    
    <tr>
        <td><b>Email Address:<b></td>
        <td>test@test.com</td>
    </tr>      
</table>', N'::1', N'http://localhost:1112/', N'The remote name could not be resolved: ''[SMTP_HOSTNAME_IP]''', CAST(N'2018-03-20T08:18:18.253' AS DateTime), CAST(N'2018-03-20T08:18:18.253' AS DateTime))
INSERT [dbo].[EmailLog] ([ID], [SenderName], [SenderEmailAddress], [ToEmailAddresses], [FromEmailAddress], [Subject], [Message], [VisitorIP], [RequestUrl], [ServerMessage], [DateCreated], [DateLastModified]) VALUES (15, N'', N'', N'', N'system@localhost', N'Contact Form Submission', N'<table>
    <tr>
        <td><b>First Name:</b></td>
        <td>test</td>
    </tr>
    <tr>
        <td><b>Last Name:<b></td>
        <td>test</td>
    </tr>    
    <tr>
        <td><b>Email Address:<b></td>
        <td>test@test.com</td>
    </tr>      
</table>', N'', N'', N'Could not read response from the server. The connection has been closed by the remote server.', CAST(N'2018-03-20T08:18:25.743' AS DateTime), CAST(N'2018-03-20T08:18:25.743' AS DateTime))
INSERT [dbo].[EmailLog] ([ID], [SenderName], [SenderEmailAddress], [ToEmailAddresses], [FromEmailAddress], [Subject], [Message], [VisitorIP], [RequestUrl], [ServerMessage], [DateCreated], [DateLastModified]) VALUES (16, N'', N'system@localhost', N'', N'noreply@domain.com', N'Contact Form Submission', N'<table>
    <tr>
        <td><b>First Name:</b></td>
        <td>test</td>
    </tr>
    <tr>
        <td><b>Last Name:<b></td>
        <td>test</td>
    </tr>    
    <tr>
        <td><b>Email Address:<b></td>
        <td>test@test.com</td>
    </tr>      
</table>', N'::1', N'http://localhost:1112/', N'The remote name could not be resolved: ''[SMTP_HOSTNAME_IP]''', CAST(N'2018-03-20T08:18:58.870' AS DateTime), CAST(N'2018-03-20T08:18:58.870' AS DateTime))
INSERT [dbo].[EmailLog] ([ID], [SenderName], [SenderEmailAddress], [ToEmailAddresses], [FromEmailAddress], [Subject], [Message], [VisitorIP], [RequestUrl], [ServerMessage], [DateCreated], [DateLastModified]) VALUES (17, N'', N'', N'', N'system@localhost', N'Contact Form Submission', N'<table>
    <tr>
        <td><b>First Name:</b></td>
        <td>test</td>
    </tr>
    <tr>
        <td><b>Last Name:<b></td>
        <td>test</td>
    </tr>    
    <tr>
        <td><b>Email Address:<b></td>
        <td>test@test.com</td>
    </tr>      
</table>', N'', N'', N'Command "rcpt to: <test@test.com>" failed : 550 Access denied - Invalid HELO name (See RFC5321 4.1.1.1)', CAST(N'2018-03-20T08:19:05.810' AS DateTime), CAST(N'2018-03-20T08:19:05.810' AS DateTime))
INSERT [dbo].[EmailLog] ([ID], [SenderName], [SenderEmailAddress], [ToEmailAddresses], [FromEmailAddress], [Subject], [Message], [VisitorIP], [RequestUrl], [ServerMessage], [DateCreated], [DateLastModified]) VALUES (18, N'', N'system@localhost', N'', N'noreply@domain.com', N'Contact Form Submission', N'<table>
    <tr>
        <td><b>First Name:</b></td>
        <td>test</td>
    </tr>
    <tr>
        <td><b>Last Name:<b></td>
        <td>test</td>
    </tr>    
    <tr>
        <td><b>Email Address:<b></td>
        <td>test@test.com</td>
    </tr>      
</table>', N'::1', N'http://localhost:1112/', N'The remote name could not be resolved: ''[SMTP_HOSTNAME_IP]''', CAST(N'2018-03-20T08:41:54.203' AS DateTime), CAST(N'2018-03-20T08:41:54.203' AS DateTime))
INSERT [dbo].[EmailLog] ([ID], [SenderName], [SenderEmailAddress], [ToEmailAddresses], [FromEmailAddress], [Subject], [Message], [VisitorIP], [RequestUrl], [ServerMessage], [DateCreated], [DateLastModified]) VALUES (19, N'', N'', N'', N'system@localhost', N'Contact Form Submission', N'<table>
    <tr>
        <td><b>First Name:</b></td>
        <td>test</td>
    </tr>
    <tr>
        <td><b>Last Name:<b></td>
        <td>test</td>
    </tr>    
    <tr>
        <td><b>Email Address:<b></td>
        <td>test@test.com</td>
    </tr>      
</table>', N'', N'', N'Command "rcpt to: <test@test.com>" failed : 550 Access denied - Invalid HELO name (See RFC5321 4.1.1.1)', CAST(N'2018-03-20T08:42:03.453' AS DateTime), CAST(N'2018-03-20T08:42:03.453' AS DateTime))
INSERT [dbo].[EmailLog] ([ID], [SenderName], [SenderEmailAddress], [ToEmailAddresses], [FromEmailAddress], [Subject], [Message], [VisitorIP], [RequestUrl], [ServerMessage], [DateCreated], [DateLastModified]) VALUES (20, N'', N'system@localhost', N'', N'noreply@domain.com', N'Contact Form Submission', N'<table>
    <tr>
        <td><b>First Name:</b></td>
        <td>test</td>
    </tr>
    <tr>
        <td><b>Last Name:<b></td>
        <td>test</td>
    </tr>    
    <tr>
        <td><b>Email Address:<b></td>
        <td>test@test.com</td>
    </tr>      
</table>', N'::1', N'http://localhost:1112/', N'The remote name could not be resolved: ''[SMTP_HOSTNAME_IP]''', CAST(N'2018-03-20T08:48:28.177' AS DateTime), CAST(N'2018-03-20T08:48:28.177' AS DateTime))
INSERT [dbo].[EmailLog] ([ID], [SenderName], [SenderEmailAddress], [ToEmailAddresses], [FromEmailAddress], [Subject], [Message], [VisitorIP], [RequestUrl], [ServerMessage], [DateCreated], [DateLastModified]) VALUES (21, N'', N'', N'', N'system@localhost', N'Contact Form Submission', N'<table>
    <tr>
        <td><b>First Name:</b></td>
        <td>test</td>
    </tr>
    <tr>
        <td><b>Last Name:<b></td>
        <td>test</td>
    </tr>    
    <tr>
        <td><b>Email Address:<b></td>
        <td>test@test.com</td>
    </tr>      
</table>', N'', N'', N'Could not read response from the server. The connection has been closed by the remote server.', CAST(N'2018-03-20T08:48:34.180' AS DateTime), CAST(N'2018-03-20T08:48:34.180' AS DateTime))
INSERT [dbo].[EmailLog] ([ID], [SenderName], [SenderEmailAddress], [ToEmailAddresses], [FromEmailAddress], [Subject], [Message], [VisitorIP], [RequestUrl], [ServerMessage], [DateCreated], [DateLastModified]) VALUES (22, N'', N'system@localhost', N'', N'noreply@domain.com', N'Contact Form Submission', N'<table>
    <tr>
        <td><b>First Name:</b></td>
        <td>test</td>
    </tr>
    <tr>
        <td><b>Last Name:<b></td>
        <td>test</td>
    </tr>    
    <tr>
        <td><b>Email Address:<b></td>
        <td>test@test.com</td>
    </tr>      
</table>', N'::1', N'http://localhost:1112/', N'The remote name could not be resolved: ''[SMTP_HOSTNAME_IP]''', CAST(N'2018-03-20T08:49:46.727' AS DateTime), CAST(N'2018-03-20T08:49:46.727' AS DateTime))
INSERT [dbo].[EmailLog] ([ID], [SenderName], [SenderEmailAddress], [ToEmailAddresses], [FromEmailAddress], [Subject], [Message], [VisitorIP], [RequestUrl], [ServerMessage], [DateCreated], [DateLastModified]) VALUES (23, N'', N'', N'', N'system@localhost', N'Contact Form Submission', N'<table>
    <tr>
        <td><b>First Name:</b></td>
        <td>test</td>
    </tr>
    <tr>
        <td><b>Last Name:<b></td>
        <td>test</td>
    </tr>    
    <tr>
        <td><b>Email Address:<b></td>
        <td>test@test.com</td>
    </tr>      
</table>', N'', N'', N'Could not read response from the server. The connection has been closed by the remote server.', CAST(N'2018-03-20T08:49:52.700' AS DateTime), CAST(N'2018-03-20T08:49:52.700' AS DateTime))
INSERT [dbo].[EmailLog] ([ID], [SenderName], [SenderEmailAddress], [ToEmailAddresses], [FromEmailAddress], [Subject], [Message], [VisitorIP], [RequestUrl], [ServerMessage], [DateCreated], [DateLastModified]) VALUES (24, N'', N'system@localhost', N'', N'noreply@domain.com', N'Contact Form Submission', N'<table>
    <tr>
        <td><b>First Name:</b></td>
        <td>"test"</td>
    </tr>
    <tr>
        <td><b>Last Name:<b></td>
        <td>"test"</td>
    </tr>    
    <tr>
        <td><b>Email Address:<b></td>
        <td>"test@test.com"</td>
    </tr>      
</table>', N'::1', N'http://localhost:1112/', N'The remote name could not be resolved: ''[SMTP_HOSTNAME_IP]''', CAST(N'2018-03-20T09:02:56.510' AS DateTime), CAST(N'2018-03-20T09:02:56.510' AS DateTime))
INSERT [dbo].[EmailLog] ([ID], [SenderName], [SenderEmailAddress], [ToEmailAddresses], [FromEmailAddress], [Subject], [Message], [VisitorIP], [RequestUrl], [ServerMessage], [DateCreated], [DateLastModified]) VALUES (25, N'', N'', N'', N'system@localhost', N'Contact Form Submission', N'<table>
    <tr>
        <td><b>First Name:</b></td>
        <td>"test"</td>
    </tr>
    <tr>
        <td><b>Last Name:<b></td>
        <td>"test"</td>
    </tr>    
    <tr>
        <td><b>Email Address:<b></td>
        <td>"test@test.com"</td>
    </tr>      
</table>', N'', N'', N'Command "rcpt to: <test@test.com>" failed : 550 Access denied - Invalid HELO name (See RFC5321 4.1.1.1)', CAST(N'2018-03-20T09:03:08.030' AS DateTime), CAST(N'2018-03-20T09:03:08.030' AS DateTime))
INSERT [dbo].[EmailLog] ([ID], [SenderName], [SenderEmailAddress], [ToEmailAddresses], [FromEmailAddress], [Subject], [Message], [VisitorIP], [RequestUrl], [ServerMessage], [DateCreated], [DateLastModified]) VALUES (26, N'', N'system@localhost', N'', N'noreply@domain.com', N'Contact Form Submission', N'<table>
    <tr>
        <td><b>First Name:</b></td>
        <td>test</td>
    </tr>
    <tr>
        <td><b>Last Name:<b></td>
        <td>test</td>
    </tr>    
    <tr>
        <td><b>Email Address:<b></td>
        <td>test@test.com</td>
    </tr>      
</table>', N'::1', N'http://localhost:1112/', N'The remote name could not be resolved: ''[SMTP_HOSTNAME_IP]''', CAST(N'2018-03-20T09:05:05.793' AS DateTime), CAST(N'2018-03-20T09:05:05.793' AS DateTime))
INSERT [dbo].[EmailLog] ([ID], [SenderName], [SenderEmailAddress], [ToEmailAddresses], [FromEmailAddress], [Subject], [Message], [VisitorIP], [RequestUrl], [ServerMessage], [DateCreated], [DateLastModified]) VALUES (27, N'', N'', N'', N'system@localhost', N'Contact Form Submission', N'<table>
    <tr>
        <td><b>First Name:</b></td>
        <td>test</td>
    </tr>
    <tr>
        <td><b>Last Name:<b></td>
        <td>test</td>
    </tr>    
    <tr>
        <td><b>Email Address:<b></td>
        <td>test@test.com</td>
    </tr>      
</table>', N'', N'', N'Could not read response from the server. The connection has been closed by the remote server.', CAST(N'2018-03-20T09:05:06.443' AS DateTime), CAST(N'2018-03-20T09:05:06.443' AS DateTime))
INSERT [dbo].[EmailLog] ([ID], [SenderName], [SenderEmailAddress], [ToEmailAddresses], [FromEmailAddress], [Subject], [Message], [VisitorIP], [RequestUrl], [ServerMessage], [DateCreated], [DateLastModified]) VALUES (28, N'', N'system@localhost', N'', N'noreply@domain.com', N'Contact Form Submission', N'<table>
    <tr>
        <td><b>First Name:</b></td>
        <td></td>
    </tr>
    <tr>
        <td><b>Last Name:<b></td>
        <td></td>
    </tr>    
    <tr>
        <td><b>Email Address:<b></td>
        <td></td>
    </tr>      
</table>', N'::1', N'http://localhost:1112/', N'The remote name could not be resolved: ''[SMTP_HOSTNAME_IP]''', CAST(N'2018-03-26T13:53:52.850' AS DateTime), CAST(N'2018-03-26T13:53:52.850' AS DateTime))
INSERT [dbo].[EmailLog] ([ID], [SenderName], [SenderEmailAddress], [ToEmailAddresses], [FromEmailAddress], [Subject], [Message], [VisitorIP], [RequestUrl], [ServerMessage], [DateCreated], [DateLastModified]) VALUES (29, N'', N'', N'', N'system@localhost', N'Contact Form Submission', N'<table>
    <tr>
        <td><b>First Name:</b></td>
        <td></td>
    </tr>
    <tr>
        <td><b>Last Name:<b></td>
        <td></td>
    </tr>    
    <tr>
        <td><b>Email Address:<b></td>
        <td></td>
    </tr>      
</table>', N'', N'', N'Command "rcpt to: <test@test.com>" failed : 550 Access denied - Invalid HELO name (See RFC5321 4.1.1.1)', CAST(N'2018-03-26T13:54:08.877' AS DateTime), CAST(N'2018-03-26T13:54:08.877' AS DateTime))
INSERT [dbo].[EmailLog] ([ID], [SenderName], [SenderEmailAddress], [ToEmailAddresses], [FromEmailAddress], [Subject], [Message], [VisitorIP], [RequestUrl], [ServerMessage], [DateCreated], [DateLastModified]) VALUES (30, N'', N'system@localhost', N'', N'noreply@domain.com', N'Contact Form Submission', N'<table>
    <tr>
        <td><b>First Name:</b></td>
        <td>test</td>
    </tr>
    <tr>
        <td><b>Last Name:<b></td>
        <td>test</td>
    </tr>    
    <tr>
        <td><b>Email Address:<b></td>
        <td>test@test.com</td>
    </tr>      
</table>', N'::1', N'http://localhost:1112/', N'The remote name could not be resolved: ''[SMTP_HOSTNAME_IP]''', CAST(N'2018-03-26T15:14:35.767' AS DateTime), CAST(N'2018-03-26T15:14:35.767' AS DateTime))
INSERT [dbo].[EmailLog] ([ID], [SenderName], [SenderEmailAddress], [ToEmailAddresses], [FromEmailAddress], [Subject], [Message], [VisitorIP], [RequestUrl], [ServerMessage], [DateCreated], [DateLastModified]) VALUES (31, N'', N'', N'', N'system@localhost', N'Contact Form Submission', N'<table>
    <tr>
        <td><b>First Name:</b></td>
        <td>test</td>
    </tr>
    <tr>
        <td><b>Last Name:<b></td>
        <td>test</td>
    </tr>    
    <tr>
        <td><b>Email Address:<b></td>
        <td>test@test.com</td>
    </tr>      
</table>', N'', N'', N'Command "rcpt to: <test@test.com>" failed : 550 Access denied - Invalid HELO name (See RFC5321 4.1.1.1)', CAST(N'2018-03-26T15:14:41.097' AS DateTime), CAST(N'2018-03-26T15:14:41.097' AS DateTime))
SET IDENTITY_INSERT [dbo].[EmailLog] OFF
SET IDENTITY_INSERT [dbo].[Fields] ON 

INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (1, N'SectionTitle', N'Section Title', N'<p>This field type displays a simple input field.</p>', 0, N'<asp:TextBox runat=''server'' />', N'', N'', N'Text', N'Text', 0, N'', N'', 1, N'', 0, N'', CAST(N'2018-01-18T10:46:34.287' AS DateTime), CAST(N'2018-01-18T10:46:34.287' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (3, N'ShortDescription', N'Short Description', N'<p>This field type displays a TinyMCE WYSIWYG editor.</p>', 0, N'<Admin:Editor runat=''server'' Height=''200px'' />', N'', N'', N'EditorInstance.Text', N'EditorInstance.Text', 0, N'', N'', 1, N'', 0, N'', CAST(N'2018-01-18T10:46:37.337' AS DateTime), CAST(N'2018-01-18T10:46:37.337' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (5, N'MainContent', N'Main Content', N'<p>This field type displays a TinyMCE WYSIWYG editor.</p>', 0, N'<Admin:Editor runat=''server'' Height=''400px'' />', N'', N'', N'EditorInstance.Text', N'EditorInstance.Text', 0, N'', N'', 1, N'', 0, N'', CAST(N'2018-01-18T10:46:40.873' AS DateTime), CAST(N'2018-01-18T10:46:40.873' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (10, N'SectionTitle', N'Section Title', N'<p>This field type displays a simple input field.</p>', 0, N'<asp:TextBox runat=''server'' />', N'', N'', N'Text', N'Text', 0, N'', N'', 1, N'', 0, N'', CAST(N'2018-01-18T10:46:07.223' AS DateTime), CAST(N'2018-01-18T10:46:07.223' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (11, N'ShortDescription', N'Short Description', N'<p>This field type displays a TinyMCE WYSIWYG editor.</p>', 0, N'<Admin:Editor runat=''server'' Height=''200px'' />', N'', N'', N'EditorInstance.Text', N'EditorInstance.Text', 0, N'', N'', 1, N'', 0, N'', CAST(N'2018-01-18T10:46:09.327' AS DateTime), CAST(N'2018-01-18T10:46:09.327' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (12, N'MainContent', N'Main Content', N'<p>This field type displays a TinyMCE WYSIWYG editor.</p>', 0, N'<Admin:Editor runat=''server'' Height=''400px'' />', N'', N'', N'EditorInstance.Text', N'EditorInstance.Text', 0, N'', N'', 1, N'', 0, N'', CAST(N'2018-01-18T10:46:12.093' AS DateTime), CAST(N'2018-01-18T10:46:12.093' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (13, N'SectionTitle', N'Section Title', N'<p>This field type displays a simple input field.</p>', 0, N'<asp:TextBox runat=''server'' />', N'Login', N'{Field:SectionTitle} OR {{Load:3}.Field:SectionTitle}', N'Text', N'Text', 0, N'', N'', 1, N'', 0, N'', CAST(N'2018-01-18T10:46:07.223' AS DateTime), CAST(N'2018-01-18T10:46:07.233' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (14, N'ShortDescription', N'Short Description', N'<p>This field type displays a TinyMCE WYSIWYG editor.</p>', 0, N'<Admin:Editor runat=''server'' Height=''200px'' />', N'<p>Login</p>', N'{Field:ShortDescription} OR {{Load:3}.Field:ShortDescription}', N'EditorInstance.Text', N'EditorInstance.Text', 0, N'', N'', 1, N'', 0, N'', CAST(N'2018-01-18T10:46:09.327' AS DateTime), CAST(N'2018-01-18T10:46:09.327' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (15, N'MainContent', N'Main Content', N'<p>This field type displays a TinyMCE WYSIWYG editor.</p>', 0, N'<Admin:Editor runat=''server'' Height=''400px'' />', N'<p>Login</p>', N'{Field:MainContent} OR {{Load:3}.Field:MainContent}', N'EditorInstance.Text', N'EditorInstance.Text', 0, N'', N'', 1, N'', 0, N'', CAST(N'2018-01-18T10:46:12.093' AS DateTime), CAST(N'2018-01-18T10:46:12.093' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (16, N'SectionTitle', N'Section Title', N'<p>This field type displays a simple input field.</p>', 0, N'<asp:TextBox runat=''server'' />', N'Page Not Found', N'{Field:SectionTitle} OR {{Load:4}.Field:SectionTitle}', N'Text', N'Text', 0, N'', N'', 1, N'', 0, N'', CAST(N'2018-01-18T10:46:07.223' AS DateTime), CAST(N'2018-01-18T10:46:07.233' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (17, N'ShortDescription', N'Short Description', N'<p>This field type displays a TinyMCE WYSIWYG editor.</p>', 0, N'<Admin:Editor runat=''server'' Height=''200px'' />', N'<p>Page Not Found</p>', N'{Field:ShortDescription} OR {{Load:4}.Field:ShortDescription}', N'EditorInstance.Text', N'EditorInstance.Text', 0, N'', N'', 1, N'', 0, N'', CAST(N'2018-01-18T10:46:09.327' AS DateTime), CAST(N'2018-01-18T10:46:09.330' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (18, N'MainContent', N'Main Content', N'<p>This field type displays a TinyMCE WYSIWYG editor.</p>', 0, N'<Admin:Editor runat=''server'' Height=''400px'' />', N'<p>Page Not Found</p>', N'{Field:MainContent} OR {{Load:4}.Field:MainContent}', N'EditorInstance.Text', N'EditorInstance.Text', 0, N'', N'', 1, N'', 0, N'', CAST(N'2018-01-18T10:46:12.093' AS DateTime), CAST(N'2018-01-18T10:46:12.093' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (21, N'SectionTitle', N'Section Title', N'<p>This field type displays a simple input field.</p>', 0, N'<asp:TextBox runat=''server'' />', N'', N'', N'Text', N'Text', 0, N'', N'', 1, N'', 0, N'', CAST(N'2018-01-18T10:47:22.447' AS DateTime), CAST(N'2018-01-18T10:47:22.447' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (22, N'ShortDescription', N'Short Description', N'<p>This field type displays a TinyMCE WYSIWYG editor.</p>', 0, N'<Admin:Editor runat=''server'' Height=''200px'' />', N'', N'', N'EditorInstance.Text', N'EditorInstance.Text', 0, N'', N'', 1, N'', 0, N'', CAST(N'2018-01-18T10:47:25.663' AS DateTime), CAST(N'2018-01-18T10:47:25.663' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (23, N'MainContent', N'Main Content', N'<p>This field type displays a TinyMCE WYSIWYG editor.</p>', 0, N'<Admin:Editor runat=''server'' Height=''400px'' />', N'', N'', N'EditorInstance.Text', N'EditorInstance.Text', 0, N'', N'', 1, N'', 0, N'', CAST(N'2018-01-18T10:47:29.177' AS DateTime), CAST(N'2018-01-18T10:47:29.177' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (24, N'SectionTitle', N'Section Title', N'<p>This field type displays a simple input field.</p>', 0, N'<asp:TextBox runat=''server'' />', N'Tab1', N'{Field:SectionTitle} OR {{Load:12}.Field:SectionTitle}', N'Text', N'Text', 0, N'', N'', 1, N'', 0, N'', CAST(N'2018-01-18T10:47:22.447' AS DateTime), CAST(N'2018-01-18T10:47:22.450' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (25, N'ShortDescription', N'Short Description', N'<p>This field type displays a TinyMCE WYSIWYG editor.</p>', 0, N'<Admin:Editor runat=''server'' Height=''200px'' />', N'New Item', N'{Field:ShortDescription} OR {{Load:12}.Field:ShortDescription}', N'EditorInstance.Text', N'EditorInstance.Text', 0, N'', N'', 1, N'', 0, N'', CAST(N'2018-01-18T10:47:25.663' AS DateTime), CAST(N'2018-01-18T10:47:25.667' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (26, N'MainContent', N'Main Content', N'<p>This field type displays a TinyMCE WYSIWYG editor.</p>', 0, N'<Admin:Editor runat=''server'' Height=''400px'' />', N'<p>Tab1 content</p>', N'{Field:MainContent} OR {{Load:12}.Field:MainContent}', N'EditorInstance.Text', N'EditorInstance.Text', 0, N'', N'', 1, N'', 0, N'', CAST(N'2018-01-18T10:47:29.177' AS DateTime), CAST(N'2018-01-18T10:47:29.177' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (27, N'SectionTitle', N'Section Title', N'<p>This field type displays a simple input field.</p>', 0, N'<asp:TextBox runat=''server'' />', N'New Item', N'{Field:SectionTitle} OR {{Load:13}.Field:SectionTitle}', N'Text', N'Text', 0, N'', N'', 1, N'', 0, N'', CAST(N'2018-01-18T10:47:22.447' AS DateTime), CAST(N'2018-01-18T10:47:22.450' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (28, N'ShortDescription', N'Short Description', N'<p>This field type displays a TinyMCE WYSIWYG editor.</p>', 0, N'<Admin:Editor runat=''server'' Height=''200px'' />', N'New Item', N'{Field:ShortDescription} OR {{Load:13}.Field:ShortDescription}', N'EditorInstance.Text', N'EditorInstance.Text', 0, N'', N'', 1, N'', 0, N'', CAST(N'2018-01-18T10:47:25.663' AS DateTime), CAST(N'2018-01-18T10:47:25.667' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (29, N'MainContent', N'Main Content', N'<p>This field type displays a TinyMCE WYSIWYG editor.</p>', 0, N'<Admin:Editor runat=''server'' Height=''400px'' />', N'New Item', N'{Field:MainContent} OR {{Load:13}.Field:MainContent}', N'EditorInstance.Text', N'EditorInstance.Text', 0, N'', N'', 1, N'', 0, N'', CAST(N'2018-01-18T10:47:29.177' AS DateTime), CAST(N'2018-01-18T10:47:29.180' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (53, N'SectionTitle', N'Section Title', N'<p>This field type displays a simple input field.</p>', 0, N'<asp:TextBox runat=''server'' />', N'New Item', N'{Field:SectionTitle} OR {{Load:18}.Field:SectionTitle}', N'Text', N'Text', 0, N'', N'', 1, N'', 0, N'', CAST(N'2018-01-18T10:47:22.447' AS DateTime), CAST(N'2018-01-18T10:47:22.453' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (54, N'ShortDescription', N'Short Description', N'<p>This field type displays a TinyMCE WYSIWYG editor.</p>', 0, N'<Admin:Editor runat=''server'' Height=''200px'' />', N'New Item', N'{Field:ShortDescription} OR {{Load:18}.Field:ShortDescription}', N'EditorInstance.Text', N'EditorInstance.Text', 0, N'', N'', 1, N'', 0, N'', CAST(N'2018-01-18T10:47:25.663' AS DateTime), CAST(N'2018-01-18T10:47:25.667' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (55, N'MainContent', N'Main Content', N'<p>This field type displays a TinyMCE WYSIWYG editor.</p>', 0, N'<Admin:Editor runat=''server'' Height=''400px'' />', N'New Item', N'{Field:MainContent} OR {{Load:18}.Field:MainContent}', N'EditorInstance.Text', N'EditorInstance.Text', 0, N'', N'', 1, N'', 0, N'', CAST(N'2018-01-18T10:47:29.177' AS DateTime), CAST(N'2018-01-18T10:47:29.180' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (56, N'SectionTitle', N'Section Title', N'<p>This field type displays a simple input field.</p>', 0, N'<asp:TextBox runat=''server'' />', N'New Item', N'{Field:SectionTitle} OR {{Load:19}.Field:SectionTitle}', N'Text', N'Text', 0, N'', N'', 1, N'', 0, N'', CAST(N'2018-01-18T10:47:22.447' AS DateTime), CAST(N'2018-01-18T10:47:22.453' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (57, N'ShortDescription', N'Short Description', N'<p>This field type displays a TinyMCE WYSIWYG editor.</p>', 0, N'<Admin:Editor runat=''server'' Height=''200px'' />', N'New Item', N'{Field:ShortDescription} OR {{Load:19}.Field:ShortDescription}', N'EditorInstance.Text', N'EditorInstance.Text', 0, N'', N'', 1, N'', 0, N'', CAST(N'2018-01-18T10:47:25.663' AS DateTime), CAST(N'2018-01-18T10:47:25.667' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (58, N'MainContent', N'Main Content', N'<p>This field type displays a TinyMCE WYSIWYG editor.</p>', 0, N'<Admin:Editor runat=''server'' Height=''400px'' />', N'New Item', N'{Field:MainContent} OR {{Load:19}.Field:MainContent}', N'EditorInstance.Text', N'EditorInstance.Text', 0, N'', N'', 1, N'', 0, N'', CAST(N'2018-01-18T10:47:29.177' AS DateTime), CAST(N'2018-01-18T10:47:29.180' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (59, N'SectionTitle', N'Section Title', N'<p>This field type displays a simple input field.</p>', 0, N'<asp:TextBox runat=''server'' />', N'New Item', N'{Field:SectionTitle} OR {{Load:20}.Field:SectionTitle}', N'Text', N'Text', 0, N'', N'', 1, N'', 0, N'', CAST(N'2018-01-18T10:47:22.447' AS DateTime), CAST(N'2018-01-18T10:47:22.453' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (60, N'ShortDescription', N'Short Description', N'<p>This field type displays a TinyMCE WYSIWYG editor.</p>', 0, N'<Admin:Editor runat=''server'' Height=''200px'' />', N'New Item', N'{Field:ShortDescription} OR {{Load:20}.Field:ShortDescription}', N'EditorInstance.Text', N'EditorInstance.Text', 0, N'', N'', 1, N'', 0, N'', CAST(N'2018-01-18T10:47:25.663' AS DateTime), CAST(N'2018-01-18T10:47:25.667' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (61, N'MainContent', N'Main Content', N'<p>This field type displays a TinyMCE WYSIWYG editor.</p>', 0, N'<Admin:Editor runat=''server'' Height=''400px'' />', N'New Item', N'{Field:MainContent} OR {{Load:20}.Field:MainContent}', N'EditorInstance.Text', N'EditorInstance.Text', 0, N'', N'', 1, N'', 0, N'', CAST(N'2018-01-18T10:47:29.177' AS DateTime), CAST(N'2018-01-18T10:47:29.180' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (63, N'SectionTitle', N'Section Title', N'<p>This field type displays a simple input field.</p>', 0, N'<asp:TextBox runat=''server'' />', N'New Item', N'{Field:SectionTitle} OR {{Load:21}.Field:SectionTitle}', N'Text', N'Text', 0, N'', N'', 1, N'', 0, N'', CAST(N'2018-01-18T10:47:22.447' AS DateTime), CAST(N'2018-01-18T10:47:22.453' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (64, N'ShortDescription', N'Short Description', N'<p>This field type displays a TinyMCE WYSIWYG editor.</p>', 0, N'<Admin:Editor runat=''server'' Height=''200px'' />', N'New Item', N'{Field:ShortDescription} OR {{Load:21}.Field:ShortDescription}', N'EditorInstance.Text', N'EditorInstance.Text', 0, N'', N'', 1, N'', 0, N'', CAST(N'2018-01-18T10:47:25.663' AS DateTime), CAST(N'2018-01-18T10:47:25.670' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (65, N'MainContent', N'Main Content', N'<p>This field type displays a TinyMCE WYSIWYG editor.</p>', 0, N'<Admin:Editor runat=''server'' Height=''400px'' />', N'New Item', N'{Field:MainContent} OR {{Load:21}.Field:MainContent}', N'EditorInstance.Text', N'EditorInstance.Text', 0, N'', N'', 1, N'', 0, N'', CAST(N'2018-01-18T10:47:29.177' AS DateTime), CAST(N'2018-01-18T10:47:29.180' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (66, N'SectionTitle', N'Section Title', N'<p>This field type displays a simple input field.</p>', 0, N'<asp:TextBox runat=''server'' />', N'New Item', N'{Field:SectionTitle} OR {{Load:22}.Field:SectionTitle}', N'Text', N'Text', 0, N'', N'', 1, N'', 0, N'', CAST(N'2018-01-18T10:47:22.447' AS DateTime), CAST(N'2018-01-18T10:47:22.453' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (67, N'ShortDescription', N'Short Description', N'<p>This field type displays a TinyMCE WYSIWYG editor.</p>', 0, N'<Admin:Editor runat=''server'' Height=''200px'' />', N'New Item', N'{Field:ShortDescription} OR {{Load:22}.Field:ShortDescription}', N'EditorInstance.Text', N'EditorInstance.Text', 0, N'', N'', 1, N'', 0, N'', CAST(N'2018-01-18T10:47:25.663' AS DateTime), CAST(N'2018-01-18T10:47:25.670' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (68, N'MainContent', N'Main Content', N'<p>This field type displays a TinyMCE WYSIWYG editor.</p>', 0, N'<Admin:Editor runat=''server'' Height=''400px'' />', N'New Item', N'{Field:MainContent} OR {{Load:22}.Field:MainContent}', N'EditorInstance.Text', N'EditorInstance.Text', 0, N'', N'', 1, N'', 0, N'', CAST(N'2018-01-18T10:47:29.177' AS DateTime), CAST(N'2018-01-18T10:47:29.183' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (70, N'SectionTitle', N'Section Title', N'<p>This field type displays a simple input field.</p>', 0, N'<asp:TextBox runat=''server'' />', N'Annette-aft-bandaids.png', N'{Field:SectionTitle} OR {{Load:23}.Field:SectionTitle}', N'Text', N'Text', 0, N'', N'', 1, N'', 0, N'', CAST(N'2018-01-18T10:47:22.447' AS DateTime), CAST(N'2018-01-18T10:47:22.457' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (71, N'ShortDescription', N'Short Description', N'<p>This field type displays a TinyMCE WYSIWYG editor.</p>', 0, N'<Admin:Editor runat=''server'' Height=''200px'' />', N'Annette-aft-bandaids.png', N'{Field:ShortDescription} OR {{Load:23}.Field:ShortDescription}', N'EditorInstance.Text', N'EditorInstance.Text', 0, N'', N'', 1, N'', 0, N'', CAST(N'2018-01-18T10:47:25.663' AS DateTime), CAST(N'2018-01-18T10:47:25.670' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (72, N'MainContent', N'Main Content', N'<p>This field type displays a TinyMCE WYSIWYG editor.</p>', 0, N'<Admin:Editor runat=''server'' Height=''400px'' />', N'Annette-aft-bandaids.png', N'{Field:MainContent} OR {{Load:23}.Field:MainContent}', N'EditorInstance.Text', N'EditorInstance.Text', 0, N'', N'', 1, N'', 0, N'', CAST(N'2018-01-18T10:47:29.177' AS DateTime), CAST(N'2018-01-18T10:47:29.183' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (73, N'SectionTitle', N'Section Title', N'<p>This field type displays a simple input field.</p>', 0, N'<asp:TextBox runat=''server'' />', N'Annette-aft-giraffe.jpg', N'{Field:SectionTitle} OR {{Load:24}.Field:SectionTitle}', N'Text', N'Text', 0, N'', N'', 1, N'', 0, N'', CAST(N'2018-01-18T10:47:22.447' AS DateTime), CAST(N'2018-01-18T10:47:22.457' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (74, N'ShortDescription', N'Short Description', N'<p>This field type displays a TinyMCE WYSIWYG editor.</p>', 0, N'<Admin:Editor runat=''server'' Height=''200px'' />', N'Annette-aft-giraffe.jpg', N'{Field:ShortDescription} OR {{Load:24}.Field:ShortDescription}', N'EditorInstance.Text', N'EditorInstance.Text', 0, N'', N'', 1, N'', 0, N'', CAST(N'2018-01-18T10:47:25.663' AS DateTime), CAST(N'2018-01-18T10:47:25.670' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (75, N'MainContent', N'Main Content', N'<p>This field type displays a TinyMCE WYSIWYG editor.</p>', 0, N'<Admin:Editor runat=''server'' Height=''400px'' />', N'Annette-aft-giraffe.jpg', N'{Field:MainContent} OR {{Load:24}.Field:MainContent}', N'EditorInstance.Text', N'EditorInstance.Text', 0, N'', N'', 1, N'', 0, N'', CAST(N'2018-01-18T10:47:29.177' AS DateTime), CAST(N'2018-01-18T10:47:29.183' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (76, N'SectionTitle', N'Section Title', N'<p>This field type displays a simple input field.</p>', 0, N'<asp:TextBox runat=''server'' />', N'Annette-aft-goldfish.jpg', N'{Field:SectionTitle} OR {{Load:25}.Field:SectionTitle}', N'Text', N'Text', 0, N'', N'', 1, N'', 0, N'', CAST(N'2018-01-18T10:47:22.447' AS DateTime), CAST(N'2018-01-18T10:47:22.457' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (77, N'ShortDescription', N'Short Description', N'<p>This field type displays a TinyMCE WYSIWYG editor.</p>', 0, N'<Admin:Editor runat=''server'' Height=''200px'' />', N'Annette-aft-goldfish.jpg', N'{Field:ShortDescription} OR {{Load:25}.Field:ShortDescription}', N'EditorInstance.Text', N'EditorInstance.Text', 0, N'', N'', 1, N'', 0, N'', CAST(N'2018-01-18T10:47:25.663' AS DateTime), CAST(N'2018-01-18T10:47:25.670' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (78, N'MainContent', N'Main Content', N'<p>This field type displays a TinyMCE WYSIWYG editor.</p>', 0, N'<Admin:Editor runat=''server'' Height=''400px'' />', N'Annette-aft-goldfish.jpg', N'{Field:MainContent} OR {{Load:25}.Field:MainContent}', N'EditorInstance.Text', N'EditorInstance.Text', 0, N'', N'', 1, N'', 0, N'', CAST(N'2018-01-18T10:47:29.177' AS DateTime), CAST(N'2018-01-18T10:47:29.183' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (79, N'PathToFile', N'Path To File', N'<p>This field type displays a text box and a "Select" link above the textbox, when you click on the "Select" link, it will popup the File Manager, which allows you to select a file, selecting a file will update the textbox with the path to the file.</p>', 0, N'<Admin:FileSelector runat=''server'' DirPath=''/media/uploads/'' />', N'', N'', N'SelectedFilePath', N'SelectedFilePath', 0, N'', N'<img src="@Model.Field.FieldValue" alt="@Model.Field.FieldLabel" />', 1, N'', 0, N'', CAST(N'2018-01-18T10:47:32.450' AS DateTime), CAST(N'2018-01-18T10:47:32.450' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (80, N'PathToFile', N'Path To File', N'<p>This field type displays a text box and a "Select" link above the textbox, when you click on the "Select" link, it will popup the File Manager, which allows you to select a file, selecting a file will update the textbox with the path to the file.</p>', 0, N'<Admin:FileSelector runat=''server'' DirPath=''/media/uploads/'' />', N'', N'{Field:PathToFile} OR {{Load:12}.Field:PathToFile}', N'SelectedFilePath', N'SelectedFilePath', 0, N'', N'<img src="@Model.Field.FieldValue" alt="@Model.Field.FieldLabel" />', 1, N'', 0, N'', CAST(N'2018-01-18T10:47:32.450' AS DateTime), CAST(N'2018-01-18T10:47:32.450' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (81, N'PathToFile', N'Path To File', N'<p>This field type displays a text box and a "Select" link above the textbox, when you click on the "Select" link, it will popup the File Manager, which allows you to select a file, selecting a file will update the textbox with the path to the file.</p>', 0, N'<Admin:FileSelector runat=''server'' DirPath=''/media/uploads/'' />', N'', N'{Field:PathToFile} OR {{Load:13}.Field:PathToFile}', N'SelectedFilePath', N'SelectedFilePath', 0, N'', N'<img src="@Model.Field.FieldValue" alt="@Model.Field.FieldLabel" />', 1, N'', 0, N'', CAST(N'2018-01-18T10:47:32.450' AS DateTime), CAST(N'2018-01-18T10:47:32.453' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (86, N'PathToFile', N'Path To File', N'<p>This field type displays a text box and a "Select" link above the textbox, when you click on the "Select" link, it will popup the File Manager, which allows you to select a file, selecting a file will update the textbox with the path to the file.</p>', 0, N'<Admin:FileSelector runat=''server'' DirPath=''/media/uploads/'' />', N'', N'{Field:PathToFile} OR {{Load:18}.Field:PathToFile}', N'SelectedFilePath', N'SelectedFilePath', 0, N'', N'<img src="@Model.Field.FieldValue" alt="@Model.Field.FieldLabel" />', 1, N'', 0, N'', CAST(N'2018-01-18T10:47:32.450' AS DateTime), CAST(N'2018-01-18T10:47:32.453' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (87, N'PathToFile', N'Path To File', N'<p>This field type displays a text box and a "Select" link above the textbox, when you click on the "Select" link, it will popup the File Manager, which allows you to select a file, selecting a file will update the textbox with the path to the file.</p>', 0, N'<Admin:FileSelector runat=''server'' DirPath=''/media/uploads/'' />', N'', N'{Field:PathToFile} OR {{Load:19}.Field:PathToFile}', N'SelectedFilePath', N'SelectedFilePath', 0, N'', N'<img src="@Model.Field.FieldValue" alt="@Model.Field.FieldLabel" />', 1, N'', 0, N'', CAST(N'2018-01-18T10:47:32.450' AS DateTime), CAST(N'2018-01-18T10:47:32.453' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (88, N'PathToFile', N'Path To File', N'<p>This field type displays a text box and a "Select" link above the textbox, when you click on the "Select" link, it will popup the File Manager, which allows you to select a file, selecting a file will update the textbox with the path to the file.</p>', 0, N'<Admin:FileSelector runat=''server'' DirPath=''/media/uploads/'' />', N'', N'{Field:PathToFile} OR {{Load:20}.Field:PathToFile}', N'SelectedFilePath', N'SelectedFilePath', 0, N'', N'<img src="@Model.Field.FieldValue" alt="@Model.Field.FieldLabel" />', 1, N'', 0, N'', CAST(N'2018-01-18T10:47:32.450' AS DateTime), CAST(N'2018-01-18T10:47:32.453' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (89, N'PathToFile', N'Path To File', N'<p>This field type displays a text box and a "Select" link above the textbox, when you click on the "Select" link, it will popup the File Manager, which allows you to select a file, selecting a file will update the textbox with the path to the file.</p>', 0, N'<Admin:FileSelector runat=''server'' DirPath=''/media/uploads/'' />', N'', N'{Field:PathToFile} OR {{Load:21}.Field:PathToFile}', N'SelectedFilePath', N'SelectedFilePath', 0, N'', N'<img src="@Model.Field.FieldValue" alt="@Model.Field.FieldLabel" />', 1, N'', 0, N'', CAST(N'2018-01-18T10:47:32.450' AS DateTime), CAST(N'2018-01-18T10:47:32.453' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (90, N'PathToFile', N'Path To File', N'<p>This field type displays a text box and a "Select" link above the textbox, when you click on the "Select" link, it will popup the File Manager, which allows you to select a file, selecting a file will update the textbox with the path to the file.</p>', 0, N'<Admin:FileSelector runat=''server'' DirPath=''/media/uploads/'' />', N'', N'{Field:PathToFile} OR {{Load:22}.Field:PathToFile}', N'SelectedFilePath', N'SelectedFilePath', 0, N'', N'<img src="@Model.Field.FieldValue" alt="@Model.Field.FieldLabel" />', 1, N'', 0, N'', CAST(N'2018-01-18T10:47:32.450' AS DateTime), CAST(N'2018-01-18T10:47:32.457' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (91, N'PathToFile', N'Path To File', N'<p>This field type displays a text box and a "Select" link above the textbox, when you click on the "Select" link, it will popup the File Manager, which allows you to select a file, selecting a file will update the textbox with the path to the file.</p>', 0, N'<Admin:FileSelector runat=''server'' DirPath=''/media/uploads/'' />', N'', N'{Field:PathToFile} OR {{Load:23}.Field:PathToFile}', N'SelectedFilePath', N'SelectedFilePath', 0, N'', N'<img src="@Model.Field.FieldValue" alt="@Model.Field.FieldLabel" />', 1, N'', 0, N'', CAST(N'2018-01-18T10:47:32.450' AS DateTime), CAST(N'2018-01-18T10:47:32.457' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (92, N'PathToFile', N'Path To File', N'<p>This field type displays a text box and a "Select" link above the textbox, when you click on the "Select" link, it will popup the File Manager, which allows you to select a file, selecting a file will update the textbox with the path to the file.</p>', 0, N'<Admin:FileSelector runat=''server'' DirPath=''/media/uploads/'' />', N'', N'{Field:PathToFile} OR {{Load:24}.Field:PathToFile}', N'SelectedFilePath', N'SelectedFilePath', 0, N'', N'<img src="@Model.Field.FieldValue" alt="@Model.Field.FieldLabel" />', 1, N'', 0, N'', CAST(N'2018-01-18T10:47:32.450' AS DateTime), CAST(N'2018-01-18T10:47:32.457' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (93, N'PathToFile', N'Path To File', N'<p>This field type displays a text box and a "Select" link above the textbox, when you click on the "Select" link, it will popup the File Manager, which allows you to select a file, selecting a file will update the textbox with the path to the file.</p>', 0, N'<Admin:FileSelector runat=''server'' DirPath=''/media/uploads/'' />', N'', N'{Field:PathToFile} OR {{Load:25}.Field:PathToFile}', N'SelectedFilePath', N'SelectedFilePath', 0, N'', N'<img src="@Model.Field.FieldValue" alt="@Model.Field.FieldLabel" />', 1, N'', 0, N'', CAST(N'2018-01-18T10:47:32.450' AS DateTime), CAST(N'2018-01-18T10:47:32.457' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (95, N'SectionTitle', N'Section Title', N'<p>This field type displays a simple input field.</p>', 0, N'<asp:TextBox runat=''server'' />', N'Annette-aft-bandaids.png', N'{Field:SectionTitle} OR {{Load:26}.Field:SectionTitle}', N'Text', N'Text', 0, N'', N'', 1, N'', 0, N'', CAST(N'2018-01-18T10:47:22.447' AS DateTime), CAST(N'2018-01-18T10:47:22.457' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (96, N'ShortDescription', N'Short Description', N'<p>This field type displays a TinyMCE WYSIWYG editor.</p>', 0, N'<Admin:Editor runat=''server'' Height=''200px'' />', N'Annette-aft-bandaids.png', N'{Field:ShortDescription} OR {{Load:26}.Field:ShortDescription}', N'EditorInstance.Text', N'EditorInstance.Text', 0, N'', N'', 1, N'', 0, N'', CAST(N'2018-01-18T10:47:25.663' AS DateTime), CAST(N'2018-01-18T10:47:25.673' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (97, N'MainContent', N'Main Content', N'<p>This field type displays a TinyMCE WYSIWYG editor.</p>', 0, N'<Admin:Editor runat=''server'' Height=''400px'' />', N'Annette-aft-bandaids.png', N'{Field:MainContent} OR {{Load:26}.Field:MainContent}', N'EditorInstance.Text', N'EditorInstance.Text', 0, N'', N'', 1, N'', 0, N'', CAST(N'2018-01-18T10:47:29.177' AS DateTime), CAST(N'2018-01-18T10:47:29.183' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (98, N'PathToFile', N'Path To File', N'<p>This field type displays a text box and a "Select" link above the textbox, when you click on the "Select" link, it will popup the File Manager, which allows you to select a file, selecting a file will update the textbox with the path to the file.</p>', 0, N'<Admin:FileSelector runat=''server'' DirPath=''/media/uploads/'' />', N'/media/uploads/fields/94/annette-aft-bandaids.png', N'{Field:PathToFile} OR {{Load:26}.Field:PathToFile}', N'SelectedFilePath', N'SelectedFilePath', 0, N'', N'<img src="@Model.Field.FieldValue" alt="@Model.Field.FieldLabel" />', 1, N'', 0, N'', CAST(N'2018-01-18T10:47:32.450' AS DateTime), CAST(N'2018-01-18T10:47:32.457' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (99, N'SectionTitle', N'Section Title', N'<p>This field type displays a simple input field.</p>', 0, N'<asp:TextBox runat=''server'' />', N'Annette-aft-eyeshadow.png', N'{Field:SectionTitle} OR {{Load:27}.Field:SectionTitle}', N'Text', N'Text', 0, N'', N'', 1, N'', 0, N'', CAST(N'2018-01-18T10:47:22.447' AS DateTime), CAST(N'2018-01-18T10:47:22.460' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (100, N'ShortDescription', N'Short Description', N'<p>This field type displays a TinyMCE WYSIWYG editor.</p>', 0, N'<Admin:Editor runat=''server'' Height=''200px'' />', N'Annette-aft-eyeshadow.png', N'{Field:ShortDescription} OR {{Load:27}.Field:ShortDescription}', N'EditorInstance.Text', N'EditorInstance.Text', 0, N'', N'', 1, N'', 0, N'', CAST(N'2018-01-18T10:47:25.663' AS DateTime), CAST(N'2018-01-18T10:47:25.673' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (101, N'MainContent', N'Main Content', N'<p>This field type displays a TinyMCE WYSIWYG editor.</p>', 0, N'<Admin:Editor runat=''server'' Height=''400px'' />', N'Annette-aft-eyeshadow.png', N'{Field:MainContent} OR {{Load:27}.Field:MainContent}', N'EditorInstance.Text', N'EditorInstance.Text', 0, N'', N'', 1, N'', 0, N'', CAST(N'2018-01-18T10:47:29.177' AS DateTime), CAST(N'2018-01-18T10:47:29.183' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (102, N'PathToFile', N'Path To File', N'<p>This field type displays a text box and a "Select" link above the textbox, when you click on the "Select" link, it will popup the File Manager, which allows you to select a file, selecting a file will update the textbox with the path to the file.</p>', 0, N'<Admin:FileSelector runat=''server'' DirPath=''/media/uploads/'' />', N'/media/uploads/fields/94/annette-aft-eyeshadow.png', N'{Field:PathToFile} OR {{Load:27}.Field:PathToFile}', N'SelectedFilePath', N'SelectedFilePath', 0, N'', N'<img src="@Model.Field.FieldValue" alt="@Model.Field.FieldLabel" />', 1, N'', 0, N'', CAST(N'2018-01-18T10:47:32.450' AS DateTime), CAST(N'2018-01-18T10:47:32.460' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (103, N'SectionTitle', N'Section Title', N'<p>This field type displays a simple input field.</p>', 0, N'<asp:TextBox runat=''server'' />', N'Annette-aft-giraffe.jpg', N'{Field:SectionTitle} OR {{Load:28}.Field:SectionTitle}', N'Text', N'Text', 0, N'', N'', 1, N'', 0, N'', CAST(N'2018-01-18T10:47:22.447' AS DateTime), CAST(N'2018-01-18T10:47:22.460' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (104, N'ShortDescription', N'Short Description', N'<p>This field type displays a TinyMCE WYSIWYG editor.</p>', 0, N'<Admin:Editor runat=''server'' Height=''200px'' />', N'Annette-aft-giraffe.jpg', N'{Field:ShortDescription} OR {{Load:28}.Field:ShortDescription}', N'EditorInstance.Text', N'EditorInstance.Text', 0, N'', N'', 1, N'', 0, N'', CAST(N'2018-01-18T10:47:25.663' AS DateTime), CAST(N'2018-01-18T10:47:25.673' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (105, N'MainContent', N'Main Content', N'<p>This field type displays a TinyMCE WYSIWYG editor.</p>', 0, N'<Admin:Editor runat=''server'' Height=''400px'' />', N'Annette-aft-giraffe.jpg', N'{Field:MainContent} OR {{Load:28}.Field:MainContent}', N'EditorInstance.Text', N'EditorInstance.Text', 0, N'', N'', 1, N'', 0, N'', CAST(N'2018-01-18T10:47:29.177' AS DateTime), CAST(N'2018-01-18T10:47:29.187' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (106, N'PathToFile', N'Path To File', N'<p>This field type displays a text box and a "Select" link above the textbox, when you click on the "Select" link, it will popup the File Manager, which allows you to select a file, selecting a file will update the textbox with the path to the file.</p>', 0, N'<Admin:FileSelector runat=''server'' DirPath=''/media/uploads/'' />', N'/media/uploads/fields/94/annette-aft-giraffe.jpg', N'{Field:PathToFile} OR {{Load:28}.Field:PathToFile}', N'SelectedFilePath', N'SelectedFilePath', 0, N'', N'<img src="@Model.Field.FieldValue" alt="@Model.Field.FieldLabel" />', 1, N'', 0, N'', CAST(N'2018-01-18T10:47:32.450' AS DateTime), CAST(N'2018-01-18T10:47:32.460' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (146, N'SectionTitle', N'Section Title', N'<p>This field type displays a simple input field.</p>', 0, N'<asp:TextBox runat=''server'' />', N'Tab1', N'{Field:SectionTitle} OR {{Load:37}.Field:SectionTitle}', N'Text', N'Text', 0, N'', N'', 1, N'', 0, N'', CAST(N'2018-01-18T10:47:22.447' AS DateTime), CAST(N'2018-01-18T10:47:22.460' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (147, N'ShortDescription', N'Short Description', N'<p>This field type displays a TinyMCE WYSIWYG editor.</p>', 0, N'<Admin:Editor runat=''server'' Height=''200px'' />', N'New Item', N'{Field:ShortDescription} OR {{Load:37}.Field:ShortDescription}', N'EditorInstance.Text', N'EditorInstance.Text', 0, N'', N'', 1, N'', 0, N'', CAST(N'2018-01-18T10:47:25.663' AS DateTime), CAST(N'2018-01-18T10:47:25.673' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (148, N'MainContent', N'Main Content', N'<p>This field type displays a TinyMCE WYSIWYG editor.</p>', 0, N'<Admin:Editor runat=''server'' Height=''400px'' />', N'New Item', N'{Field:MainContent} OR {{Load:37}.Field:MainContent}', N'EditorInstance.Text', N'EditorInstance.Text', 0, N'', N'', 1, N'', 0, N'', CAST(N'2018-01-18T10:47:29.177' AS DateTime), CAST(N'2018-01-18T10:47:29.187' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (149, N'PathToFile', N'Path To File', N'<p>This field type displays a text box and a "Select" link above the textbox, when you click on the "Select" link, it will popup the File Manager, which allows you to select a file, selecting a file will update the textbox with the path to the file.</p>', 0, N'<Admin:FileSelector runat=''server'' DirPath=''/media/uploads/'' />', N'/media/images/icons/File.jpg', N'{Field:PathToFile} OR {{Load:37}.Field:PathToFile}', N'SelectedFilePath', N'SelectedFilePath', 0, N'', N'<img src="@Model.Field.FieldValue" alt="@Model.Field.FieldLabel" />', 1, N'', 0, N'', CAST(N'2018-01-18T10:47:32.450' AS DateTime), CAST(N'2018-01-18T10:47:32.460' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (150, N'SectionTitle', N'Section Title', N'<p>This field type displays a simple input field.</p>', 0, N'<asp:TextBox runat=''server'' />', N'New Item', N'{Field:SectionTitle} OR {{Load:38}.Field:SectionTitle}', N'Text', N'Text', 0, N'', N'', 1, N'', 0, N'', CAST(N'2018-01-18T10:47:22.447' AS DateTime), CAST(N'2018-01-18T10:47:22.460' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (151, N'ShortDescription', N'Short Description', N'<p>This field type displays a TinyMCE WYSIWYG editor.</p>', 0, N'<Admin:Editor runat=''server'' Height=''200px'' />', N'New Item', N'{Field:ShortDescription} OR {{Load:38}.Field:ShortDescription}', N'EditorInstance.Text', N'EditorInstance.Text', 0, N'', N'', 1, N'', 0, N'', CAST(N'2018-01-18T10:47:25.663' AS DateTime), CAST(N'2018-01-18T10:47:25.673' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (152, N'MainContent', N'Main Content', N'<p>This field type displays a TinyMCE WYSIWYG editor.</p>', 0, N'<Admin:Editor runat=''server'' Height=''400px'' />', N'New Item', N'{Field:MainContent} OR {{Load:38}.Field:MainContent}', N'EditorInstance.Text', N'EditorInstance.Text', 0, N'', N'', 1, N'', 0, N'', CAST(N'2018-01-18T10:47:29.177' AS DateTime), CAST(N'2018-01-18T10:47:29.187' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (153, N'PathToFile', N'Path To File', N'<p>This field type displays a text box and a "Select" link above the textbox, when you click on the "Select" link, it will popup the File Manager, which allows you to select a file, selecting a file will update the textbox with the path to the file.</p>', 0, N'<Admin:FileSelector runat=''server'' DirPath=''/media/uploads/'' />', N'/media/images/icons/File.jpg', N'{Field:PathToFile} OR {{Load:38}.Field:PathToFile}', N'SelectedFilePath', N'SelectedFilePath', 0, N'', N'<img src="@Model.Field.FieldValue" alt="@Model.Field.FieldLabel" />', 1, N'', 0, N'', CAST(N'2018-01-18T10:47:32.450' AS DateTime), CAST(N'2018-01-18T10:47:32.460' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (154, N'SectionTitle', N'Section Title', N'<p>This field type displays a simple input field.</p>', 0, N'<asp:TextBox runat=''server'' />', N'New Item', N'{Field:SectionTitle} OR {{Load:39}.Field:SectionTitle}', N'Text', N'Text', 0, N'', N'', 1, N'', 0, N'', CAST(N'2018-01-18T10:47:22.447' AS DateTime), CAST(N'2018-01-18T10:47:22.460' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (155, N'ShortDescription', N'Short Description', N'<p>This field type displays a TinyMCE WYSIWYG editor.</p>', 0, N'<Admin:Editor runat=''server'' Height=''200px'' />', N'New Item', N'{Field:ShortDescription} OR {{Load:39}.Field:ShortDescription}', N'EditorInstance.Text', N'EditorInstance.Text', 0, N'', N'', 1, N'', 0, N'', CAST(N'2018-01-18T10:47:25.663' AS DateTime), CAST(N'2018-01-18T10:47:25.673' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (156, N'MainContent', N'Main Content', N'<p>This field type displays a TinyMCE WYSIWYG editor.</p>', 0, N'<Admin:Editor runat=''server'' Height=''400px'' />', N'New Item', N'{Field:MainContent} OR {{Load:39}.Field:MainContent}', N'EditorInstance.Text', N'EditorInstance.Text', 0, N'', N'', 1, N'', 0, N'', CAST(N'2018-01-18T10:47:29.177' AS DateTime), CAST(N'2018-01-18T10:47:29.187' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (157, N'PathToFile', N'Path To File', N'<p>This field type displays a text box and a "Select" link above the textbox, when you click on the "Select" link, it will popup the File Manager, which allows you to select a file, selecting a file will update the textbox with the path to the file.</p>', 0, N'<Admin:FileSelector runat=''server'' DirPath=''/media/uploads/'' />', N'/media/images/icons/File.jpg', N'{Field:PathToFile} OR {{Load:39}.Field:PathToFile}', N'SelectedFilePath', N'SelectedFilePath', 0, N'', N'<img src="@Model.Field.FieldValue" alt="@Model.Field.FieldLabel" />', 1, N'', 0, N'', CAST(N'2018-01-18T10:47:32.450' AS DateTime), CAST(N'2018-01-18T10:47:32.460' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (159, N'SectionTitle', N'Section Title', N'<p>This field type displays a simple input field.</p>', 0, N'<asp:TextBox runat=''server'' />', N'New Item', N'{Field:SectionTitle} OR {{Load:40}.Field:SectionTitle}', N'Text', N'Text', 0, N'', N'', 1, N'', 0, N'', CAST(N'2018-01-18T10:47:22.447' AS DateTime), CAST(N'2018-01-18T10:47:22.463' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (160, N'ShortDescription', N'Short Description', N'<p>This field type displays a TinyMCE WYSIWYG editor.</p>', 0, N'<Admin:Editor runat=''server'' Height=''200px'' />', N'New Item', N'{Field:ShortDescription} OR {{Load:40}.Field:ShortDescription}', N'EditorInstance.Text', N'EditorInstance.Text', 0, N'', N'', 1, N'', 0, N'', CAST(N'2018-01-18T10:47:25.663' AS DateTime), CAST(N'2018-01-18T10:47:25.677' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (161, N'MainContent', N'Main Content', N'<p>This field type displays a TinyMCE WYSIWYG editor.</p>', 0, N'<Admin:Editor runat=''server'' Height=''400px'' />', N'New Item', N'{Field:MainContent} OR {{Load:40}.Field:MainContent}', N'EditorInstance.Text', N'EditorInstance.Text', 0, N'', N'', 1, N'', 0, N'', CAST(N'2018-01-18T10:47:29.177' AS DateTime), CAST(N'2018-01-18T10:47:29.187' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (162, N'PathToFile', N'Path To File', N'<p>This field type displays a text box and a "Select" link above the textbox, when you click on the "Select" link, it will popup the File Manager, which allows you to select a file, selecting a file will update the textbox with the path to the file.</p>', 0, N'<Admin:FileSelector runat=''server'' DirPath=''/media/uploads/'' />', N'/media/images/icons/File.jpg', N'{Field:PathToFile} OR {{Load:40}.Field:PathToFile}', N'SelectedFilePath', N'SelectedFilePath', 0, N'', N'<img src="@Model.Field.FieldValue" alt="@Model.Field.FieldLabel" />', 1, N'', 0, N'', CAST(N'2018-01-18T10:47:32.450' AS DateTime), CAST(N'2018-01-18T10:47:32.460' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (163, N'SectionTitle', N'Section Title', N'<p>This field type displays a simple input field.</p>', 0, N'<asp:TextBox runat=''server'' />', N'New Item', N'{Field:SectionTitle} OR {{Load:41}.Field:SectionTitle}', N'Text', N'Text', 0, N'', N'', 1, N'', 0, N'', CAST(N'2018-01-18T10:47:22.447' AS DateTime), CAST(N'2018-01-18T10:47:22.463' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (164, N'ShortDescription', N'Short Description', N'<p>This field type displays a TinyMCE WYSIWYG editor.</p>', 0, N'<Admin:Editor runat=''server'' Height=''200px'' />', N'New Item', N'{Field:ShortDescription} OR {{Load:41}.Field:ShortDescription}', N'EditorInstance.Text', N'EditorInstance.Text', 0, N'', N'', 1, N'', 0, N'', CAST(N'2018-01-18T10:47:25.663' AS DateTime), CAST(N'2018-01-18T10:47:25.677' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (165, N'MainContent', N'Main Content', N'<p>This field type displays a TinyMCE WYSIWYG editor.</p>', 0, N'<Admin:Editor runat=''server'' Height=''400px'' />', N'New Item', N'{Field:MainContent} OR {{Load:41}.Field:MainContent}', N'EditorInstance.Text', N'EditorInstance.Text', 0, N'', N'', 1, N'', 0, N'', CAST(N'2018-01-18T10:47:29.177' AS DateTime), CAST(N'2018-01-18T10:47:29.187' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (166, N'PathToFile', N'Path To File', N'<p>This field type displays a text box and a "Select" link above the textbox, when you click on the "Select" link, it will popup the File Manager, which allows you to select a file, selecting a file will update the textbox with the path to the file.</p>', 0, N'<Admin:FileSelector runat=''server'' DirPath=''/media/uploads/'' />', N'/media/images/icons/File.jpg', N'{Field:PathToFile} OR {{Load:41}.Field:PathToFile}', N'SelectedFilePath', N'SelectedFilePath', 0, N'', N'<img src="@Model.Field.FieldValue" alt="@Model.Field.FieldLabel" />', 1, N'', 0, N'', CAST(N'2018-01-18T10:47:32.450' AS DateTime), CAST(N'2018-01-18T10:47:32.463' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (936, N'SectionTitle', N'Section Title', N'<p>This field type displays a simple input field.</p>', 0, N'<asp:TextBox runat=''server'' />', N'Home', N'{Field:SectionTitle} OR {{Load:2}.Field:SectionTitle}', N'Text', N'Text', 0, N'', N'', 1, N'', 0, N'', CAST(N'2018-01-18T10:46:34.287' AS DateTime), CAST(N'2018-01-18T10:46:34.290' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (937, N'ShortDescription', N'Short Description', N'<p>This field type displays a TinyMCE WYSIWYG editor.</p>', 0, N'<Admin:Editor runat=''server'' Height=''200px'' />', N'', N'{Field:ShortDescription} OR {{Load:2}.Field:ShortDescription}', N'EditorInstance.Text', N'EditorInstance.Text', 0, N'', N'', 1, N'', 0, N'', CAST(N'2018-01-18T10:46:37.337' AS DateTime), CAST(N'2018-01-18T10:46:37.337' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (938, N'MainContent', N'Main Content', N'<p>This field type displays a TinyMCE WYSIWYG editor.</p>', 0, N'<Admin:Editor runat=''server'' Height=''400px'' />', N'<p>This is a test</p>', N'{Field:MainContent} OR {{Load:2}.Field:MainContent}', N'EditorInstance.Text', N'EditorInstance.Text', 0, N'', N'', 1, N'', 0, N'', CAST(N'2018-01-29T14:37:16.597' AS DateTime), CAST(N'2018-03-20T08:15:18.350' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (939, N'SectionTitle', N'Section Title', N'<p>This field type displays a simple input field.</p>', 0, N'<asp:TextBox runat=''server'' />', N'Annette-aft-lipstick.png', N'{Field:SectionTitle} OR {{Load:117}.Field:SectionTitle}', N'Text', N'Text', 0, N'', N'', 1, N'', 0, N'', CAST(N'2018-01-18T10:47:22.447' AS DateTime), CAST(N'2018-01-18T10:47:22.463' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (940, N'ShortDescription', N'Short Description', N'<p>This field type displays a TinyMCE WYSIWYG editor.</p>', 0, N'<Admin:Editor runat=''server'' Height=''200px'' />', N'Annette-aft-lipstick.png', N'{Field:ShortDescription} OR {{Load:117}.Field:ShortDescription}', N'EditorInstance.Text', N'EditorInstance.Text', 0, N'', N'', 1, N'', 0, N'', CAST(N'2018-01-18T10:47:25.663' AS DateTime), CAST(N'2018-01-18T10:47:25.677' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (941, N'MainContent', N'Main Content', N'<p>This field type displays a TinyMCE WYSIWYG editor.</p>', 0, N'<Admin:Editor runat=''server'' Height=''400px'' />', N'Annette-aft-lipstick.png', N'{Field:MainContent} OR {{Load:117}.Field:MainContent}', N'EditorInstance.Text', N'EditorInstance.Text', 0, N'', N'', 1, N'', 0, N'', CAST(N'2018-01-18T10:47:29.177' AS DateTime), CAST(N'2018-01-18T10:47:29.190' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (942, N'PathToFile', N'Path To File', N'<p>This field type displays a text box and a "Select" link above the textbox, when you click on the "Select" link, it will popup the File Manager, which allows you to select a file, selecting a file will update the textbox with the path to the file.</p>', 0, N'<Admin:FileSelector runat=''server'' DirPath=''/media/uploads/'' />', N'/media/uploads/fields/168/annette-aft-lipstick.png', N'{Field:PathToFile} OR {{Load:117}.Field:PathToFile}', N'SelectedFilePath', N'SelectedFilePath', 0, N'', N'<img src="@Model.Field.FieldValue" alt="@Model.Field.FieldLabel" />', 1, N'', 0, N'', CAST(N'2018-01-18T10:47:32.450' AS DateTime), CAST(N'2018-01-18T10:47:32.463' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (943, N'SectionTitle', N'Section Title', N'<p>This field type displays a simple input field.</p>', 0, N'<asp:TextBox runat=''server'' />', N'Annette-aft-magazine.jpg', N'{Field:SectionTitle} OR {{Load:118}.Field:SectionTitle}', N'Text', N'Text', 0, N'', N'', 1, N'', 0, N'', CAST(N'2018-01-18T10:47:22.447' AS DateTime), CAST(N'2018-01-18T10:47:22.463' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (944, N'ShortDescription', N'Short Description', N'<p>This field type displays a TinyMCE WYSIWYG editor.</p>', 0, N'<Admin:Editor runat=''server'' Height=''200px'' />', N'Annette-aft-magazine.jpg', N'{Field:ShortDescription} OR {{Load:118}.Field:ShortDescription}', N'EditorInstance.Text', N'EditorInstance.Text', 0, N'', N'', 1, N'', 0, N'', CAST(N'2018-01-18T10:47:25.663' AS DateTime), CAST(N'2018-01-18T10:47:25.677' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (945, N'MainContent', N'Main Content', N'<p>This field type displays a TinyMCE WYSIWYG editor.</p>', 0, N'<Admin:Editor runat=''server'' Height=''400px'' />', N'Annette-aft-magazine.jpg', N'{Field:MainContent} OR {{Load:118}.Field:MainContent}', N'EditorInstance.Text', N'EditorInstance.Text', 0, N'', N'', 1, N'', 0, N'', CAST(N'2018-01-18T10:47:29.177' AS DateTime), CAST(N'2018-01-18T10:47:29.190' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (946, N'PathToFile', N'Path To File', N'<p>This field type displays a text box and a "Select" link above the textbox, when you click on the "Select" link, it will popup the File Manager, which allows you to select a file, selecting a file will update the textbox with the path to the file.</p>', 0, N'<Admin:FileSelector runat=''server'' DirPath=''/media/uploads/'' />', N'/media/uploads/fields/168/annette-aft-magazine.jpg', N'{Field:PathToFile} OR {{Load:118}.Field:PathToFile}', N'SelectedFilePath', N'SelectedFilePath', 0, N'', N'<img src="@Model.Field.FieldValue" alt="@Model.Field.FieldLabel" />', 1, N'', 0, N'', CAST(N'2018-01-18T10:47:32.450' AS DateTime), CAST(N'2018-01-18T10:47:32.463' AS DateTime))
GO
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (1406, N'MainMenu', N'Main Menu', N'<p>In the backend this field type renders a input field which allows you to enter the ID of the Root Page. In the front end this field renders a nav.</p>', 0, N'@{
    var guid = Guid.NewGuid();
    var fieldId = Model.Field.ID;
    
    var fieldSettings = Model.Field.FieldSettings;
    var fieldSettingsObj = StringHelper.JsonToObject<dynamic>(fieldSettings);
 
    var MediaID = "0";
    var RenderDepth = "2";
    var RenderRootPage = "";
    var RenderParentItemInChildNav = "False";
    var TopLevelAnchorClasses = "";
    var SubAnchorClasses = "";
    var SubULClasses = "";
    var SubLIClasses = "";
    var RootULClasses = "";
    var RenderBackButton = "False";
    var IsBreadCrumbMenu = "False";
    
    if(fieldSettingsObj != null)
    {
        MediaID = (fieldSettingsObj["MediaID"] == null)? Model.MediaID : fieldSettingsObj["MediaID"];
        RenderDepth = (fieldSettingsObj["RenderDepth"] == null) ? "1" : fieldSettingsObj["RenderDepth"];
        RenderRootPage = (fieldSettingsObj["RenderRootPage"] == "on")? "checked" : "";
        RenderBackButton = (fieldSettingsObj["RenderBackButton"] == "on")? "checked" : "";
        IsBreadCrumbMenu = (fieldSettingsObj["IsBreadCrumbMenu"] == "on")? "checked" : "";
        RenderParentItemInChildNav = (fieldSettingsObj["RenderParentItemInChildNav"] == "on")? "checked" : "";
        
        TopLevelAnchorClasses = fieldSettingsObj["TopLevelAnchorClasses"] == null ? "" : fieldSettingsObj["TopLevelAnchorClasses"];
        SubAnchorClasses = fieldSettingsObj["SubAnchorClasses"] == null ? "" : fieldSettingsObj["SubAnchorClasses"];
        SubULClasses = fieldSettingsObj["SubULClasses"] == null ? "" : fieldSettingsObj["SubULClasses"];
        RootULClasses = fieldSettingsObj["RootULClasses"] == null ? "" : fieldSettingsObj["RootULClasses"];
        SubLIClasses = fieldSettingsObj["SubLIClasses"] == null ? "" : fieldSettingsObj["SubLIClasses"];
    }
}
<fieldset>
    <div id="tabs-@guid" class="tabs">
        <ul>
            <li><a href="#main-@guid">Main</a></li>
            <li><a href="#field-settings-@guid">Field Settings</a></li>
        </ul>
        <div id="main-@guid">
            <fieldset>
                <label>ID of the root page</label>
                <input type="text" name="MediaID" value="@MediaID" />
            </fieldset>
        </div>
        <div id="field-settings-@guid">
            <fieldset>
                <div>
                    <input type="checkbox" name="IsBreadCrumbMenu" @IsBreadCrumbMenu /> Is Bread Crumb Menu
                </div>                
                <div>
                    <input type="checkbox" name="RenderRootPage" @RenderRootPage /> Render Root Page
                </div>
                <div>
                    <input type="checkbox" name="RenderParentItemInChildNav" @RenderParentItemInChildNav /> Render Parent Item In ChildNav
                </div>       
                <div>
                    <input type="checkbox" name="RenderBackButton" @RenderBackButton /> Render Back Button
                </div>                 
                <div>
                    <label>Render Depth</label>
                    <input type="text" name="RenderDepth" value="@RenderDepth" />
                </div>
                <div>
                    <label>Root UL Classes</label>
                    <input type="text" name="RootULClasses" value="@RootULClasses" />
                </div>
                <div>
                    <label>Sub LI Classes</label>
                    <input type="text" name="SubLIClasses" value="@SubLIClasses" />
                </div>
                <div>
                    <label>Top Level Anchor Classes</label>
                    <input type="text" name="TopLevelAnchorClasses" value="@TopLevelAnchorClasses" />
                </div>                
                <div>
                    <label>Sub Anchor Classes</label>
                    <input type="text" name="SubAnchorClasses" value="@SubAnchorClasses" />
                </div>                
                <div>
                    <label>Sub UL Classes</label>
                    <input type="text" name="SubULClasses" value="@SubULClasses" />
                </div>                
            </fieldset>
        </div>
    </div>
    <div class="buttons">
        <a href="javascript:void(0)" id="SubmitField-@guid">Save Field</a>
    </div>
    <div id="response-@guid"></div>
</fieldset>
<script>
    $(document).ready(function(){
        $("#SubmitField-@guid").click(function(){
            var data = $("#tabs-@guid").find("input").serialize();
            data = data +"&fieldId=@fieldId";
            
            $("#response-@guid").text("Please wait ...");
            
            $.post(''/WebServices/Handlers.asmx/FieldSettingsSubmissionHandler'', data , function(response) {
                if(response.IsError == "False")
                {
                    $("#response-@guid").text("Saved!");
                    ReloadPreviewPanel();
                }
                else
                {
                    $("#response-@guid").text("Error");
                }
            });
        });
    });
</script>', N'', N'', N'', N'', 1, N'', N'@{
    var fieldSettings = Model.Field.FieldSettings;
    var fieldSettingsObj = StringHelper.JsonToObject<dynamic>(fieldSettings);
    
    if(fieldSettingsObj != null)
    {
        var MediaID = fieldSettingsObj["MediaID"];
        var RenderDepth = fieldSettingsObj["RenderDepth"] == null ? "1" : fieldSettingsObj["RenderDepth"];
        var RenderRootPage = (fieldSettingsObj["RenderRootPage"] == "on")? "True" : "False";
        
        var RenderParentItemInChildNav = (fieldSettingsObj["RenderParentItemInChildNav"] == "on")? "True" : "False";
        var TopLevelAnchorClasses = fieldSettingsObj["TopLevelAnchorClasses"] == null ? "" : fieldSettingsObj["TopLevelAnchorClasses"];
        var SubAnchorClasses = fieldSettingsObj["SubAnchorClasses"] == null ? "" : fieldSettingsObj["SubAnchorClasses"];
        var SubULClasses = fieldSettingsObj["SubULClasses"] == null ? "" : fieldSettingsObj["SubULClasses"];
        var RootULClasses = fieldSettingsObj["RootULClasses"] == null ? "" : fieldSettingsObj["RootULClasses"];
        var SubLIClasses = fieldSettingsObj["SubLIClasses"] == null ? "" : fieldSettingsObj["SubLIClasses"];
        var RenderBackButton = (fieldSettingsObj["RenderBackButton"] == "on")? "True" : "False";
        var IsBreadCrumbMenu = (fieldSettingsObj["IsBreadCrumbMenu"] == "on")? "True" : "False";
        
        <Site:GenerateNav runat="server" 
                          RootMediaID=''@MediaID'' 
                          RenderRootMedia="@RenderRootPage" 
                          RenderDepth="@RenderDepth" 
                          TopLevelAnchorClasses="@TopLevelAnchorClasses" 
                          SubAnchorClasses="@SubAnchorClasses"
                          RootULClasses="@RootULClasses"
                          SubULClasses="@SubULClasses"
                          SubLIClasses="@SubLIClasses"
                          RenderBackButton="@RenderBackButton"
                          RenderParentItemInChildNav = "@RenderParentItemInChildNav"
                          IsBreadCrumbMenu = "@IsBreadCrumbMenu"
                          />
    }
}

<script>
    $(document).ready(function(){
        
        if($(window).width() <= 768)
        {
            $(".has-children").each(function(){
                var parentAnchor = $(this).find(">a");
                var cloneParentAnchor = parentAnchor.clone();
                
                parentAnchor.attr("href","#");
                
                var firstChildLi = $(this).find("ul li").first().clone();
                
                firstChildLi.find("a").attr("href", cloneParentAnchor.attr("href"));
                firstChildLi.find("a").text(cloneParentAnchor.text());
                
                $(this).find("ul").prepend(firstChildLi);
            });
        }
    });
</script>
', 0, N'', 0, N'{"MediaID":"2","RenderDepth":"2","RootULClasses":"navbar-nav mr-auto","SubLIClasses":"nav-item dropdown","TopLevelAnchorClasses":"nav-link","SubAnchorClasses":"nav-link","SubULClasses":"dropdown-menu","fieldId":"1406","DateLastModified":"Nov-22-2017 1:35:48 PM"}', CAST(N'2017-11-22T12:00:42.360' AS DateTime), CAST(N'2017-11-22T13:35:48.967' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (1413, N'BreadCrumb', N'Bread Crumb', N'<p>In the backend this field type renders a input field which allows you to enter the ID of the Root Page. In the front end this field renders a nav.</p>', 0, N'@{
    var guid = Guid.NewGuid();
    var fieldId = Model.Field.ID;
    
    var fieldSettings = Model.Field.FieldSettings;
    var fieldSettingsObj = StringHelper.JsonToObject<dynamic>(fieldSettings);
 
    var MediaID = "0";
    var RenderDepth = "2";
    var RenderRootPage = "";
    var RenderParentItemInChildNav = "False";
    var TopLevelAnchorClasses = "";
    var SubAnchorClasses = "";
    var SubULClasses = "";
    var SubLIClasses = "";
    var RootULClasses = "";
    var RenderBackButton = "False";
    var IsBreadCrumbMenu = "False";
    var RenderHiddenMediaTypes = "False";
    var RenderHiddenPages = "False";
    
    if(fieldSettingsObj != null)
    {
        MediaID = (fieldSettingsObj["MediaID"] == null)? Model.MediaID : fieldSettingsObj["MediaID"];
        RenderDepth = (fieldSettingsObj["RenderDepth"] == null) ? "1" : fieldSettingsObj["RenderDepth"];
        RenderRootPage = (fieldSettingsObj["RenderRootPage"] == "on")? "checked" : "";
        RenderBackButton = (fieldSettingsObj["RenderBackButton"] == "on")? "checked" : "";
        IsBreadCrumbMenu = (fieldSettingsObj["IsBreadCrumbMenu"] == "on")? "checked" : "";
        IsBreadCrumbMenu = (fieldSettingsObj["IsBreadCrumbMenu"] == "on")? "checked" : "";
        RenderHiddenMediaTypes = (fieldSettingsObj["RenderHiddenMediaTypes"] == "on")? "checked" : "";
        RenderHiddenPages = (fieldSettingsObj["RenderHiddenPages"] == "on")? "checked" : "";
        
        TopLevelAnchorClasses = fieldSettingsObj["TopLevelAnchorClasses"] == null ? "" : fieldSettingsObj["TopLevelAnchorClasses"];
        SubAnchorClasses = fieldSettingsObj["SubAnchorClasses"] == null ? "" : fieldSettingsObj["SubAnchorClasses"];
        SubULClasses = fieldSettingsObj["SubULClasses"] == null ? "" : fieldSettingsObj["SubULClasses"];
        RootULClasses = fieldSettingsObj["RootULClasses"] == null ? "" : fieldSettingsObj["RootULClasses"];
        SubLIClasses = fieldSettingsObj["SubLIClasses"] == null ? "" : fieldSettingsObj["SubLIClasses"];
    }
}

<fieldset>
    <div id="tabs-@guid" class="tabs">
        <ul>
            <li><a href="#main-@guid">Main</a></li>
            <li><a href="#field-settings-@guid">Field Settings</a></li>
        </ul>
        <div id="main-@guid">
            <fieldset>
                <label>ID of the root page</label>
                <input type="text" name="MediaID" value="@MediaID" />
            </fieldset>
        </div>
        <div id="field-settings-@guid">
            <fieldset>
                <div>
                    <input type="checkbox" name="RenderHiddenMediaTypes" @RenderHiddenMediaTypes /> Render Hidden MediaTypes
                </div>     
                <div>
                    <input type="checkbox" name="RenderHiddenPages" @RenderHiddenPages /> Render Hidden Pages
                </div>                 
                <div>
                    <input type="checkbox" name="IsBreadCrumbMenu" @IsBreadCrumbMenu /> Is Bread Crumb Menu
                </div>                
                <div>
                    <input type="checkbox" name="RenderRootPage" @RenderRootPage /> Render Root Page
                </div>
                <div>
                    <input type="checkbox" name="RenderParentItemInChildNav" @RenderParentItemInChildNav /> Render Parent Item In ChildNav
                </div>       
                <div>
                    <input type="checkbox" name="RenderBackButton" @RenderBackButton /> Render Back Button
                </div>                 
                <div>
                    <label>Render Depth</label>
                    <input type="text" name="RenderDepth" value="@RenderDepth" />
                </div>
                <div>
                    <label>Root UL Classes</label>
                    <input type="text" name="RootULClasses" value="@RootULClasses" />
                </div>
                <div>
                    <label>Sub LI Classes</label>
                    <input type="text" name="SubLIClasses" value="@SubLIClasses" />
                </div>
                <div>
                    <label>Top Level Anchor Classes</label>
                    <input type="text" name="TopLevelAnchorClasses" value="@TopLevelAnchorClasses" />
                </div>                
                <div>
                    <label>Sub Anchor Classes</label>
                    <input type="text" name="SubAnchorClasses" value="@SubAnchorClasses" />
                </div>                
                <div>
                    <label>Sub UL Classes</label>
                    <input type="text" name="SubULClasses" value="@SubULClasses" />
                </div>                
            </fieldset>
        </div>
    </div>
    <div class="buttons">
        <a href="javascript:void(0)" id="SubmitField-@guid">Save Field</a>
    </div>
    <div id="response-@guid"></div>
</fieldset>

<script>
    $(document).ready(function(){
        $("#SubmitField-@guid").click(function(){
            var data = $("#tabs-@guid").find("input").serialize();
            data = data +"&fieldId=@fieldId";
            
            $("#response-@guid").text("Please wait ...");
            
            $.post(''/WebServices/Handlers.asmx/FieldSettingsSubmissionHandler'', data , function(response) {
                if(response.IsError == "False")
                {
                    $("#response-@guid").text("Saved!");
                    ReloadPreviewPanel();
                }
                else
                {
                    $("#response-@guid").text("Error");
                }
            });
        });
    });
</script>', N'', N'{Field:BreadCrumb} OR {{Load:195}.Field:BreadCrumb}', N'', N'', 0, N'', N'@{
    var fieldSettings = Model.Field.FieldSettings;
    var fieldSettingsObj = StringHelper.JsonToObject<dynamic>(fieldSettings);
    
    if(fieldSettingsObj != null)
    {
        var MediaID = fieldSettingsObj["MediaID"];
        var RenderDepth = fieldSettingsObj["RenderDepth"] == null ? "1" : fieldSettingsObj["RenderDepth"];
        var RenderRootPage = (fieldSettingsObj["RenderRootPage"] == "on")? "True" : "False";
        
        var RenderParentItemInChildNav = (fieldSettingsObj["RenderParentItemInChildNav"] == "on")? "True" : "False";
        var TopLevelAnchorClasses = fieldSettingsObj["TopLevelAnchorClasses"] == null ? "" : fieldSettingsObj["TopLevelAnchorClasses"];
        var SubAnchorClasses = fieldSettingsObj["SubAnchorClasses"] == null ? "" : fieldSettingsObj["SubAnchorClasses"];
        var SubULClasses = fieldSettingsObj["SubULClasses"] == null ? "" : fieldSettingsObj["SubULClasses"];
        var RootULClasses = fieldSettingsObj["RootULClasses"] == null ? "" : fieldSettingsObj["RootULClasses"];
        var SubLIClasses = fieldSettingsObj["SubLIClasses"] == null ? "" : fieldSettingsObj["SubLIClasses"];
        var RenderBackButton = (fieldSettingsObj["RenderBackButton"] == "on")? "True" : "False";
        var IsBreadCrumbMenu = (fieldSettingsObj["IsBreadCrumbMenu"] == "on")? "True" : "False";
        var RenderHiddenMediaTypes = (fieldSettingsObj["RenderHiddenMediaTypes"] == "on")? "True" : "False";
        var RenderHiddenPages = (fieldSettingsObj["RenderHiddenPages"] == "on")? "True" : "False";
        
        <Site:GenerateNav runat="server" 
                          RootMediaID=''@MediaID'' 
                          RenderRootMedia="@RenderRootPage" 
                          RenderDepth="@RenderDepth" 
                          TopLevelAnchorClasses="@TopLevelAnchorClasses" 
                          SubAnchorClasses="@SubAnchorClasses"
                          RootULClasses="@RootULClasses"
                          SubULClasses="@SubULClasses"
                          SubLIClasses="@SubLIClasses"
                          RenderBackButton="@RenderBackButton"
                          RenderParentItemInChildNav = "@RenderParentItemInChildNav"
                          IsBreadCrumbMenu = "@IsBreadCrumbMenu"
                          RenderHiddenMediaTypes="@RenderHiddenMediaTypes"
                          RenderHiddenPages="@RenderHiddenPages"
                          />
    }
}', 0, N'', 1, N'{"MediaID":"0","IsBreadCrumbMenu":"on","RenderParentItemInChildNav":"on","RenderDepth":"1","TopLevelAnchorClasses":"","SubAnchorClasses":"","SubULClasses":"","fieldId":"1413","DateLastModified":"Sep-06-2017 9:04:15 AM"}', CAST(N'2018-01-18T14:36:06.680' AS DateTime), CAST(N'2018-01-18T14:36:06.680' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (1414, N'ContactForm', N'Contact Form', N'<p>This field renders a form builder in the backend and renders the form in the front end</p>', 0, N'<Admin:FormBuilder runat="server" />', N'[{"type":"text","label":"First Name<br>","className":"form-control","name":"first-name","subtype":"text"},{"type":"text","label":"Last Name","className":"form-control","name":"last-name","subtype":"text"},{"type":"text","subtype":"email","label":"Email Address<br>","className":"form-control","name":"email-address"},{"type":"checkbox-group","label":"Checkbox Group","name":"checkbox-group-1521557280178","values":[{"label":"Option 1","value":"option-1","selected":true},{"label":"Option 2","value":"option-2"}]},{"type":"file","label":"File Upload","className":"form-control","name":"file-1522094017888","subtype":"file"},{"type":"button","subtype":"submit","label":"Submit","className":"btn btn-default","name":"submit","style":"default"}]', N'{Field:ContactForm} OR {{Load:195}.Field:ContactForm}', N'', N'', 1, N'', N'@{
    var formRawData = Model.Field.FieldValue;
    var fieldId = Model.Field.ID;
    var formId = Model.Field.FieldCode+"_fieldId-"+fieldId+"_guid_"+Guid.NewGuid();
    var form = HttpContext.Current.Request.Form.ToString();

    if(form != "")
    {
        var thisFormSubmitted = (HttpContext.Current.Request.Form["fieldId"] == fieldId.ToString());
    
        if(thisFormSubmitted)
        {
            var handlers  = new WebApplication.WebServices.Handlers();
            var returnObj = handlers.FieldFrontEndFormSubmissionHandler(fieldId);
            
            if(returnObj.IsError)
            {
                <div class="alert alert-danger">@returnObj.Error.Exception.Message</div>
            }
            else
            {
                <div class="alert alert-success">Successfully Submitted</div>
            }
        }
    }
}

<script>
    head.load([''https://cdn.jsdelivr.net/npm/formBuilder@2.9.8/dist/form-render.min.js''], function() {
        $(document).ready(function(){
            var formRawData = ''@Raw(formRawData)'';
            
            var renderOpts = {
                formData: formRawData,
                notify: {
                    success: function(){
                        $(''#@formId'').append(''<input type="hidden" name="fieldId" value="@Model.Field.ID">'')
                    }
                },                
                controlConfig: {
                    ''file.fineuploader'': {
                        handler: ''/path/to/handler.php'',
                    }
                }
            };            
            
            $(''#@formId'').formRender(renderOpts);  
            
            
        });
    });    
</script>
<form id="@formId" method="POST" enctype="multipart/form-data">
</form>', 1, N'', 1, N'{"EmailAddress":"test@test.com","EmailTemplateMediaID":"397","Subject":"Contact Form Submission"}', CAST(N'2018-01-18T11:59:32.220' AS DateTime), CAST(N'2018-03-26T15:15:06.013' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (11446, N'LanguageToggle', N'Language Toggle', N'<p>This will only show in the frontend when the number of active languages for the current page is greater or equal to 2</p>', 0, N'', N'', N'{Field:LanguageToggle} OR {{Load:195}.Field:LanguageToggle}', N'', N'', 6, N'', N'<Site:LanguageToggle runat="server" />', 0, N'', 1, N'', CAST(N'2018-01-18T14:35:01.737' AS DateTime), CAST(N'2018-01-18T14:35:01.737' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (11493, N'SideBarNav', N'Side Bar Nav', N'<p>In the backend this field type renders a input field which allows you to enter the ID of the Root Page. In the front end this field renders a nav.</p>', 0, N'@{
    var guid = Guid.NewGuid();
    var fieldId = Model.Field.ID;
    
    var fieldSettings = Model.Field.FieldSettings;
    var fieldSettingsObj = StringHelper.JsonToObject<dynamic>(fieldSettings);
 
    var MediaID = "0";
    var RenderDepth = "2";
    var RenderRootPage = "";
    var TopLevelAnchorClasses = "";
    var SubAnchorClasses = "";
    var SubULClasses = "";
    var RenderBackButton = "False";
    var IsBreadCrumbMenu = "False";
    var RenderParentNavIfNoChildren = "False";
    var RenderParentItemInChildNav = "False";
    
    if(fieldSettingsObj != null)
    {
        MediaID = (fieldSettingsObj["MediaID"] == null)? Model.MediaID : fieldSettingsObj["MediaID"];
        RenderDepth = (fieldSettingsObj["RenderDepth"] == null) ? "1" : fieldSettingsObj["RenderDepth"];
        RenderRootPage = (fieldSettingsObj["RenderRootPage"] == "on")? "checked" : "";
        RenderBackButton = (fieldSettingsObj["RenderBackButton"] == "on")? "checked" : "";
        IsBreadCrumbMenu = (fieldSettingsObj["IsBreadCrumbMenu"] == "on")? "checked" : "";
        RenderParentNavIfNoChildren = (fieldSettingsObj["RenderParentNavIfNoChildren"] == "on")? "checked" : "";
        
        RenderParentItemInChildNav = (fieldSettingsObj["RenderParentItemInChildNav"] == "on")? "checked" : "";
        TopLevelAnchorClasses = fieldSettingsObj["TopLevelAnchorClasses"] == null ? "" : fieldSettingsObj["TopLevelAnchorClasses"];
        SubAnchorClasses = fieldSettingsObj["SubAnchorClasses"] == null ? "" : fieldSettingsObj["SubAnchorClasses"];
        SubULClasses = fieldSettingsObj["SubULClasses"] == null ? "" : fieldSettingsObj["SubULClasses"];
    }
}

<fieldset>
    <div id="tabs-@guid" class="tabs">
        <ul>
            <li><a href="#main-@guid">Main</a></li>
            <li><a href="#field-settings-@guid">Field Settings</a></li>
        </ul>
        <div id="main-@guid">
            <fieldset>
                <label>ID of the root page</label>
                <input type="text" name="MediaID" value="@MediaID" />
            </fieldset>
        </div>
        <div id="field-settings-@guid">
            <fieldset>
                <div>
                    <input type="checkbox" name="IsBreadCrumbMenu" @IsBreadCrumbMenu /> Is Bread Crumb Menu
                </div>                
                <div>
                    <input type="checkbox" name="RenderRootPage" @RenderRootPage /> Render Root Page
                </div>
                <div>
                    <input type="checkbox" name="RenderParentItemInChildNav" @RenderParentItemInChildNav /> Render Parent Item In ChildNav
                </div>     
                <div>
                    <input type="checkbox" name="RenderParentNavIfNoChildren" @RenderParentNavIfNoChildren /> Render Parent Nav If No Children
                </div>                  
                <div>
                    <input type="checkbox" name="RenderBackButton" @RenderBackButton /> Render Back Button
                </div>                 
                <div>
                    <label>Render Depth</label>
                    <input type="text" name="RenderDepth" value="@RenderDepth" />
                </div>
                <div>
                    <label>Top Level Anchor Classes</label>
                    <input type="text" name="TopLevelAnchorClasses" value="@TopLevelAnchorClasses" />
                </div>                
                <div>
                    <label>Sub Anchor Classes</label>
                    <input type="text" name="SubAnchorClasses" value="@SubAnchorClasses" />
                </div>                
                <div>
                    <label>Sub UL Classes</label>
                    <input type="text" name="SubULClasses" value="@SubULClasses" />
                </div>                
            </fieldset>
        </div>
    </div>
    <div class="buttons">
        <a href="javascript:void(0)" id="SubmitField-@guid">Save Field</a>
    </div>
    <div id="response-@guid"></div>
</fieldset>

<script>
    $(document).ready(function(){
        $("#SubmitField-@guid").click(function(){
            var data = $("#tabs-@guid").find("input").serialize();
            data = data +"&fieldId=@fieldId";
            
            $("#response-@guid").text("Please wait ...");
            
            $.post(''/WebServices/Handlers.asmx/FieldSettingsSubmissionHandler'', data , function(response) {
                if(response.IsError == "False")
                {
                    $("#response-@guid").text("Saved!");
                    ReloadPreviewPanel();
                }
                else
                {
                    $("#response-@guid").text("Error");
                }
            });
        });
    });
</script>', N'', N'{Field:SideBarNav} OR {{Load:195}.Field:SideBarNav}', N'', N'', 2, N'', N'@{
    var fieldSettings = Model.Field.FieldSettings;
    var fieldSettingsObj = StringHelper.JsonToObject<dynamic>(fieldSettings);
    
    if(fieldSettingsObj != null)
    {
        var MediaID = fieldSettingsObj["MediaID"];
        
        if(MediaID == 0)
        {
            if(FrameworkSettings.CurrentFrameworkBaseMedia != null)
            {
                MediaID = FrameworkSettings.CurrentFrameworkBaseMedia.CurrentMediaDetail.MediaID;
            }
        }
        
        var RenderDepth = fieldSettingsObj["RenderDepth"] == null ? "1" : fieldSettingsObj["RenderDepth"];
        var RenderRootPage = (fieldSettingsObj["RenderRootPage"] == "on")? "True" : "False";
        
        var RenderParentItemInChildNav = (fieldSettingsObj["RenderParentItemInChildNav"] == "on")? "True" : "False";
        var TopLevelAnchorClasses = fieldSettingsObj["TopLevelAnchorClasses"] == null ? "" : fieldSettingsObj["TopLevelAnchorClasses"];
        var SubAnchorClasses = fieldSettingsObj["SubAnchorClasses"] == null ? "" : fieldSettingsObj["SubAnchorClasses"];
        var SubULClasses = fieldSettingsObj["SubULClasses"] == null ? "" : fieldSettingsObj["SubULClasses"];
        var RenderBackButton = (fieldSettingsObj["RenderBackButton"] == "on")? "True" : "False";
        var IsBreadCrumbMenu = (fieldSettingsObj["IsBreadCrumbMenu"] == "on")? "True" : "False";
        var RenderParentNavIfNoChildren = (fieldSettingsObj["RenderParentNavIfNoChildren"] == "on")? "True" : "False";
        
        <Site:GenerateNav runat="server" 
                          RootMediaID=''@MediaID'' 
                          RenderRootMedia="@RenderRootPage" 
                          RenderDepth="@RenderDepth" 
                          TopLevelAnchorClasses="@TopLevelAnchorClasses" 
                          SubAnchorClasses="@SubAnchorClasses"
                          SubULClasses="@SubULClasses"
                          RenderBackButton="@RenderBackButton"
                          RenderParentItemInChildNav = "@RenderParentItemInChildNav"
                          IsBreadCrumbMenu = "@IsBreadCrumbMenu"
                          RenderParentNavIfNoChildren = "@RenderParentNavIfNoChildren"
                          />
    }
}', 0, N'', 1, N'', CAST(N'2018-01-18T14:35:48.307' AS DateTime), CAST(N'2018-01-18T14:35:48.307' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (11494, N'RenderChildren', N'Render Children', N'<p>This field loops through and renders the "ShortCode" of all the child items of the root page. If you specify a "MediaType" then it will limit the results to the pages that belong to the media type.</p>', 0, N'', N'', N'{{Load:195}.Field:RenderChildren?MediaID=402&MediaTypeID=0&Take=3&ShortCode=UseSummaryLayout&OrderBy=PublishDate DESC}', N'', N'', 3, N'', N'@{
    var Arguments = StringHelper.ObjectToJson(Model.Arguments);
    
    var MediaID = "0";
    var ShortCode = "";    
    var Take = "-1";
    var OrderBy = "";
    var ShowPager = "false";
    var PageSize = "0";
    var MediaTypeID = "0";
    
    if(Model.Arguments.ContainsKey("MediaID"))
    {
        MediaID = Model.Arguments["MediaID"];
    }
    
    if(Model.Arguments.ContainsKey("MediaTypeID"))
    {
        MediaTypeID = Model.Arguments["MediaTypeID"];
    }    
    
    if(Model.Arguments.ContainsKey("ShowPager"))
    {
        ShowPager = Model.Arguments["ShowPager"];
    }
    
     if(Model.Arguments.ContainsKey("ShortCode"))
    {
        ShortCode = Model.Arguments["ShortCode"];
    }
    
    if(Model.Arguments.ContainsKey("PageSize"))
    {
        PageSize = Model.Arguments["PageSize"];
    }
    
    if(Model.Arguments.ContainsKey("Take"))
    {
        Take = Model.Arguments["Take"];
    }
    
    if(Model.Arguments.ContainsKey("OrderBy"))
    {
        OrderBy = Model.Arguments["OrderBy"];
    }        
    
    if(MediaID == "0")
    {
        if(FrameworkSettings.Current != null)
        {
            MediaID = FrameworkSettings.Current.CurrentMedia.ID.ToString();
        }
    }
    
    if(ShortCode == "")
    {
        ShortCode = "UseSummaryLayout";
    }
    
    <Site:RenderChildren runat="server" MediaID="@MediaID" ChildPropertyName="@ShortCode" Take=''@Take'' OrderBy=''@OrderBy'' ShowPager=''@ShowPager'' PageSize=''@PageSize'' Arguments="@Arguments" MediaTypeID="@MediaTypeID"/>
}', 1, N'', 1, N'{"MediaID":"0","ShortCode":"UseSummaryLayout","fieldId":"11494","DateLastModified":"Jan-03-2018 10:21:58 AM"}', CAST(N'2018-03-26T16:18:36.857' AS DateTime), CAST(N'2018-03-26T16:18:36.857' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (11495, N'Logo', N'Logo', N'', 0, N'<Admin:FileSelector runat=''server'' DirPath=''/media/uploads/'' />', N'', N'', N'SelectedFilePath', N'SelectedFilePath', 0, N'', N'', 0, N'', 0, N'', CAST(N'2017-11-22T12:01:07.010' AS DateTime), CAST(N'2017-11-22T12:01:07.010' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (11502, N'RenderAssociatedItems', N'Render Associated Items', N'<p>This field loops through and renders associated items of a specific field, you just need to specify what the FieldCode is you want to render</p>', 0, N'', N'', N'{{Load:195}.Field:RenderAssociatedItems?MediaID=189&FieldCode=MultiSelectList}', N'', N'', 4, N'', N'@model RazorFieldParams
@{
    long id = 0;
    
    if(Model.Arguments.ContainsKey("MediaID") && Model.Arguments.ContainsKey("FieldCode"))
    {
        long.TryParse(Model.Arguments["MediaID"], out id);
        var media = MediasMapper.GetByID(id);
        var mediaDetail = media.GetLiveMediaDetail();
        var field = (MediaDetailField)mediaDetail.LoadField(Model.Arguments["FieldCode"]);
        
        if(field != null && field.FieldAssociations.Any())
        {
            <section class="container interior-page">
                <h3>You may also be interested in:</h3>
                <div class="row justify-content-between related-container">
                @foreach(var item in field.FieldAssociations.OrderBy(i=>i.OrderIndex))
                {
                    <div class="col col-12 col-md-6 related-item-container">
                        <div class="col-md-12 related-item">
                        <p class="related-item-title">@Raw(item.MediaDetail.SectionTitle)</p>
                        <div>
                            @Raw(item.MediaDetail.ShortDescription)
                            <a class="button button-blue" title="@Raw(item.MediaDetail.SectionTitle)" href="@item.MediaDetail.AbsoluteUrl">More</a>
                        </div>
                    </div>
                    </div>
                }
                </div>    
            </section>
        }
    }
}', 0, N'', 0, N'', CAST(N'2018-03-26T15:45:40.540' AS DateTime), CAST(N'2018-03-26T15:45:40.540' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (21495, N'RenderMediaTypeItems', N'Render Media Type Items', N'<p>This loops through and renders media type items, if you specify a "CurrentMediaID" it only returns related items that are related to the "CurrentMediaID"</p>', 0, N'', N'', N'{{Load:195}.Field:RenderMediaTypeItems?MediaTypeID=24&Take=3&CurrentMediaID=403&ShortCode=UseSummaryLayout}', N'', N'', 5, N'', N'@{
    var mediaTypeId = 0;
    var shortCode = "UseFeaturedLayout";
    var take = 3;
    var currentMediaId = 0;
    var relatedOnly = false;
    
    
    if(Model.Arguments.ContainsKey("CurrentMediaID"))
    {
        int.TryParse(Model.Arguments["CurrentMediaID"], out currentMediaId);
    }
    
    if(Model.Arguments.ContainsKey("RelatedOnly"))
    {
        bool.TryParse(Model.Arguments["RelatedOnly"], out relatedOnly);
    }    
    
    if(Model.Arguments.ContainsKey("MediaTypeID"))
    {
        int.TryParse(Model.Arguments["MediaTypeID"], out mediaTypeId);
    }
    
    if(Model.Arguments.ContainsKey("ShortCode"))
    {
        shortCode = Model.Arguments["ShortCode"];
    }
    
    if(Model.Arguments.ContainsKey("Take"))
    {
        int.TryParse(Model.Arguments["Take"], out take);
    }    
    
    var items = MediaDetailsMapper.GetItemsByMediaTypeAndLanguage(mediaTypeId);
    
    if(currentMediaId > 0)
    {
        var currentMedia = MediasMapper.GetByID(currentMediaId);
        
        if(currentMedia != null)
        {
            var currentMediaDetail = currentMedia.GetLiveMediaDetail();
            items = currentMediaDetail.GetRelatedItems().Take(take);
        }
    }
    
    items = items.OrderByDescending(i=>i.PublishDate).Take(take);
    
    foreach(var item in items)
    {
        @Raw(item.RenderShortCode(shortCode));
    }
}', 0, N'', 0, N'', CAST(N'2018-03-26T15:42:07.393' AS DateTime), CAST(N'2018-03-26T15:42:07.393' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (22055, N'SectionTitle', N'Section Title', N'<p>This field type displays a simple input field.</p>', 0, N'<asp:TextBox runat=''server'' />', N'', N'', N'Text', N'Text', 0, N'', N'', 1, N'', 0, N'', CAST(N'2018-01-18T10:46:51.177' AS DateTime), CAST(N'2018-01-18T10:46:51.177' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (22056, N'ShortDescription', N'Short Description', N'<p>This field type displays a TinyMCE WYSIWYG editor.</p>', 0, N'<Admin:Editor runat=''server'' Height=''200px'' />', N'', N'', N'EditorInstance.Text', N'EditorInstance.Text', 0, N'', N'', 1, N'', 0, N'', CAST(N'2018-01-18T10:46:53.990' AS DateTime), CAST(N'2018-01-18T10:46:53.990' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (22057, N'MainContent', N'Main Content', N'<p>This field type displays a TinyMCE WYSIWYG editor.</p>', 0, N'<Admin:Editor runat=''server'' Height=''400px'' />', N'', N'', N'EditorInstance.Text', N'EditorInstance.Text', 0, N'', N'', 1, N'', 0, N'', CAST(N'2018-01-18T10:46:56.807' AS DateTime), CAST(N'2018-01-18T10:46:56.807' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (22058, N'SectionTitle', N'Section Title', N'<p>This field type displays a simple input field.</p>', 0, N'<asp:TextBox runat=''server'' />', N'', N'', N'Text', N'Text', 0, N'', N'', 1, N'', 0, N'', CAST(N'2018-01-18T10:47:06.373' AS DateTime), CAST(N'2018-01-18T10:47:06.373' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (22059, N'ShortDescription', N'Short Description', N'<p>This field type displays a TinyMCE WYSIWYG editor.</p>', 0, N'<Admin:Editor runat=''server'' Height=''200px'' />', N'', N'', N'EditorInstance.Text', N'EditorInstance.Text', 0, N'', N'', 1, N'', 0, N'', CAST(N'2018-01-18T10:47:09.047' AS DateTime), CAST(N'2018-01-18T10:47:09.047' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (22060, N'MainContent', N'Main Content', N'<p>This field type displays a TinyMCE WYSIWYG editor.</p>', 0, N'<Admin:Editor runat=''server'' Height=''400px'' />', N'', N'', N'EditorInstance.Text', N'EditorInstance.Text', 0, N'', N'', 1, N'', 0, N'', CAST(N'2018-01-18T10:47:12.320' AS DateTime), CAST(N'2018-01-18T10:47:12.320' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (22061, N'SectionTitle', N'Section Title', N'<p>This field type displays a simple input field.</p>', 0, N'<asp:TextBox runat=''server'' />', N'Blog', N'{Field:SectionTitle} OR {{Load:401}.Field:SectionTitle}', N'Text', N'Text', 0, N'', N'', 1, N'', 0, N'', CAST(N'2018-01-18T10:46:51.177' AS DateTime), CAST(N'2018-01-18T10:46:51.183' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (22062, N'ShortDescription', N'Short Description', N'<p>This field type displays a TinyMCE WYSIWYG editor.</p>', 0, N'<Admin:Editor runat=''server'' Height=''200px'' />', N'<p>Blog</p>', N'{Field:ShortDescription} OR {{Load:401}.Field:ShortDescription}', N'EditorInstance.Text', N'EditorInstance.Text', 0, N'', N'', 1, N'', 0, N'', CAST(N'2018-01-18T10:46:53.990' AS DateTime), CAST(N'2018-01-18T10:46:53.990' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (22063, N'MainContent', N'Main Content', N'<p>This field type displays a TinyMCE WYSIWYG editor.</p>', 0, N'<Admin:Editor runat=''server'' Height=''400px'' />', N'<p>Blog</p>', N'{Field:MainContent} OR {{Load:401}.Field:MainContent}', N'EditorInstance.Text', N'EditorInstance.Text', 0, N'', N'', 1, N'', 0, N'', CAST(N'2018-01-18T10:46:56.807' AS DateTime), CAST(N'2018-01-18T10:46:56.810' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (22064, N'SectionTitle', N'Section Title', N'<p>This field type displays a simple input field.</p>', 0, N'<asp:TextBox runat=''server'' />', N'', N'', N'Text', N'Text', 0, N'', N'', 1, N'', 0, N'', CAST(N'2018-01-18T10:47:58.087' AS DateTime), CAST(N'2018-01-18T10:47:58.087' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (22065, N'ShortDescription', N'Short Description', N'<p>This field type displays a TinyMCE WYSIWYG editor.</p>', 0, N'<Admin:Editor runat=''server'' Height=''200px'' />', N'', N'', N'EditorInstance.Text', N'EditorInstance.Text', 0, N'', N'', 1, N'', 0, N'', CAST(N'2018-01-18T10:48:01.390' AS DateTime), CAST(N'2018-01-18T10:48:01.390' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (22066, N'MainContent', N'Main Content', N'<p>This field type displays a TinyMCE WYSIWYG editor.</p>', 0, N'<Admin:Editor runat=''server'' Height=''400px'' />', N'', N'', N'EditorInstance.Text', N'EditorInstance.Text', 0, N'', N'', 1, N'', 0, N'', CAST(N'2018-01-18T10:48:04.707' AS DateTime), CAST(N'2018-01-18T10:48:04.707' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (22067, N'SectionTitle', N'Section Title', N'<p>This field type displays a simple input field.</p>', 0, N'<asp:TextBox runat=''server'' />', N'Category 1', N'{Field:SectionTitle} OR {{Load:402}.Field:SectionTitle}', N'Text', N'Text', 0, N'', N'', 1, N'', 0, N'', CAST(N'2018-01-18T10:47:58.087' AS DateTime), CAST(N'2018-01-18T10:47:58.097' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (22068, N'ShortDescription', N'Short Description', N'<p>This field type displays a TinyMCE WYSIWYG editor.</p>', 0, N'<Admin:Editor runat=''server'' Height=''200px'' />', N'<p>Category 1</p>', N'{Field:ShortDescription} OR {{Load:402}.Field:ShortDescription}', N'EditorInstance.Text', N'EditorInstance.Text', 0, N'', N'', 1, N'', 0, N'', CAST(N'2018-01-18T10:48:01.390' AS DateTime), CAST(N'2018-01-18T10:48:01.390' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (22069, N'MainContent', N'Main Content', N'<p>This field type displays a TinyMCE WYSIWYG editor.</p>', 0, N'<Admin:Editor runat=''server'' Height=''400px'' />', N'<p>Category 1</p>', N'{Field:MainContent} OR {{Load:402}.Field:MainContent}', N'EditorInstance.Text', N'EditorInstance.Text', 0, N'', N'', 1, N'', 0, N'', CAST(N'2018-01-18T10:48:04.707' AS DateTime), CAST(N'2018-01-18T10:48:04.710' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (22073, N'SectionTitle', N'Section Title', N'<p>This field type displays a simple input field.</p>', 0, N'<asp:TextBox runat=''server'' />', N'Blog Post 2', N'{Field:SectionTitle} OR {{Load:404}.Field:SectionTitle}', N'Text', N'Text', 0, N'', N'', 1, N'', 0, N'', CAST(N'2018-01-18T10:47:06.373' AS DateTime), CAST(N'2018-01-18T10:47:06.377' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (22074, N'ShortDescription', N'Short Description', N'<p>This field type displays a TinyMCE WYSIWYG editor.</p>', 0, N'<Admin:Editor runat=''server'' Height=''200px'' />', N'<p>Blog Post</p>', N'{Field:ShortDescription} OR {{Load:404}.Field:ShortDescription}', N'EditorInstance.Text', N'EditorInstance.Text', 0, N'', N'', 1, N'', 0, N'', CAST(N'2018-01-18T10:47:09.047' AS DateTime), CAST(N'2018-01-18T10:47:09.050' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (22075, N'MainContent', N'Main Content', N'<p>This field type displays a TinyMCE WYSIWYG editor.</p>', 0, N'<Admin:Editor runat=''server'' Height=''400px'' />', N'<p>Blog Post</p>', N'{Field:MainContent} OR {{Load:404}.Field:MainContent}', N'EditorInstance.Text', N'EditorInstance.Text', 0, N'', N'', 1, N'', 0, N'', CAST(N'2018-01-18T10:47:12.320' AS DateTime), CAST(N'2018-01-18T10:47:12.323' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (23176, N'SectionTitle', N'Section Title', N'<p>This field type displays a simple input field.</p>', 0, N'<asp:TextBox runat=''server'' />', N'New Item', N'', N'Text', N'Text', 0, N'', N'', 1, N'', 0, N'', CAST(N'2018-01-18T10:47:22.447' AS DateTime), CAST(N'2018-01-18T10:47:22.447' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (23177, N'ShortDescription', N'Short Description', N'<p>This field type displays a TinyMCE WYSIWYG editor.</p>', 0, N'<Admin:Editor runat=''server'' Height=''200px'' />', N'New Item', N'', N'EditorInstance.Text', N'EditorInstance.Text', 0, N'', N'', 1, N'', 0, N'', CAST(N'2018-01-18T10:47:25.663' AS DateTime), CAST(N'2018-01-18T10:47:25.663' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (23178, N'MainContent', N'Main Content', N'<p>This field type displays a TinyMCE WYSIWYG editor.</p>', 0, N'<Admin:Editor runat=''server'' Height=''400px'' />', N'New Item', N'', N'EditorInstance.Text', N'EditorInstance.Text', 0, N'', N'', 1, N'', 0, N'', CAST(N'2018-01-18T10:47:29.177' AS DateTime), CAST(N'2018-01-18T10:47:29.177' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (23179, N'PathToFile', N'Path To File', N'<p>This field type displays a text box and a "Select" link above the textbox, when you click on the "Select" link, it will popup the File Manager, which allows you to select a file, selecting a file will update the textbox with the path to the file.</p>', 0, N'<Admin:FileSelector runat=''server'' DirPath=''/media/uploads/'' />', N'/media/images/icons/File.jpg', N'', N'SelectedFilePath', N'SelectedFilePath', 0, N'', N'<img src="@Model.Field.FieldValue" alt="@Model.Field.FieldLabel" />', 1, N'', 0, N'', CAST(N'2018-01-18T10:47:32.450' AS DateTime), CAST(N'2018-01-18T10:47:32.450' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (23180, N'SectionTitle', N'Section Title', N'<p>This field type displays a simple input field.</p>', 0, N'<asp:TextBox runat=''server'' />', N'New Item', N'', N'Text', N'Text', 0, N'', N'', 1, N'', 0, N'', CAST(N'2018-01-18T10:47:22.447' AS DateTime), CAST(N'2018-01-18T10:47:22.447' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (23181, N'ShortDescription', N'Short Description', N'<p>This field type displays a TinyMCE WYSIWYG editor.</p>', 0, N'<Admin:Editor runat=''server'' Height=''200px'' />', N'New Item', N'', N'EditorInstance.Text', N'EditorInstance.Text', 0, N'', N'', 1, N'', 0, N'', CAST(N'2018-01-18T10:47:25.663' AS DateTime), CAST(N'2018-01-18T10:47:25.663' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (23182, N'MainContent', N'Main Content', N'<p>This field type displays a TinyMCE WYSIWYG editor.</p>', 0, N'<Admin:Editor runat=''server'' Height=''400px'' />', N'New Item', N'', N'EditorInstance.Text', N'EditorInstance.Text', 0, N'', N'', 1, N'', 0, N'', CAST(N'2018-01-18T10:47:29.177' AS DateTime), CAST(N'2018-01-18T10:47:29.177' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (23183, N'PathToFile', N'Path To File', N'<p>This field type displays a text box and a "Select" link above the textbox, when you click on the "Select" link, it will popup the File Manager, which allows you to select a file, selecting a file will update the textbox with the path to the file.</p>', 0, N'<Admin:FileSelector runat=''server'' DirPath=''/media/uploads/'' />', N'/media/images/icons/File.jpg', N'', N'SelectedFilePath', N'SelectedFilePath', 0, N'', N'<img src="@Model.Field.FieldValue" alt="@Model.Field.FieldLabel" />', 1, N'', 0, N'', CAST(N'2018-01-18T10:47:32.450' AS DateTime), CAST(N'2018-01-18T10:47:32.450' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (23387, N'SectionTitle', N'Section Title', N'<p>This field type displays a simple input field.</p>', 0, N'<asp:TextBox runat=''server'' />', N'2018-03-16_13h14_22.png', N'', N'Text', N'Text', 0, N'', N'', 1, N'', 0, N'', CAST(N'2018-01-18T10:47:22.447' AS DateTime), CAST(N'2018-01-18T10:47:22.447' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (23388, N'ShortDescription', N'Short Description', N'<p>This field type displays a TinyMCE WYSIWYG editor.</p>', 0, N'<Admin:Editor runat=''server'' Height=''200px'' />', N'2018-03-16_13h14_22.png', N'', N'EditorInstance.Text', N'EditorInstance.Text', 0, N'', N'', 1, N'', 0, N'', CAST(N'2018-01-18T10:47:25.663' AS DateTime), CAST(N'2018-01-18T10:47:25.663' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (23389, N'MainContent', N'Main Content', N'<p>This field type displays a TinyMCE WYSIWYG editor.</p>', 0, N'<Admin:Editor runat=''server'' Height=''400px'' />', N'2018-03-16_13h14_22.png', N'', N'EditorInstance.Text', N'EditorInstance.Text', 0, N'', N'', 1, N'', 0, N'', CAST(N'2018-01-18T10:47:29.177' AS DateTime), CAST(N'2018-01-18T10:47:29.177' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (23390, N'PathToFile', N'Path To File', N'<p>This field type displays a text box and a "Select" link above the textbox, when you click on the "Select" link, it will popup the File Manager, which allows you to select a file, selecting a file will update the textbox with the path to the file.</p>', 0, N'<Admin:FileSelector runat=''server'' DirPath=''/media/uploads/'' />', N'/media/uploads/medias/2/media-details/218/fields/23386/2018-03-16_13h14_22.png', N'', N'SelectedFilePath', N'SelectedFilePath', 0, N'', N'<img src="@Model.Field.FieldValue" alt="@Model.Field.FieldLabel" />', 1, N'', 0, N'', CAST(N'2018-01-18T10:47:32.450' AS DateTime), CAST(N'2018-01-18T10:47:32.450' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (23391, N'SectionTitle', N'Section Title', N'<p>This field type displays a simple input field.</p>', 0, N'<asp:TextBox runat=''server'' />', N'2018-03-19_14h52_33.png', N'', N'Text', N'Text', 0, N'', N'', 1, N'', 0, N'', CAST(N'2018-01-18T10:47:22.447' AS DateTime), CAST(N'2018-01-18T10:47:22.447' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (23392, N'ShortDescription', N'Short Description', N'<p>This field type displays a TinyMCE WYSIWYG editor.</p>', 0, N'<Admin:Editor runat=''server'' Height=''200px'' />', N'2018-03-19_14h52_33.png', N'', N'EditorInstance.Text', N'EditorInstance.Text', 0, N'', N'', 1, N'', 0, N'', CAST(N'2018-01-18T10:47:25.663' AS DateTime), CAST(N'2018-01-18T10:47:25.663' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (23393, N'MainContent', N'Main Content', N'<p>This field type displays a TinyMCE WYSIWYG editor.</p>', 0, N'<Admin:Editor runat=''server'' Height=''400px'' />', N'2018-03-19_14h52_33.png', N'', N'EditorInstance.Text', N'EditorInstance.Text', 0, N'', N'', 1, N'', 0, N'', CAST(N'2018-01-18T10:47:29.177' AS DateTime), CAST(N'2018-01-18T10:47:29.177' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (23394, N'PathToFile', N'Path To File', N'<p>This field type displays a text box and a "Select" link above the textbox, when you click on the "Select" link, it will popup the File Manager, which allows you to select a file, selecting a file will update the textbox with the path to the file.</p>', 0, N'<Admin:FileSelector runat=''server'' DirPath=''/media/uploads/'' />', N'/media/uploads/medias/2/media-details/218/fields/23386/2018-03-19_14h52_33.png', N'', N'SelectedFilePath', N'SelectedFilePath', 0, N'', N'<img src="@Model.Field.FieldValue" alt="@Model.Field.FieldLabel" />', 1, N'', 0, N'', CAST(N'2018-01-18T10:47:32.450' AS DateTime), CAST(N'2018-01-18T10:47:32.450' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (23395, N'SectionTitle', N'Section Title', N'<p>This field type displays a simple input field.</p>', 0, N'<asp:TextBox runat=''server'' />', N'2018-03-19_14h55_10.png', N'', N'Text', N'Text', 0, N'', N'', 1, N'', 0, N'', CAST(N'2018-01-18T10:47:22.447' AS DateTime), CAST(N'2018-01-18T10:47:22.447' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (23396, N'ShortDescription', N'Short Description', N'<p>This field type displays a TinyMCE WYSIWYG editor.</p>', 0, N'<Admin:Editor runat=''server'' Height=''200px'' />', N'2018-03-19_14h55_10.png', N'', N'EditorInstance.Text', N'EditorInstance.Text', 0, N'', N'', 1, N'', 0, N'', CAST(N'2018-01-18T10:47:25.663' AS DateTime), CAST(N'2018-01-18T10:47:25.663' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (23397, N'MainContent', N'Main Content', N'<p>This field type displays a TinyMCE WYSIWYG editor.</p>', 0, N'<Admin:Editor runat=''server'' Height=''400px'' />', N'2018-03-19_14h55_10.png', N'', N'EditorInstance.Text', N'EditorInstance.Text', 0, N'', N'', 1, N'', 0, N'', CAST(N'2018-01-18T10:47:29.177' AS DateTime), CAST(N'2018-01-18T10:47:29.177' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (23398, N'PathToFile', N'Path To File', N'<p>This field type displays a text box and a "Select" link above the textbox, when you click on the "Select" link, it will popup the File Manager, which allows you to select a file, selecting a file will update the textbox with the path to the file.</p>', 0, N'<Admin:FileSelector runat=''server'' DirPath=''/media/uploads/'' />', N'/media/uploads/medias/2/media-details/218/fields/23386/2018-03-19_14h55_10.png', N'', N'SelectedFilePath', N'SelectedFilePath', 0, N'', N'<img src="@Model.Field.FieldValue" alt="@Model.Field.FieldLabel" />', 1, N'', 0, N'', CAST(N'2018-01-18T10:47:32.450' AS DateTime), CAST(N'2018-01-18T10:47:32.450' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (23733, N'SectionTitle', N'Section Title', N'<p>This field type displays a simple input field.</p>', 0, N'<asp:TextBox runat=''server'' />', N'test', N'', N'Text', N'Text', 0, N'', N'', 1, N'', 0, N'', CAST(N'2018-01-18T10:46:07.223' AS DateTime), CAST(N'2018-01-18T10:46:07.223' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (23734, N'ShortDescription', N'Short Description', N'<p>This field type displays a TinyMCE WYSIWYG editor.</p>', 0, N'<Admin:Editor runat=''server'' Height=''200px'' />', N'<p>test</p>', N'', N'EditorInstance.Text', N'EditorInstance.Text', 0, N'', N'', 1, N'', 0, N'', CAST(N'2018-01-18T10:46:09.327' AS DateTime), CAST(N'2018-01-18T10:46:09.327' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (23735, N'MainContent', N'Main Content', N'<p>This field type displays a TinyMCE WYSIWYG editor.</p>', 0, N'<Admin:Editor runat=''server'' Height=''400px'' />', N'<p>test</p>', N'', N'EditorInstance.Text', N'EditorInstance.Text', 0, N'', N'', 1, N'', 0, N'', CAST(N'2018-01-18T10:46:12.093' AS DateTime), CAST(N'2018-01-18T10:46:12.093' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (23736, N'SectionTitle', N'Section Title', N'<p>This field type displays a simple input field.</p>', 0, N'<asp:TextBox runat=''server'' />', N'test1', N'', N'Text', N'Text', 0, N'', N'', 1, N'', 0, N'', CAST(N'2018-03-27T11:25:05.840' AS DateTime), CAST(N'2018-03-27T11:25:05.840' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (23737, N'ShortDescription', N'Short Description', N'<p>This field type displays a TinyMCE WYSIWYG editor.</p>', 0, N'<Admin:Editor runat=''server'' Height=''200px'' />', N'<p>test</p>', N'', N'EditorInstance.Text', N'EditorInstance.Text', 0, N'', N'', 1, N'', 0, N'', CAST(N'2018-03-27T11:25:05.857' AS DateTime), CAST(N'2018-03-27T11:25:05.857' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (23738, N'MainContent', N'Main Content', N'<p>This field type displays a TinyMCE WYSIWYG editor.</p>', 0, N'<Admin:Editor runat=''server'' Height=''400px'' />', N'<p>test</p>', N'', N'EditorInstance.Text', N'EditorInstance.Text', 0, N'', N'', 1, N'', 0, N'', CAST(N'2018-03-27T11:25:05.857' AS DateTime), CAST(N'2018-03-27T11:25:05.857' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (23739, N'SectionTitle', N'Section Title', N'<p>This field type displays a simple input field.</p>', 0, N'<asp:TextBox runat=''server'' />', N'test2', N'', N'Text', N'Text', 0, N'', N'', 1, N'', 0, N'', CAST(N'2018-03-27T11:25:37.413' AS DateTime), CAST(N'2018-03-27T11:25:37.413' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (23740, N'ShortDescription', N'Short Description', N'<p>This field type displays a TinyMCE WYSIWYG editor.</p>', 0, N'<Admin:Editor runat=''server'' Height=''200px'' />', N'<p>test</p>', N'', N'EditorInstance.Text', N'EditorInstance.Text', 0, N'', N'', 1, N'', 0, N'', CAST(N'2018-03-27T11:25:37.417' AS DateTime), CAST(N'2018-03-27T11:25:37.417' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (23741, N'MainContent', N'Main Content', N'<p>This field type displays a TinyMCE WYSIWYG editor.</p>', 0, N'<Admin:Editor runat=''server'' Height=''400px'' />', N'<p>test</p>', N'', N'EditorInstance.Text', N'EditorInstance.Text', 0, N'', N'', 1, N'', 0, N'', CAST(N'2018-03-27T11:25:37.417' AS DateTime), CAST(N'2018-03-27T11:25:37.417' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (23742, N'MultiItem', N'Multi Item', N'<p>The field type displays a widget that allows you to create multiple items of a specific media type. And displays these items in a grid view format.</p>', 0, N'<Admin:MultiFileUploader runat=''server'' SaveToFolder='''' MediaTypeID=''25'' PageSize=''15'' Mode=''GridView'' />', N'System.Collections.Generic.List`1[FrameworkLibrary.FieldAssociation]', N'{Field:MultiItem} OR {{Load:528}.Field:MultiItem}', N'SelectedValue', N'SelectedValue', 3, N'', N'@model RazorFieldParams
@{
    var field = (MediaDetailField)Model.Field;
    var fieldAssociations = field.FieldAssociations.Where(i=>i.MediaDetail.IsPublished).OrderBy(i=>i.OrderIndex);

    <ul>
    @foreach(var item in fieldAssociations)
    {   
        @item.MediaDetail.ID
        <li><a href=''@URIHelper.ConvertToAbsUrl(item.MediaDetail.PathToFile)''><img src=''@URIHelper.ConvertToAbsUrl(item.MediaDetail.PathToFile)?width=300&height=300&mode=min'' alt=''@item.MediaDetail.SectionTitle''></a></li>
    }
    </ul>
}', 1, N'', 0, N'', CAST(N'2018-04-03T14:18:19.043' AS DateTime), CAST(N'2018-04-03T14:18:19.043' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (23815, N'SectionTitle', N'Section Title', N'<p>This field type displays a simple input field.</p>', 0, N'<asp:TextBox runat=''server'' />', N'slide-1.jpg', N'', N'Text', N'Text', 0, N'', N'', 1, N'', 0, N'', CAST(N'2018-01-18T10:47:22.447' AS DateTime), CAST(N'2018-01-18T10:47:22.447' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (23816, N'ShortDescription', N'Short Description', N'<p>This field type displays a TinyMCE WYSIWYG editor.</p>', 0, N'<Admin:Editor runat=''server'' Height=''200px'' />', N'slide-1.jpg', N'', N'EditorInstance.Text', N'EditorInstance.Text', 0, N'', N'', 1, N'', 0, N'', CAST(N'2018-01-18T10:47:25.663' AS DateTime), CAST(N'2018-01-18T10:47:25.663' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (23817, N'MainContent', N'Main Content', N'<p>This field type displays a TinyMCE WYSIWYG editor.</p>', 0, N'<Admin:Editor runat=''server'' Height=''400px'' />', N'slide-1.jpg', N'', N'EditorInstance.Text', N'EditorInstance.Text', 0, N'', N'', 1, N'', 0, N'', CAST(N'2018-01-18T10:47:29.177' AS DateTime), CAST(N'2018-01-18T10:47:29.177' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (23818, N'PathToFile', N'Path To File', N'<p>This field type displays a text box and a "Select" link above the textbox, when you click on the "Select" link, it will popup the File Manager, which allows you to select a file, selecting a file will update the textbox with the path to the file.</p>', 0, N'<Admin:FileSelector runat=''server'' DirPath=''/media/uploads/'' />', N'/media/uploads/medias/528/media-details/20961/fields/23742/slide-1.jpg', N'', N'SelectedFilePath', N'SelectedFilePath', 0, N'', N'<img src="@Model.Field.FieldValue" alt="@Model.Field.FieldLabel" />', 1, N'', 0, N'', CAST(N'2018-01-18T10:47:32.450' AS DateTime), CAST(N'2018-01-18T10:47:32.450' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (23819, N'SectionTitle', N'Section Title', N'<p>This field type displays a simple input field.</p>', 0, N'<asp:TextBox runat=''server'' />', N'slide-2.jpg', N'', N'Text', N'Text', 0, N'', N'', 1, N'', 0, N'', CAST(N'2018-01-18T10:47:22.447' AS DateTime), CAST(N'2018-01-18T10:47:22.447' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (23820, N'ShortDescription', N'Short Description', N'<p>This field type displays a TinyMCE WYSIWYG editor.</p>', 0, N'<Admin:Editor runat=''server'' Height=''200px'' />', N'slide-2.jpg', N'', N'EditorInstance.Text', N'EditorInstance.Text', 0, N'', N'', 1, N'', 0, N'', CAST(N'2018-01-18T10:47:25.663' AS DateTime), CAST(N'2018-01-18T10:47:25.663' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (23821, N'MainContent', N'Main Content', N'<p>This field type displays a TinyMCE WYSIWYG editor.</p>', 0, N'<Admin:Editor runat=''server'' Height=''400px'' />', N'slide-2.jpg', N'', N'EditorInstance.Text', N'EditorInstance.Text', 0, N'', N'', 1, N'', 0, N'', CAST(N'2018-01-18T10:47:29.177' AS DateTime), CAST(N'2018-01-18T10:47:29.177' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (23822, N'PathToFile', N'Path To File', N'<p>This field type displays a text box and a "Select" link above the textbox, when you click on the "Select" link, it will popup the File Manager, which allows you to select a file, selecting a file will update the textbox with the path to the file.</p>', 0, N'<Admin:FileSelector runat=''server'' DirPath=''/media/uploads/'' />', N'/media/uploads/medias/528/media-details/20961/fields/23742/slide-2.jpg', N'', N'SelectedFilePath', N'SelectedFilePath', 0, N'', N'<img src="@Model.Field.FieldValue" alt="@Model.Field.FieldLabel" />', 1, N'', 0, N'', CAST(N'2018-01-18T10:47:32.450' AS DateTime), CAST(N'2018-01-18T10:47:32.450' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (23823, N'SectionTitle', N'Section Title', N'<p>This field type displays a simple input field.</p>', 0, N'<asp:TextBox runat=''server'' />', N'slide-3.jpg', N'', N'Text', N'Text', 0, N'', N'', 1, N'', 0, N'', CAST(N'2018-01-18T10:47:22.447' AS DateTime), CAST(N'2018-01-18T10:47:22.447' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (23824, N'ShortDescription', N'Short Description', N'<p>This field type displays a TinyMCE WYSIWYG editor.</p>', 0, N'<Admin:Editor runat=''server'' Height=''200px'' />', N'slide-3.jpg', N'', N'EditorInstance.Text', N'EditorInstance.Text', 0, N'', N'', 1, N'', 0, N'', CAST(N'2018-01-18T10:47:25.663' AS DateTime), CAST(N'2018-01-18T10:47:25.663' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (23825, N'MainContent', N'Main Content', N'<p>This field type displays a TinyMCE WYSIWYG editor.</p>', 0, N'<Admin:Editor runat=''server'' Height=''400px'' />', N'slide-3.jpg', N'', N'EditorInstance.Text', N'EditorInstance.Text', 0, N'', N'', 1, N'', 0, N'', CAST(N'2018-01-18T10:47:29.177' AS DateTime), CAST(N'2018-01-18T10:47:29.177' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (23826, N'PathToFile', N'Path To File', N'<p>This field type displays a text box and a "Select" link above the textbox, when you click on the "Select" link, it will popup the File Manager, which allows you to select a file, selecting a file will update the textbox with the path to the file.</p>', 0, N'<Admin:FileSelector runat=''server'' DirPath=''/media/uploads/'' />', N'/media/uploads/medias/528/media-details/20961/fields/23742/slide-3.jpg', N'', N'SelectedFilePath', N'SelectedFilePath', 0, N'', N'<img src="@Model.Field.FieldValue" alt="@Model.Field.FieldLabel" />', 1, N'', 0, N'', CAST(N'2018-01-18T10:47:32.450' AS DateTime), CAST(N'2018-01-18T10:47:32.450' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (23827, N'SectionTitle', N'Section Title', N'<p>This field type displays a simple input field.</p>', 0, N'<asp:TextBox runat=''server'' />', N'slide-4.jpg', N'', N'Text', N'Text', 0, N'', N'', 1, N'', 0, N'', CAST(N'2018-01-18T10:47:22.447' AS DateTime), CAST(N'2018-01-18T10:47:22.447' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (23828, N'ShortDescription', N'Short Description', N'<p>This field type displays a TinyMCE WYSIWYG editor.</p>', 0, N'<Admin:Editor runat=''server'' Height=''200px'' />', N'slide-4.jpg', N'', N'EditorInstance.Text', N'EditorInstance.Text', 0, N'', N'', 1, N'', 0, N'', CAST(N'2018-01-18T10:47:25.663' AS DateTime), CAST(N'2018-01-18T10:47:25.663' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (23829, N'MainContent', N'Main Content', N'<p>This field type displays a TinyMCE WYSIWYG editor.</p>', 0, N'<Admin:Editor runat=''server'' Height=''400px'' />', N'slide-4.jpg', N'', N'EditorInstance.Text', N'EditorInstance.Text', 0, N'', N'', 1, N'', 0, N'', CAST(N'2018-01-18T10:47:29.177' AS DateTime), CAST(N'2018-01-18T10:47:29.177' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (23830, N'PathToFile', N'Path To File', N'<p>This field type displays a text box and a "Select" link above the textbox, when you click on the "Select" link, it will popup the File Manager, which allows you to select a file, selecting a file will update the textbox with the path to the file.</p>', 0, N'<Admin:FileSelector runat=''server'' DirPath=''/media/uploads/'' />', N'/media/uploads/medias/528/media-details/20961/fields/23742/slide-4.jpg', N'', N'SelectedFilePath', N'SelectedFilePath', 0, N'', N'<img src="@Model.Field.FieldValue" alt="@Model.Field.FieldLabel" />', 1, N'', 0, N'', CAST(N'2018-01-18T10:47:32.450' AS DateTime), CAST(N'2018-01-18T10:47:32.450' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (23981, N'SectionTitle', N'Section Title', N'<p>This field type displays a simple input field.</p>', 0, N'<asp:TextBox runat=''server'' />', N'Search', N'', N'Text', N'Text', 0, N'', N'', 1, N'', 0, N'', CAST(N'2018-01-18T10:46:07.223' AS DateTime), CAST(N'2018-01-18T10:46:07.223' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (23982, N'ShortDescription', N'Short Description', N'<p>This field type displays a TinyMCE WYSIWYG editor.</p>', 0, N'<Admin:Editor runat=''server'' Height=''200px'' />', N'<p>Search</p>', N'', N'EditorInstance.Text', N'EditorInstance.Text', 0, N'', N'', 1, N'', 0, N'', CAST(N'2018-01-18T10:46:09.327' AS DateTime), CAST(N'2018-01-18T10:46:09.327' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (23983, N'MainContent', N'Main Content', N'<p>This field type displays a TinyMCE WYSIWYG editor.</p>', 0, N'<Admin:Editor runat=''server'' Height=''400px'' />', N'<p>Search</p>', N'', N'EditorInstance.Text', N'EditorInstance.Text', 0, N'', N'', 1, N'', 0, N'', CAST(N'2018-01-18T10:46:12.093' AS DateTime), CAST(N'2018-01-18T10:46:12.093' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (24017, N'SearchForm', N'Search Form', N'', 0, N'', N'', N'{Field:SearchForm} OR {{Load:8}.Field:SearchForm}', N'', N'', 2, N'', N'<form class="search-form searchbar" role="search" id="hiddenSearchBox" action="{Link:566}" method="get">
    <div class="input-group">
        <input type="search" name="q" class="form-control" placeholder="Search..">
        <div class="input-group-btn">
            <button type="submit" class="btn btn-default" data-toggle="searchbar" data-target="#hiddenSearchBox">
               <i class="fa fa-search" aria-hidden="true"></i> 
               <span class="sr-only">Submit</span>
            </button>
        </div>
    </div>
</form>', 1, N'', 0, N'', CAST(N'2018-04-13T09:30:58.190' AS DateTime), CAST(N'2018-04-13T09:30:58.190' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (24039, N'SectionTitle', N'Section Title', N'<p>This field type displays a simple input field.</p>', 0, N'<asp:TextBox runat=''server'' />', N'Blog Post 4', N'{Field:SectionTitle} OR {{Load:406}.Field:SectionTitle}', N'Text', N'Text', 0, N'', N'', 1, N'', 0, N'', CAST(N'2018-01-18T10:47:06.373' AS DateTime), CAST(N'2018-01-18T10:47:06.380' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (24040, N'ShortDescription', N'Short Description', N'<p>This field type displays a TinyMCE WYSIWYG editor.</p>', 0, N'<Admin:Editor runat=''server'' Height=''200px'' />', N'<p>Blog Post</p>', N'{Field:ShortDescription} OR {{Load:406}.Field:ShortDescription}', N'EditorInstance.Text', N'EditorInstance.Text', 0, N'', N'', 1, N'', 0, N'', CAST(N'2018-01-18T10:47:09.047' AS DateTime), CAST(N'2018-01-18T10:47:09.053' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (24041, N'MainContent', N'Main Content', N'<p>This field type displays a TinyMCE WYSIWYG editor.</p>', 0, N'<Admin:Editor runat=''server'' Height=''400px'' />', N'<p>Blog Post</p>', N'{Field:MainContent} OR {{Load:406}.Field:MainContent}', N'EditorInstance.Text', N'EditorInstance.Text', 0, N'', N'', 1, N'', 0, N'', CAST(N'2018-01-18T10:47:12.320' AS DateTime), CAST(N'2018-01-18T10:47:12.327' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (24075, N'SectionTitle', N'Section Title', N'<p>This field type displays a simple input field.</p>', 0, N'<asp:TextBox runat=''server'' />', N'Blog Post 3', N'{Field:SectionTitle} OR {{Load:405}.Field:SectionTitle}', N'Text', N'Text', 0, N'', N'', 1, N'', 0, N'', CAST(N'2018-01-18T10:47:06.373' AS DateTime), CAST(N'2018-01-18T10:47:06.377' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (24076, N'ShortDescription', N'Short Description', N'<p>This field type displays a TinyMCE WYSIWYG editor.</p>', 0, N'<Admin:Editor runat=''server'' Height=''200px'' />', N'<p>Blog Post</p>', N'{Field:ShortDescription} OR {{Load:405}.Field:ShortDescription}', N'EditorInstance.Text', N'EditorInstance.Text', 0, N'', N'', 1, N'', 0, N'', CAST(N'2018-01-18T10:47:09.047' AS DateTime), CAST(N'2018-01-18T10:47:09.050' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (24077, N'MainContent', N'Main Content', N'<p>This field type displays a TinyMCE WYSIWYG editor.</p>', 0, N'<Admin:Editor runat=''server'' Height=''400px'' />', N'<p>Blog Post</p>', N'{Field:MainContent} OR {{Load:405}.Field:MainContent}', N'EditorInstance.Text', N'EditorInstance.Text', 0, N'', N'', 1, N'', 0, N'', CAST(N'2018-01-18T10:47:12.320' AS DateTime), CAST(N'2018-01-18T10:47:12.323' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (24087, N'Test', N'test', N'<p>This field type displays an area where you can drag and drop pages from the site tree, dragging and dropping pages and hitting the "Save" button will create an association between this field and the dropped pages.</p>', 0, N'<Admin:AssociationDragDrop runat=''server'' />', N'', N'{Field:Test} OR {{Load:530}.Field:Test}', N'Value', N'Value', 3, N'', N'@model RazorFieldParams
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
}', 1, N'', 0, N'', CAST(N'2018-04-13T10:49:47.343' AS DateTime), CAST(N'2018-04-13T10:49:47.343' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (24088, N'SectionTitle', N'Section Title', N'<p>This field type displays a simple input field.</p>', 0, N'<asp:TextBox runat=''server'' />', N'Blog Post', N'{Field:SectionTitle} OR {{Load:403}.Field:SectionTitle}', N'Text', N'Text', 0, N'', N'', 1, N'', 0, N'', CAST(N'2018-01-18T10:47:06.373' AS DateTime), CAST(N'2018-01-18T10:47:06.373' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (24089, N'ShortDescription', N'Short Description', N'<p>This field type displays a TinyMCE WYSIWYG editor.</p>', 0, N'<Admin:Editor runat=''server'' Height=''200px'' />', N'<p>Blog Post</p>', N'{Field:ShortDescription} OR {{Load:403}.Field:ShortDescription}', N'EditorInstance.Text', N'EditorInstance.Text', 0, N'', N'', 1, N'', 0, N'', CAST(N'2018-01-18T10:47:09.047' AS DateTime), CAST(N'2018-01-18T10:47:09.050' AS DateTime))
INSERT [dbo].[Fields] ([ID], [FieldCode], [FieldLabel], [FieldDescription], [RenderLabelAfterControl], [AdminControl], [FieldValue], [UsageExample], [GetAdminControlValue], [SetAdminControlValue], [OrderIndex], [GroupName], [FrontEndLayout], [ShowFrontEndFieldEditor], [FrontEndSubmissions], [IsGlobalField], [FieldSettings], [DateCreated], [DateLastModified]) VALUES (24090, N'MainContent', N'Main Content', N'<p>This field type displays a TinyMCE WYSIWYG editor.</p>', 0, N'<Admin:Editor runat=''server'' Height=''400px'' />', N'<p>Blog Post</p>', N'{Field:MainContent} OR {{Load:403}.Field:MainContent}', N'EditorInstance.Text', N'EditorInstance.Text', 0, N'', N'', 1, N'', 0, N'', CAST(N'2018-01-18T10:47:12.320' AS DateTime), CAST(N'2018-01-18T10:47:12.320' AS DateTime))
SET IDENTITY_INSERT [dbo].[Fields] OFF
SET IDENTITY_INSERT [dbo].[FieldsAssociations] ON 

INSERT [dbo].[FieldsAssociations] ([ID], [MediaDetailFieldID], [AssociatedMediaDetailID], [OrderIndex]) VALUES (511, 23742, 20982, 0)
INSERT [dbo].[FieldsAssociations] ([ID], [MediaDetailFieldID], [AssociatedMediaDetailID], [OrderIndex]) VALUES (512, 23742, 20983, 1)
INSERT [dbo].[FieldsAssociations] ([ID], [MediaDetailFieldID], [AssociatedMediaDetailID], [OrderIndex]) VALUES (513, 23742, 20984, 2)
INSERT [dbo].[FieldsAssociations] ([ID], [MediaDetailFieldID], [AssociatedMediaDetailID], [OrderIndex]) VALUES (514, 23742, 20985, 3)
SET IDENTITY_INSERT [dbo].[FieldsAssociations] OFF
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
INSERT [dbo].[FieldTypes] ([ID], [Name], [CodeToRenderAdminControl], [CodeToGetAdminControlValue], [CodeToSetAdminControlValue], [CodeToRenderFrontEndLayout], [FieldDescription], [DateCreated], [DateLastModified]) VALUES (7, N'Check Box List', N'<fieldset>
    <asp:CheckBoxList runat=''server'' RepeatLayout="UnorderedList">
        <asp:ListItem Text=''Item1'' Value=''Item1''></asp:ListItem>
        <asp:ListItem Text=''Item2'' Value=''Item2''></asp:ListItem>
        <asp:ListItem Text=''Item3'' Value=''Item3''></asp:ListItem>
        <asp:ListItem Text=''Item4'' Value=''Item4''></asp:ListItem>
        <asp:ListItem Text=''Item5'' Value=''Item5''></asp:ListItem>
    </asp:CheckBoxList>
</fieldset>', N'@using System.Web.UI.WebControls
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
}', N'<p>This field type displays a list of checkbox items.</p>', CAST(N'2017-02-21T09:40:31.513' AS DateTime), CAST(N'2017-07-19T12:22:55.350' AS DateTime))
INSERT [dbo].[FieldTypes] ([ID], [Name], [CodeToRenderAdminControl], [CodeToGetAdminControlValue], [CodeToSetAdminControlValue], [CodeToRenderFrontEndLayout], [FieldDescription], [DateCreated], [DateLastModified]) VALUES (8, N'Radio Button List', N'<fieldset>
    <asp:RadioButtonList runat=''server'' RepeatLayout="UnorderedList">
        <asp:ListItem Text=''Item1'' Value=''Item1''></asp:ListItem>
        <asp:ListItem Text=''Item2'' Value=''Item2''></asp:ListItem>
        <asp:ListItem Text=''Item3'' Value=''Item3''></asp:ListItem>
        <asp:ListItem Text=''Item4'' Value=''Item4''></asp:ListItem>
        <asp:ListItem Text=''Item5'' Value=''Item5''></asp:ListItem>
    </asp:RadioButtonList>
</fieldset>', N'@using System.Web.UI.WebControls
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
}', N'<p>This field type displays a list of radio button items.</p>', CAST(N'2017-02-21T09:41:11.920' AS DateTime), CAST(N'2017-07-19T12:21:53.843' AS DateTime))
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
INSERT [dbo].[FieldTypes] ([ID], [Name], [CodeToRenderAdminControl], [CodeToGetAdminControlValue], [CodeToSetAdminControlValue], [CodeToRenderFrontEndLayout], [FieldDescription], [DateCreated], [DateLastModified]) VALUES (14, N'Association - Check Box List', N'<fieldset>
    <Admin:AssociationCheckBoxList runat=''server'' ParentMediaID=''0'' MediaTypeID=''1'' ShowInMenu="True" />
</fieldset>', N'SelectedValue', N'SelectedValue', N'@model RazorFieldParams
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
}', N'<p>This field type displays a check box list of items, these items correspond with pages in the site tree, checking items and hitting the "Save" button will create an association between this field and the selected pages.</p>', CAST(N'2017-02-21T09:45:01.800' AS DateTime), CAST(N'2017-07-24T11:46:13.780' AS DateTime))
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
    var fieldAssociations = field.FieldAssociations.OrderBy(i=>i.OrderIndex);
    
    if(fieldAssociations.Count() > 0)
    {    
        <script>
            head.load([''//cdnjs.cloudflare.com/ajax/libs/bxslider/4.2.12/jquery.bxslider.min.js'',''//cdnjs.cloudflare.com/ajax/libs/bxslider/4.2.12/jquery.bxslider.min.css''], function() {
                // Call a function when done
                $(".bxslider:not(.updated)").each(function(){
                    var slidesWrapper = $(this);
                    $(this).addClass("updated");    
                    
                    $(this).bxSlider({
                        mode: ''fade'',
                        captions: true
                    });
                });
            });
        </script>
        
        <ul class="bxslider">
        @foreach(var item in fieldAssociations)
        {
            <li><a href=''#''>@Raw(item.MediaDetail.RenderField("PathToFile"))</a></li>
        }
        </ul>
    }
}', N'<p>The field type displays a widget that allows you to create multiple items of a specific media type and displays these items in a thumbnail format. You can also upload one or more files / images and this will automaticly create items linking to it. A gallery will show up in the frontend corresponding to the items in this field.</p>', CAST(N'2017-03-30T15:20:29.417' AS DateTime), CAST(N'2017-07-14T11:02:51.173' AS DateTime))
INSERT [dbo].[FieldTypes] ([ID], [Name], [CodeToRenderAdminControl], [CodeToGetAdminControlValue], [CodeToSetAdminControlValue], [CodeToRenderFrontEndLayout], [FieldDescription], [DateCreated], [DateLastModified]) VALUES (22, N'Widget - Tabs', N'<Admin:MultiFileUploader runat=''server'' SaveToFolder='''' MediaTypeID=''25'' PageSize=''12'' Mode=''GridView'' />', N'SelectedValue', N'SelectedValue', N'<!-- FieldsTab:RazorTabs: Razor Code showing how you can load a field and loop through its associated items -->
@model RazorFieldParams
@{
    var field = (MediaDetailField)Model.Field;
    var fieldAssociations = field.FieldAssociations.OrderBy(i=>i.OrderIndex);

    if(fieldAssociations.Count() > 0)
    {
        <script>
            head.load([''//code.jquery.com/ui/1.12.1/jquery-ui.js'',''//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css''], function() {
                // Call a function when done
                $(".tabs:not(.updated)").each(function(){
                    var tabsWrapper = $(this);
                    var tabsId = "tabs-"+$(".tabs").index(this);
                    $(this).addClass("updated");
                    $(this).attr("id", tabsId);
                    var tabsLi = $(this).find("ul li");
                    tabsLi.each(function(){
                        var index = tabsLi.index(this);
                        var tabContentId = tabsId + "-tab-"+index;
                        
                        $(this).find("a").attr("href", "#"+tabContentId);
                        
                        var tabContents = tabsWrapper.find(">div");
                        $(tabContents[index]).attr("id", tabContentId)
                    });
                    
                    $(this).tabs();
                });
            });
        </script>
        
        <div class="tabs">
            <ul>
            @foreach(var item in fieldAssociations)
            {
                <li><a>@Raw(item.MediaDetail.RenderField("SectionTitle"))</a></li>
            }
            </ul>
            @foreach(var item in fieldAssociations)
            {
                <div>
                    <p>@Raw(item.MediaDetail.RenderField("MainContent"))</p>
                </div>
            }        
        </div>
    }
}', N'<p>The field type displays a widget that allows you to create multiple items of a specific media type and displays these items in a grid format. Tabs will show up in the frontend corresponding to the items in this field.</p>', CAST(N'2017-05-04T09:19:56.840' AS DateTime), CAST(N'2017-07-14T10:39:42.067' AS DateTime))
INSERT [dbo].[FieldTypes] ([ID], [Name], [CodeToRenderAdminControl], [CodeToGetAdminControlValue], [CodeToSetAdminControlValue], [CodeToRenderFrontEndLayout], [FieldDescription], [DateCreated], [DateLastModified]) VALUES (23, N'Widget - Accordian', N'<Admin:MultiFileUploader runat=''server'' SaveToFolder='''' MediaTypeID=''25'' PageSize=''12'' Mode=''GridView'' />', N'SelectedValue', N'SelectedValue', N'<!-- FieldsTab:RazorAccordian: Razor Code showing how you can load a field and loop through its associated items -->
@model RazorFieldParams
@{
    var field = (MediaDetailField)Model.Field;
    var fieldAssociations = field.FieldAssociations.OrderBy(i=>i.OrderIndex);
    
    if(fieldAssociations.Count() > 0)
    {    
        <script>
            head.load([''//code.jquery.com/ui/1.12.1/jquery-ui.js'',''/FrontEnd/lib/jquery-ui/jquery-ui.css''], function() {
                // Call a function when done
                $(".accordion:not(.updated)").each(function(){
                    var slidesWrapper = $(this);
                    $(this).addClass("updated");    
                    
                    $(this).accordion({ 
                        active: false,
                        collapsible: true,
                        icons: false,
                        heightStyle: "content"
                    });
                });                
            });
        </script>
    
        <div class="accordion">
            @foreach(var item in fieldAssociations)
            {
                <h3>@Raw(item.MediaDetail.RenderField("SectionTitle"))</h3>
                <div>
                    @Raw(item.MediaDetail.RenderField("MainContent"))
                </div>            
            }
        </div>
    }
}', N'<p>The field type displays a widget that allows you to create multiple items of a specific media type and displays these items in a grid format. An Accordian will show up in the frontend corresponding to the items in this field.</p>', CAST(N'2017-05-04T09:20:41.923' AS DateTime), CAST(N'2017-12-14T19:57:45.187' AS DateTime))
INSERT [dbo].[FieldTypes] ([ID], [Name], [CodeToRenderAdminControl], [CodeToGetAdminControlValue], [CodeToSetAdminControlValue], [CodeToRenderFrontEndLayout], [FieldDescription], [DateCreated], [DateLastModified]) VALUES (24, N'File Selector - Raw Path To File', N'<Admin:FileSelector runat=''server'' DirPath=''/media/uploads/'' />', N'SelectedFilePath', N'SelectedFilePath', N'', N'', CAST(N'2017-05-23T15:55:59.763' AS DateTime), CAST(N'2017-05-23T16:02:06.077' AS DateTime))
INSERT [dbo].[FieldTypes] ([ID], [Name], [CodeToRenderAdminControl], [CodeToGetAdminControlValue], [CodeToSetAdminControlValue], [CodeToRenderFrontEndLayout], [FieldDescription], [DateCreated], [DateLastModified]) VALUES (10024, N'Widget - Form Builder', N'<Admin:FormBuilder runat="server" />', N'', N'', N'@{
    var formRawData = Model.Field.FieldValue;
    var fieldId = Model.Field.ID;
    var formId = Model.Field.FieldCode+"_fieldId-"+fieldId;
    var form = HttpContext.Current.Request.Form.ToString();

    if(form != "")
    {
        var thisFormSubmitted = (HttpContext.Current.Request.Form["fieldId"] == fieldId.ToString());
    
        if(thisFormSubmitted)
        {
            var handlers  = new WebApplication.WebServices.Handlers();
            var returnObj = handlers.FieldFrontEndFormSubmissionHandler(fieldId);
            
            if(returnObj.IsError)
            {
                <div class="alert alert-danger">@returnObj.Error.Exception.Message</div>
            }
            else
            {
                <div class="alert alert-success">Successfully Submitted</div>
            }
        }
    }
}

<script>
    head.load([''/Scripts/formBuilder-master/dist/form-render.min.js''], function() {
        $(document).ready(function(){
            var formRawData = ''@Raw(formRawData)'';
            
            $(''#@formId'').formRender({
                formData: formRawData,
                notify: {
                    success: function(){
                        $(''#@formId'').append(''<input type="hidden" name="fieldId" value="@Model.Field.ID">'')
                    }
                }
            });  
            
            
        });
    });    
</script>
<form id="@formId" method="POST" enctype="multipart/form-data">
</form>', N'<p>This field renders a form builder in the backend and renders the form in the front end</p>', CAST(N'2017-07-27T11:28:49.857' AS DateTime), CAST(N'2018-03-23T16:19:02.490' AS DateTime))
INSERT [dbo].[FieldTypes] ([ID], [Name], [CodeToRenderAdminControl], [CodeToGetAdminControlValue], [CodeToSetAdminControlValue], [CodeToRenderFrontEndLayout], [FieldDescription], [DateCreated], [DateLastModified]) VALUES (10025, N'GenerateNav', N'@{
    var guid = Guid.NewGuid();
    var fieldId = Model.Field.ID;
    
    var fieldSettings = Model.Field.FieldSettings;
    var fieldSettingsObj = StringHelper.JsonToObject<dynamic>(fieldSettings);
 
    var MediaID = "0";
    var RenderDepth = "2";
    var RenderRootPage = "";
    var RenderParentItemInChildNav = "False";
    var TopLevelAnchorClasses = "";
    var SubAnchorClasses = "";
    var SubULClasses = "";
    var SubLIClasses = "";
    var RootULClasses = "";
    var RenderBackButton = "False";
    var IsBreadCrumbMenu = "False";
    var RenderHiddenMediaTypes = "False";
    var RenderHiddenPages = "False";
    
    if(fieldSettingsObj != null)
    {
        MediaID = (fieldSettingsObj["MediaID"] == null)? Model.MediaID : fieldSettingsObj["MediaID"];
        RenderDepth = (fieldSettingsObj["RenderDepth"] == null) ? "1" : fieldSettingsObj["RenderDepth"];
        RenderRootPage = (fieldSettingsObj["RenderRootPage"] == "on")? "checked" : "";
        RenderBackButton = (fieldSettingsObj["RenderBackButton"] == "on")? "checked" : "";
        IsBreadCrumbMenu = (fieldSettingsObj["IsBreadCrumbMenu"] == "on")? "checked" : "";
        IsBreadCrumbMenu = (fieldSettingsObj["IsBreadCrumbMenu"] == "on")? "checked" : "";
        RenderHiddenMediaTypes = (fieldSettingsObj["RenderHiddenMediaTypes"] == "on")? "checked" : "";
        RenderHiddenPages = (fieldSettingsObj["RenderHiddenPages"] == "on")? "checked" : "";
        
        TopLevelAnchorClasses = fieldSettingsObj["TopLevelAnchorClasses"] == null ? "" : fieldSettingsObj["TopLevelAnchorClasses"];
        SubAnchorClasses = fieldSettingsObj["SubAnchorClasses"] == null ? "" : fieldSettingsObj["SubAnchorClasses"];
        SubULClasses = fieldSettingsObj["SubULClasses"] == null ? "" : fieldSettingsObj["SubULClasses"];
        RootULClasses = fieldSettingsObj["RootULClasses"] == null ? "" : fieldSettingsObj["RootULClasses"];
        SubLIClasses = fieldSettingsObj["SubLIClasses"] == null ? "" : fieldSettingsObj["SubLIClasses"];
    }
}

<fieldset>
    <div id="tabs-@guid" class="tabs">
        <ul>
            <li><a href="#main-@guid">Main</a></li>
            <li><a href="#field-settings-@guid">Field Settings</a></li>
        </ul>
        <div id="main-@guid">
            <fieldset>
                <label>ID of the root page</label>
                <input type="text" name="MediaID" value="@MediaID" />
            </fieldset>
        </div>
        <div id="field-settings-@guid">
            <fieldset>
                <div>
                    <input type="checkbox" name="RenderHiddenMediaTypes" @RenderHiddenMediaTypes /> Render Hidden MediaTypes
                </div>     
                <div>
                    <input type="checkbox" name="RenderHiddenPages" @RenderHiddenPages /> Render Hidden Pages
                </div>                 
                <div>
                    <input type="checkbox" name="IsBreadCrumbMenu" @IsBreadCrumbMenu /> Is Bread Crumb Menu
                </div>                
                <div>
                    <input type="checkbox" name="RenderRootPage" @RenderRootPage /> Render Root Page
                </div>
                <div>
                    <input type="checkbox" name="RenderParentItemInChildNav" @RenderParentItemInChildNav /> Render Parent Item In ChildNav
                </div>       
                <div>
                    <input type="checkbox" name="RenderBackButton" @RenderBackButton /> Render Back Button
                </div>                 
                <div>
                    <label>Render Depth</label>
                    <input type="text" name="RenderDepth" value="@RenderDepth" />
                </div>
                <div>
                    <label>Root UL Classes</label>
                    <input type="text" name="RootULClasses" value="@RootULClasses" />
                </div>
                <div>
                    <label>Sub LI Classes</label>
                    <input type="text" name="SubLIClasses" value="@SubLIClasses" />
                </div>
                <div>
                    <label>Top Level Anchor Classes</label>
                    <input type="text" name="TopLevelAnchorClasses" value="@TopLevelAnchorClasses" />
                </div>                
                <div>
                    <label>Sub Anchor Classes</label>
                    <input type="text" name="SubAnchorClasses" value="@SubAnchorClasses" />
                </div>                
                <div>
                    <label>Sub UL Classes</label>
                    <input type="text" name="SubULClasses" value="@SubULClasses" />
                </div>                
            </fieldset>
        </div>
    </div>
    <div class="buttons">
        <a href="javascript:void(0)" id="SubmitField-@guid">Save Field</a>
    </div>
    <div id="response-@guid"></div>
</fieldset>

<script>
    $(document).ready(function(){
        $("#SubmitField-@guid").click(function(){
            var data = $("#tabs-@guid").find("input").serialize();
            data = data +"&fieldId=@fieldId";
            
            $("#response-@guid").text("Please wait ...");
            
            $.post(''/WebServices/Handlers.asmx/FieldSettingsSubmissionHandler'', data , function(response) {
                if(response.IsError == "False")
                {
                    $("#response-@guid").text("Saved!");
                    ReloadPreviewPanel();
                }
                else
                {
                    $("#response-@guid").text("Error");
                }
            });
        });
    });
</script>', N'', N'', N'@{
    var fieldSettings = Model.Field.FieldSettings;
    var fieldSettingsObj = StringHelper.JsonToObject<dynamic>(fieldSettings);
    
    if(fieldSettingsObj != null)
    {
        var MediaID = fieldSettingsObj["MediaID"];
        var RenderDepth = fieldSettingsObj["RenderDepth"] == null ? "1" : fieldSettingsObj["RenderDepth"];
        var RenderRootPage = (fieldSettingsObj["RenderRootPage"] == "on")? "True" : "False";
        
        var RenderParentItemInChildNav = (fieldSettingsObj["RenderParentItemInChildNav"] == "on")? "True" : "False";
        var TopLevelAnchorClasses = fieldSettingsObj["TopLevelAnchorClasses"] == null ? "" : fieldSettingsObj["TopLevelAnchorClasses"];
        var SubAnchorClasses = fieldSettingsObj["SubAnchorClasses"] == null ? "" : fieldSettingsObj["SubAnchorClasses"];
        var SubULClasses = fieldSettingsObj["SubULClasses"] == null ? "" : fieldSettingsObj["SubULClasses"];
        var RootULClasses = fieldSettingsObj["RootULClasses"] == null ? "" : fieldSettingsObj["RootULClasses"];
        var SubLIClasses = fieldSettingsObj["SubLIClasses"] == null ? "" : fieldSettingsObj["SubLIClasses"];
        var RenderBackButton = (fieldSettingsObj["RenderBackButton"] == "on")? "True" : "False";
        var IsBreadCrumbMenu = (fieldSettingsObj["IsBreadCrumbMenu"] == "on")? "True" : "False";
        var RenderHiddenMediaTypes = (fieldSettingsObj["RenderHiddenMediaTypes"] == "on")? "True" : "False";
        var RenderHiddenPages = (fieldSettingsObj["RenderHiddenPages"] == "on")? "True" : "False";
        
        <Site:GenerateNav runat="server" 
                          RootMediaID=''@MediaID'' 
                          RenderRootMedia="@RenderRootPage" 
                          RenderDepth="@RenderDepth" 
                          TopLevelAnchorClasses="@TopLevelAnchorClasses" 
                          SubAnchorClasses="@SubAnchorClasses"
                          RootULClasses="@RootULClasses"
                          SubULClasses="@SubULClasses"
                          SubLIClasses="@SubLIClasses"
                          RenderBackButton="@RenderBackButton"
                          RenderParentItemInChildNav = "@RenderParentItemInChildNav"
                          IsBreadCrumbMenu = "@IsBreadCrumbMenu"
                          RenderHiddenMediaTypes="@RenderHiddenMediaTypes"
                          RenderHiddenPages="@RenderHiddenPages"
                          />
    }
}', N'<p>In the backend this field type renders a input field which allows you to enter the ID of the Root Page. In the front end this field renders a nav.</p>', CAST(N'2017-08-29T10:19:35.370' AS DateTime), CAST(N'2017-10-23T11:55:07.173' AS DateTime))
INSERT [dbo].[FieldTypes] ([ID], [Name], [CodeToRenderAdminControl], [CodeToGetAdminControlValue], [CodeToSetAdminControlValue], [CodeToRenderFrontEndLayout], [FieldDescription], [DateCreated], [DateLastModified]) VALUES (10026, N'Repeater', N'@{
    var guid = Guid.NewGuid();
    var fieldId = Model.Field.ID;
    
    var fieldSettings = Model.Field.FieldSettings;
    var fieldSettingsObj = StringHelper.JsonToObject<dynamic>(fieldSettings);
 
    var MediaID = "0";
    var ShortCode = "UseSummaryLayout";
    
    if(fieldSettingsObj != null)
    {
        MediaID = (fieldSettingsObj["MediaID"] == null)? Model.MediaID : fieldSettingsObj["MediaID"];
        ShortCode = (fieldSettingsObj["ShortCode"] == null)? "UseSummaryLayout" : fieldSettingsObj["ShortCode"];
    }
}

<fieldset>
    <div id="tabs-@guid" class="tabs">
        <ul>
            <li><a href="#main-@guid">Main</a></li>
        </ul>
        <div id="main-@guid">
            <fieldset>
                <div>
                    <label>ID of the root page</label>
                    <input type="text" name="MediaID" value="@MediaID" />
                </div>
                <div>
                    <label>Property of the child pages to loop through</label>
                    <input type="text" name="ShortCode" value="@ShortCode" />
                </div>                
            </fieldset>
        </div>
    </div>
    <div class="buttons">
        <a href="javascript:void(0)" id="SubmitField-@guid">Save Field</a>
    </div>
    <div id="response-@guid"></div>
</fieldset>

<script>
    $(document).ready(function(){
        $("#SubmitField-@guid").click(function(){
            var data = $("#tabs-@guid").find("input").serialize();
            data = data +"&fieldId=@fieldId";
            
            $("#response-@guid").text("Please wait ...");
            
            $.post(''/WebServices/Handlers.asmx/FieldSettingsSubmissionHandler'', data , function(response) {
                if(response.IsError == "False")
                {
                    $("#response-@guid").text("Saved!");
                    ReloadPreviewPanel();
                }
                else
                {
                    $("#response-@guid").text("Error");
                }
            });
        });
    });
</script>', N'', N'', N'@{
    var fieldSettings = Model.Field.FieldSettings;
    var fieldSettingsObj = StringHelper.JsonToObject<dynamic>(fieldSettings);
    
    var MediaID = "0";
    var ShortCode = "";    
    
    if(fieldSettingsObj != null)
    {
        MediaID = fieldSettingsObj["MediaID"];
        ShortCode = (fieldSettingsObj["ShortCode"] == null)? "UseSummaryLayout" : fieldSettingsObj["ShortCode"];
        
        <Site:RenderChildren runat="server" MediaID="@MediaID" ChildPropertyName="@ShortCode" Where=''ShowInMenu'' />
    }
}', N'<p>This field loops through and renders the properties of all the child items of the root page, for example</p>
<ul>
<li>"UseSummaryLayout" - Will render the summary layout of the page</li>
<li>"Field:SectionTitle" - Will loop though and render the Section Title etc</li>
</ul>', CAST(N'2017-09-05T09:57:19.583' AS DateTime), CAST(N'2017-09-05T13:15:42.830' AS DateTime))
INSERT [dbo].[FieldTypes] ([ID], [Name], [CodeToRenderAdminControl], [CodeToGetAdminControlValue], [CodeToSetAdminControlValue], [CodeToRenderFrontEndLayout], [FieldDescription], [DateCreated], [DateLastModified]) VALUES (10027, N'Language Toggle', N'', N'', N'', N'<Site:LanguageToggle runat="server" />', N'<p>This will only show in the frontend when the number of active languages for the current page is greater or equal to 2</p>', CAST(N'2017-09-12T11:56:07.897' AS DateTime), CAST(N'2017-09-12T11:56:07.897' AS DateTime))
INSERT [dbo].[FieldTypes] ([ID], [Name], [CodeToRenderAdminControl], [CodeToGetAdminControlValue], [CodeToSetAdminControlValue], [CodeToRenderFrontEndLayout], [FieldDescription], [DateCreated], [DateLastModified]) VALUES (10028, N'Drop Down List - Search', N'<asp:DropDownList runat=''server'' class=''chosen''>
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
}', N'<p>This field type displays a dropdown list.</p>', CAST(N'2018-01-02T15:40:31.833' AS DateTime), CAST(N'2018-01-02T15:41:16.530' AS DateTime))
INSERT [dbo].[FieldTypes] ([ID], [Name], [CodeToRenderAdminControl], [CodeToGetAdminControlValue], [CodeToSetAdminControlValue], [CodeToRenderFrontEndLayout], [FieldDescription], [DateCreated], [DateLastModified]) VALUES (10029, N'Multi Select List', N'<asp:ListBox runat="server" SelectionMode="Multiple" class=''chosen''>
  <asp:ListItem Text="test1"></asp:ListItem>
  <asp:ListItem Text="test2"></asp:ListItem>
  <asp:ListItem Text="test3"></asp:ListItem>
</asp:ListBox>', N'@using System.Web.UI.WebControls
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
}', N'<p>This field type displays a dropdown list.</p>', CAST(N'2018-01-02T15:40:58.670' AS DateTime), CAST(N'2018-01-03T09:00:05.250' AS DateTime))
INSERT [dbo].[FieldTypes] ([ID], [Name], [CodeToRenderAdminControl], [CodeToGetAdminControlValue], [CodeToSetAdminControlValue], [CodeToRenderFrontEndLayout], [FieldDescription], [DateCreated], [DateLastModified]) VALUES (10030, N'Associated - Multi Select', N'<Admin:AssociationMultiSelect runat="server" ParentMediaID="0" />', N'SelectedValue', N'SelectedValue', N'<ul>
@foreach(var item in Model.Field.FieldAssociations)
{
    <li>
        <a href="@item.MediaDetail.AbsoluteUrl">@item.MediaDetail.SectionTitle</a>
    </li>
}
</ul>', N'<p>Create an association between the field and multiple nodes</p>', CAST(N'2018-01-05T08:50:52.387' AS DateTime), CAST(N'2018-01-05T08:50:52.387' AS DateTime))
SET IDENTITY_INSERT [dbo].[FieldTypes] OFF
SET IDENTITY_INSERT [dbo].[Languages] ON 

INSERT [dbo].[Languages] ([ID], [DisplayName], [Name], [UriSegment], [CultureCode], [Description], [IsActive], [DateCreated], [DateLastModified]) VALUES (5, N'English', N'English', N'en', N'en-CA', N'Canadian English', 1, CAST(N'2010-12-10T22:51:31.000' AS DateTime), CAST(N'2012-01-12T10:23:53.993' AS DateTime))
INSERT [dbo].[Languages] ([ID], [DisplayName], [Name], [UriSegment], [CultureCode], [Description], [IsActive], [DateCreated], [DateLastModified]) VALUES (6, N'French', N'French', N'fr', N'fr-CA', N'Canadian French', 0, CAST(N'2011-02-05T16:01:55.260' AS DateTime), CAST(N'2017-09-12T11:59:06.487' AS DateTime))
SET IDENTITY_INSERT [dbo].[Languages] OFF
SET IDENTITY_INSERT [dbo].[MasterPages] ON 

INSERT [dbo].[MasterPages] ([ID], [Name], [PathToFile], [MobileTemplate], [UseLayout], [Layout], [DateCreated], [DateLastModified]) VALUES (2, N'Home Page Template', N'', N'', 1, N'<!DOCTYPE html>
<html>

<head>
    {Settings:GlobalCodeInHead}
</head>

<body>
    {Settings:GlobalCodeInBody}
    
    <Site:LoggedInHeader runat="server" /> 
    
    <!-- Header -->
    {{Load:8}.UseMainLayout} 
    
    <!-- PageContent -->
    {PageContent} 
    
    <!-- Footer -->
    {{Load:9}.UseMainLayout}
    
</body>

</html>', CAST(N'2012-01-12T15:32:36.367' AS DateTime), CAST(N'2018-04-05T10:03:17.717' AS DateTime))
INSERT [dbo].[MasterPages] ([ID], [Name], [PathToFile], [MobileTemplate], [UseLayout], [Layout], [DateCreated], [DateLastModified]) VALUES (3, N'Interior Page Template', N'', N'', 1, N'<!DOCTYPE html>
<html>

<head>
    {Settings:GlobalCodeInHead}
</head>

<body>
    {Settings:GlobalCodeInBody}
    <Site:LoggedInHeader runat="server" /> 
    <!-- Header -->
    {{Load:8}.UseMainLayout} 
    
    <!-- PageContent -->
    {PageContent} 
    
    <!-- Footer -->
    {{Load:9}.UseMainLayout}
</body>

</html>', CAST(N'2012-03-05T15:28:40.647' AS DateTime), CAST(N'2018-04-05T10:03:26.580' AS DateTime))
INSERT [dbo].[MasterPages] ([ID], [Name], [PathToFile], [MobileTemplate], [UseLayout], [Layout], [DateCreated], [DateLastModified]) VALUES (4, N'Blank Template ( Includes GlobalSettings )', N'', N'', 1, N'<!DOCTYPE html>
<html>

<head>
    {Settings:GlobalCodeInHead}
</head>

<body>
    {Settings:GlobalCodeInBody}
    <Site:LoggedInHeader runat="server" />
    {PageContent}
</body>

</html>', CAST(N'2017-01-20T13:23:29.697' AS DateTime), CAST(N'2018-04-05T10:03:34.597' AS DateTime))
SET IDENTITY_INSERT [dbo].[MasterPages] OFF
SET IDENTITY_INSERT [dbo].[Media] ON 

INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (1, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (2, 1, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (3, 2, 1)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (4, 2, 2)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (5, 2, 3)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (6, 5, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (7, 2, 4)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (8, 7, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (9, 7, 1)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (12, 2, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (13, 2, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (14, 2, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (15, 2, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (16, 2, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (17, 2, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (18, 2, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (19, 2, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (20, 2, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (21, 2, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (22, 2, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (23, 2, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (24, 2, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (25, 2, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (26, 2, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (27, 2, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (28, 2, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (29, 2, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (30, 2, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (31, 2, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (32, 2, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (33, 2, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (34, 2, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (35, 2, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (36, 2, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (37, 2, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (38, 2, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (39, 2, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (40, 2, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (41, 2, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (45, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (46, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (47, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (48, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (49, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (50, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (51, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (52, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (53, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (54, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (55, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (56, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (57, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (58, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (59, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (60, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (61, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (62, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (65, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (66, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (67, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (68, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (69, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (70, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (71, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (72, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (73, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (74, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (75, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (76, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (77, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (78, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (79, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (80, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (81, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (82, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (83, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (84, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (85, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (86, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (87, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (88, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (89, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (90, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (91, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (92, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (93, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (94, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (95, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (96, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (97, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (98, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (99, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (100, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (101, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (102, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (103, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (104, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (105, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (106, NULL, 0)
GO
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (107, 2, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (108, 2, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (111, 2, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (112, 2, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (113, 2, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (114, 2, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (115, 2, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (116, 2, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (117, 2, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (118, 2, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (119, 2, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (120, 2, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (126, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (127, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (128, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (129, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (134, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (135, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (136, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (137, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (138, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (139, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (140, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (141, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (142, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (143, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (144, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (145, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (149, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (150, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (151, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (152, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (153, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (154, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (155, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (156, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (157, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (158, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (159, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (160, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (161, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (162, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (163, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (164, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (165, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (166, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (167, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (168, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (169, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (170, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (171, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (172, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (173, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (174, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (175, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (176, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (177, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (178, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (179, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (180, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (181, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (182, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (183, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (184, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (185, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (186, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (187, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (188, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (193, 2, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (194, 2, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (195, 7, 2)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (196, 8, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (197, 8, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (198, 8, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (202, 195, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (203, 195, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (204, 195, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (205, 8, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (206, 8, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (207, 8, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (208, 8, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (209, 8, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (210, 8, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (212, 8, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (213, 8, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (214, 8, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (215, 8, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (216, 8, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (217, 8, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (220, 8, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (221, 8, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (222, 8, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (224, 8, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (225, 8, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (226, 8, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (228, 8, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (229, 8, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (230, 8, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (243, 8, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (244, 8, 0)
GO
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (245, 8, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (257, 8, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (258, 8, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (259, 8, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (271, 8, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (272, 8, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (273, 8, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (331, 8, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (332, 8, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (333, 8, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (336, 8, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (337, 8, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (338, 8, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (340, 8, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (341, 8, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (342, 8, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (343, 8, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (344, 8, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (345, 8, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (348, 8, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (349, 8, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (350, 8, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (353, 8, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (354, 8, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (355, 8, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (358, 8, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (359, 8, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (360, 8, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (367, 8, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (368, 8, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (369, 8, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (371, 8, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (372, 8, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (373, 8, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (375, 8, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (376, 8, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (377, 8, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (379, 8, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (380, 8, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (381, 8, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (383, 8, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (384, 8, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (385, 8, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (387, 8, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (388, 8, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (389, 8, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (390, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (391, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (392, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (393, 8, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (394, 8, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (395, 8, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (396, 7, 3)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (397, 396, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (398, 8, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (399, 8, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (400, 8, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (401, 2, 5)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (402, 401, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (403, 402, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (404, 402, 1)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (405, 402, 2)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (406, 402, 3)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (413, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (415, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (417, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (419, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (420, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (421, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (423, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (424, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (425, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (426, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (427, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (428, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (429, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (430, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (431, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (432, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (433, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (435, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (436, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (437, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (438, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (439, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (440, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (441, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (442, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (443, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (444, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (445, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (446, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (447, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (448, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (449, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (450, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (451, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (452, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (453, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (454, NULL, 0)
GO
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (455, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (456, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (457, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (458, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (459, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (460, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (461, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (462, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (463, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (466, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (467, NULL, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (472, 2, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (473, 2, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (474, 2, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (475, 2, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (476, 2, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (477, 2, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (478, 2, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (479, 2, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (480, 2, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (481, 2, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (482, 2, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (483, 2, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (484, 2, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (485, 2, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (486, 2, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (487, 2, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (488, 2, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (489, 2, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (490, 2, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (491, 2, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (492, 2, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (493, 2, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (494, 2, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (495, 2, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (496, 2, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (497, 2, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (498, 2, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (499, 2, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (500, 2, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (501, 2, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (502, 2, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (503, 2, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (504, 2, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (505, 2, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (506, 2, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (507, 2, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (508, 2, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (509, 2, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (510, 2, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (511, 2, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (512, 2, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (513, 2, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (514, 2, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (515, 2, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (516, 2, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (517, 2, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (518, 2, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (519, 2, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (520, 2, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (521, 2, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (522, 2, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (523, 2, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (528, 2, 6)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (529, 528, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (530, 528, 1)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (532, 528, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (533, 528, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (534, 528, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (535, 528, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (536, 528, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (537, 528, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (538, 528, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (539, 528, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (540, 528, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (541, 528, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (542, 528, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (543, 528, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (544, 528, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (545, 528, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (546, 528, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (547, 528, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (548, 528, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (549, 528, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (550, 528, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (551, 528, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (552, 528, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (553, 528, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (554, 528, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (555, 528, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (556, 528, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (557, 528, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (558, 528, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (559, 528, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (560, 528, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (561, 528, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (562, 528, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (563, 528, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (564, 528, 0)
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (565, 528, 0)
GO
INSERT [dbo].[Media] ([ID], [ParentMediaID], [OrderIndex]) VALUES (566, 2, 102)
SET IDENTITY_INSERT [dbo].[Media] OFF
SET IDENTITY_INSERT [dbo].[MediaDetails] ON 

INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [MetaKeywords], [MetaDescription], [MetaRobots], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [UseDefaultLanguageLayouts], [CanLimitedRolesAccessAllChildPages], [EnforceRoleLimitationsOnFrontEnd], [OnPublishExecuteCode], [InjectHtml]) VALUES (1, 1, N'Root', N'Root', 0, 0, N'', N'', N'', N'', 5, 0, 0, 0, 0, NULL, CAST(N'2017-07-13T11:18:36.110' AS DateTime), 0, 0, 1, N'', N'', N'~/', 13, 0, NULL, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'', 0, CAST(N'2017-07-13T11:18:35.933' AS DateTime), CAST(N'2017-07-13T11:18:36.110' AS DateTime), 0, 0, 0, N'', NULL, N'', N'', N'', 1, 1, 0, 0, N'', N'')
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [MetaKeywords], [MetaDescription], [MetaRobots], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [UseDefaultLanguageLayouts], [CanLimitedRolesAccessAllChildPages], [EnforceRoleLimitationsOnFrontEnd], [OnPublishExecuteCode], [InjectHtml]) VALUES (4, 3, N'Login', N'Login', 0, 0, N'', N'', N'', N'', 5, 0, 0, 0, 0, NULL, CAST(N'2017-07-14T08:28:00.623' AS DateTime), 0, 1, 1, N'', N'', N'~/login/', 1, 0, NULL, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'', 0, CAST(N'2017-07-14T08:28:00.417' AS DateTime), CAST(N'2017-07-14T08:28:19.087' AS DateTime), 0, 0, 0, N'', NULL, N'<form runat="server">
    <div class="login-page-container">
        <Site:Login ID="LoginControl" runat="server" />
    </div>
</form>', N'', N'', 0, 1, 0, 0, N'', N'')
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [MetaKeywords], [MetaDescription], [MetaRobots], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [UseDefaultLanguageLayouts], [CanLimitedRolesAccessAllChildPages], [EnforceRoleLimitationsOnFrontEnd], [OnPublishExecuteCode], [InjectHtml]) VALUES (5, 4, N'Page Not Found', N'Page Not Found', 0, 0, N'', N'', N'', N'', 5, 0, 0, 0, 0, NULL, CAST(N'2017-07-14T08:28:39.463' AS DateTime), 0, 1, 1, N'', N'', N'~/page-not-found/', 1, 0, NULL, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'', 0, CAST(N'2017-07-14T08:28:39.280' AS DateTime), CAST(N'2017-07-14T08:28:49.940' AS DateTime), 0, 0, 0, N'', NULL, N'{MainContent}', N'', N'', 1, 1, 0, 0, N'', N'')
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [MetaKeywords], [MetaDescription], [MetaRobots], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [UseDefaultLanguageLayouts], [CanLimitedRolesAccessAllChildPages], [EnforceRoleLimitationsOnFrontEnd], [OnPublishExecuteCode], [InjectHtml]) VALUES (6, 5, N'Url Redirect Rules', N'Url Redirect Rules', 0, 0, N'', N'', N'', N'', 5, 0, 0, 0, 0, NULL, CAST(N'2017-07-14T08:29:11.000' AS DateTime), 0, 0, 0, N'', N'', N'~/url-redirect-rules/', 17, 0, NULL, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'', 0, CAST(N'2017-07-14T08:29:10.777' AS DateTime), CAST(N'2018-01-29T14:01:13.410' AS DateTime), 0, 0, 0, N'', NULL, N'', N'', N'', 1, 1, 0, 0, N'', N'')
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [MetaKeywords], [MetaDescription], [MetaRobots], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [UseDefaultLanguageLayouts], [CanLimitedRolesAccessAllChildPages], [EnforceRoleLimitationsOnFrontEnd], [OnPublishExecuteCode], [InjectHtml]) VALUES (7, 6, N'/sample/ -> /', N'/sample/ -> /', 0, 0, N'', N'', N'', N'', 5, 0, 0, 0, 0, NULL, CAST(N'2017-07-14T08:29:38.000' AS DateTime), 0, 0, 0, N'', N'', N'~/url-redirect-rules/sample/', 16, 0, NULL, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'', 0, CAST(N'2017-07-14T08:29:38.010' AS DateTime), CAST(N'2018-01-29T13:58:48.567' AS DateTime), 0, 0, 0, N'', NULL, N'', N'', N'', 1, 1, 0, 0, N'', N'')
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [MetaKeywords], [MetaDescription], [MetaRobots], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [UseDefaultLanguageLayouts], [CanLimitedRolesAccessAllChildPages], [EnforceRoleLimitationsOnFrontEnd], [OnPublishExecuteCode], [InjectHtml]) VALUES (8, 7, N'Includes', N'Includes', 0, 0, N'', N'', N'', N'', 5, 0, 0, 0, 0, NULL, CAST(N'2017-07-14T08:30:26.153' AS DateTime), 0, 0, 0, N'', N'', N'~/includes/', 31, 0, NULL, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'', 0, CAST(N'2017-07-14T08:30:25.983' AS DateTime), CAST(N'2017-07-14T08:30:26.153' AS DateTime), 0, 0, 0, N'', NULL, N'', N'', N'', 0, 1, 0, 0, N'', N'')
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [MetaKeywords], [MetaDescription], [MetaRobots], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [UseDefaultLanguageLayouts], [CanLimitedRolesAccessAllChildPages], [EnforceRoleLimitationsOnFrontEnd], [OnPublishExecuteCode], [InjectHtml]) VALUES (9, 8, N'Header', N'Header', 0, 0, N'', N'', N'', N'all', 5, 0, 0, 0, 0, NULL, CAST(N'2017-07-14T08:30:42.000' AS DateTime), 0, 0, 0, N'', N'', N'~/includes/header/', 30, 0, NULL, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'', 0, CAST(N'2017-07-14T08:30:42.673' AS DateTime), CAST(N'2018-04-13T09:30:58.190' AS DateTime), 0, 0, 0, N'', NULL, N'<nav class="navbar navbar-default navbar-expand-md" role="navigation">
    <a href="{BaseUrlWithLanguage}" class="navbar-brand">
        <img src="{Field:Logo}" alt="Logo" class="brand-logo-d">
        <img src="/media/images/logos/logo.png" alt="Logo" class="brand-logo-m">
    </a>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        {Field:MainMenu}
        <div class="navbar-left">

        </div>
        <div class="navbar-right">
            {Field:SearchForm}
        </div>
        <div class="navbar-left-extra-links">
            <div class="nav-lang">
                {{Load:195}.Field:LanguageToggle}
                <!--<a class="" href="#">EN</a> / <a class="" href="#">FR</a>-->
            </div>
        </div>


    </div>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
   <i class="fa fa-bars" aria-hidden="true"></i>
  </button>

</nav>', N'', N'', 0, 1, 0, 0, N'', N'')
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [MetaKeywords], [MetaDescription], [MetaRobots], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [UseDefaultLanguageLayouts], [CanLimitedRolesAccessAllChildPages], [EnforceRoleLimitationsOnFrontEnd], [OnPublishExecuteCode], [InjectHtml]) VALUES (10, 9, N'Header', N'Footer', 0, 0, N'', N'', N'', N'', 5, 0, 0, 0, 0, NULL, CAST(N'2017-07-14T08:30:42.000' AS DateTime), 0, 0, 0, N'', N'', N'~/includes/footer/', 30, 0, NULL, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'', 0, CAST(N'2017-07-14T08:30:50.987' AS DateTime), CAST(N'2017-09-05T11:08:26.827' AS DateTime), 0, 0, 0, N'', NULL, N'<div id="footerNav">
</div>', N'', N'', 0, 1, 0, 0, N'', N'')
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [MetaKeywords], [MetaDescription], [MetaRobots], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [UseDefaultLanguageLayouts], [CanLimitedRolesAccessAllChildPages], [EnforceRoleLimitationsOnFrontEnd], [OnPublishExecuteCode], [InjectHtml]) VALUES (19, 12, N'New Item', N'New Item', 0, 0, N'', N'', N'', N'', 5, 0, 0, 0, 0, NULL, CAST(N'2017-07-14T09:45:46.637' AS DateTime), 0, 0, 0, N'', N'', N'~/new-item/', 25, 0, NULL, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'', 0, CAST(N'2017-07-14T09:45:46.633' AS DateTime), CAST(N'2017-07-14T09:45:46.633' AS DateTime), 0, 0, 0, N'', NULL, N'', N'', N'', 1, 1, 0, 0, N'', N'')
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [MetaKeywords], [MetaDescription], [MetaRobots], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [UseDefaultLanguageLayouts], [CanLimitedRolesAccessAllChildPages], [EnforceRoleLimitationsOnFrontEnd], [OnPublishExecuteCode], [InjectHtml]) VALUES (20, 13, N'New Item', N'New Item', 0, 0, N'', N'', N'', N'', 5, 0, 0, 0, 0, NULL, CAST(N'2017-07-14T09:45:48.050' AS DateTime), 0, 0, 0, N'', N'', N'~/new-item/', 25, 0, NULL, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'', 0, CAST(N'2017-07-14T09:45:48.050' AS DateTime), CAST(N'2017-07-14T09:45:48.050' AS DateTime), 0, 0, 0, N'', NULL, N'', N'', N'', 1, 1, 0, 0, N'', N'')
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [MetaKeywords], [MetaDescription], [MetaRobots], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [UseDefaultLanguageLayouts], [CanLimitedRolesAccessAllChildPages], [EnforceRoleLimitationsOnFrontEnd], [OnPublishExecuteCode], [InjectHtml]) VALUES (27, 18, N'New Item', N'New Item', 0, 0, N'', N'', N'', N'', 5, 0, 0, 0, 0, NULL, CAST(N'2017-07-14T10:41:06.137' AS DateTime), 0, 0, 0, N'', N'', N'~/new-item/', 25, 0, NULL, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'', 0, CAST(N'2017-07-14T10:41:06.133' AS DateTime), CAST(N'2017-07-14T10:41:06.133' AS DateTime), 0, 0, 0, N'', NULL, N'', N'', N'', 1, 1, 0, 0, N'', N'')
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [MetaKeywords], [MetaDescription], [MetaRobots], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [UseDefaultLanguageLayouts], [CanLimitedRolesAccessAllChildPages], [EnforceRoleLimitationsOnFrontEnd], [OnPublishExecuteCode], [InjectHtml]) VALUES (28, 19, N'New Item', N'New Item', 0, 0, N'', N'', N'', N'', 5, 0, 0, 0, 0, NULL, CAST(N'2017-07-14T10:41:07.343' AS DateTime), 0, 0, 0, N'', N'', N'~/new-item/', 25, 0, NULL, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'', 0, CAST(N'2017-07-14T10:41:07.340' AS DateTime), CAST(N'2017-07-14T10:41:07.340' AS DateTime), 0, 0, 0, N'', NULL, N'', N'', N'', 1, 1, 0, 0, N'', N'')
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [MetaKeywords], [MetaDescription], [MetaRobots], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [UseDefaultLanguageLayouts], [CanLimitedRolesAccessAllChildPages], [EnforceRoleLimitationsOnFrontEnd], [OnPublishExecuteCode], [InjectHtml]) VALUES (29, 20, N'New Item', N'New Item', 0, 0, N'', N'', N'', N'', 5, 0, 0, 0, 0, NULL, CAST(N'2017-07-14T10:41:07.863' AS DateTime), 0, 0, 0, N'', N'', N'~/new-item/', 25, 0, NULL, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'', 0, CAST(N'2017-07-14T10:41:07.860' AS DateTime), CAST(N'2017-07-14T10:41:07.860' AS DateTime), 0, 0, 0, N'', NULL, N'', N'', N'', 1, 1, 0, 0, N'', N'')
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [MetaKeywords], [MetaDescription], [MetaRobots], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [UseDefaultLanguageLayouts], [CanLimitedRolesAccessAllChildPages], [EnforceRoleLimitationsOnFrontEnd], [OnPublishExecuteCode], [InjectHtml]) VALUES (30, 21, N'New Item', N'New Item', 0, 0, N'', N'', N'', N'', 5, 0, 0, 0, 0, NULL, CAST(N'2017-07-14T10:42:18.783' AS DateTime), 0, 0, 0, N'', N'', N'~/new-item/', 25, 0, NULL, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'', 0, CAST(N'2017-07-14T10:42:18.783' AS DateTime), CAST(N'2017-07-14T10:42:18.783' AS DateTime), 0, 0, 0, N'', NULL, N'', N'', N'', 1, 1, 0, 0, N'', N'')
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [MetaKeywords], [MetaDescription], [MetaRobots], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [UseDefaultLanguageLayouts], [CanLimitedRolesAccessAllChildPages], [EnforceRoleLimitationsOnFrontEnd], [OnPublishExecuteCode], [InjectHtml]) VALUES (31, 22, N'New Item', N'New Item', 0, 0, N'', N'', N'', N'', 5, 0, 0, 0, 0, NULL, CAST(N'2017-07-14T10:42:19.840' AS DateTime), 0, 0, 0, N'', N'', N'~/new-item/', 25, 0, NULL, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'', 0, CAST(N'2017-07-14T10:42:19.837' AS DateTime), CAST(N'2017-07-14T10:42:19.837' AS DateTime), 0, 0, 0, N'', NULL, N'', N'', N'', 1, 1, 0, 0, N'', N'')
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [MetaKeywords], [MetaDescription], [MetaRobots], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [UseDefaultLanguageLayouts], [CanLimitedRolesAccessAllChildPages], [EnforceRoleLimitationsOnFrontEnd], [OnPublishExecuteCode], [InjectHtml]) VALUES (32, 23, N'New Item', N'Annette-aft-bandaids.png', 0, 0, N'', N'', N'', N'', 5, 0, 0, 0, 0, NULL, CAST(N'2017-07-14T10:43:26.390' AS DateTime), 0, 0, 0, N'', N'', N'~/annetteaftbandaidspng/', 25, 0, NULL, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'', 0, CAST(N'2017-07-14T10:43:26.390' AS DateTime), CAST(N'2017-07-14T10:43:26.390' AS DateTime), 0, 0, 0, N'', NULL, N'', N'', N'', 1, 1, 0, 0, N'', N'')
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [MetaKeywords], [MetaDescription], [MetaRobots], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [UseDefaultLanguageLayouts], [CanLimitedRolesAccessAllChildPages], [EnforceRoleLimitationsOnFrontEnd], [OnPublishExecuteCode], [InjectHtml]) VALUES (33, 24, N'New Item', N'Annette-aft-giraffe.jpg', 0, 0, N'', N'', N'', N'', 5, 0, 0, 0, 0, NULL, CAST(N'2017-07-14T10:43:26.413' AS DateTime), 0, 0, 0, N'', N'', N'~/annetteaftgiraffejpg/', 25, 0, NULL, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'', 0, CAST(N'2017-07-14T10:43:26.413' AS DateTime), CAST(N'2017-07-14T10:43:26.413' AS DateTime), 0, 0, 0, N'', NULL, N'', N'', N'', 1, 1, 0, 0, N'', N'')
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [MetaKeywords], [MetaDescription], [MetaRobots], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [UseDefaultLanguageLayouts], [CanLimitedRolesAccessAllChildPages], [EnforceRoleLimitationsOnFrontEnd], [OnPublishExecuteCode], [InjectHtml]) VALUES (34, 25, N'New Item', N'Annette-aft-goldfish.jpg', 0, 0, N'', N'', N'', N'', 5, 0, 0, 0, 0, NULL, CAST(N'2017-07-14T10:43:26.433' AS DateTime), 0, 0, 0, N'', N'', N'~/annetteaftgoldfishjpg/', 25, 0, NULL, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'', 0, CAST(N'2017-07-14T10:43:26.433' AS DateTime), CAST(N'2017-07-14T10:43:26.433' AS DateTime), 0, 0, 0, N'', NULL, N'', N'', N'', 1, 1, 0, 0, N'', N'')
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [MetaKeywords], [MetaDescription], [MetaRobots], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [UseDefaultLanguageLayouts], [CanLimitedRolesAccessAllChildPages], [EnforceRoleLimitationsOnFrontEnd], [OnPublishExecuteCode], [InjectHtml]) VALUES (35, 26, N'New Item', N'Annette-aft-bandaids.png', 0, 0, N'', N'', N'', N'', 5, 0, 0, 0, 0, NULL, CAST(N'2017-07-14T10:45:48.910' AS DateTime), 0, 0, 0, N'', N'', N'~/annetteaftbandaidspng/', 25, 0, NULL, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'', 0, CAST(N'2017-07-14T10:45:48.903' AS DateTime), CAST(N'2017-07-14T10:45:48.903' AS DateTime), 0, 0, 0, N'', NULL, N'', N'', N'', 1, 1, 0, 0, N'', N'')
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [MetaKeywords], [MetaDescription], [MetaRobots], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [UseDefaultLanguageLayouts], [CanLimitedRolesAccessAllChildPages], [EnforceRoleLimitationsOnFrontEnd], [OnPublishExecuteCode], [InjectHtml]) VALUES (36, 27, N'New Item', N'Annette-aft-eyeshadow.png', 0, 0, N'', N'', N'', N'', 5, 0, 0, 0, 0, NULL, CAST(N'2017-07-14T10:45:48.937' AS DateTime), 0, 0, 0, N'', N'', N'~/annetteafteyeshadowpng/', 25, 0, NULL, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'', 0, CAST(N'2017-07-14T10:45:48.933' AS DateTime), CAST(N'2017-07-14T10:45:48.933' AS DateTime), 0, 0, 0, N'', NULL, N'', N'', N'', 1, 1, 0, 0, N'', N'')
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [MetaKeywords], [MetaDescription], [MetaRobots], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [UseDefaultLanguageLayouts], [CanLimitedRolesAccessAllChildPages], [EnforceRoleLimitationsOnFrontEnd], [OnPublishExecuteCode], [InjectHtml]) VALUES (37, 28, N'New Item', N'Annette-aft-giraffe.jpg', 0, 0, N'', N'', N'', N'', 5, 0, 0, 0, 0, NULL, CAST(N'2017-07-14T10:45:48.967' AS DateTime), 0, 0, 0, N'', N'', N'~/annetteaftgiraffejpg/', 25, 0, NULL, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'', 0, CAST(N'2017-07-14T10:45:48.963' AS DateTime), CAST(N'2017-07-14T10:45:48.963' AS DateTime), 0, 0, 0, N'', NULL, N'', N'', N'', 1, 1, 0, 0, N'', N'')
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [MetaKeywords], [MetaDescription], [MetaRobots], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [UseDefaultLanguageLayouts], [CanLimitedRolesAccessAllChildPages], [EnforceRoleLimitationsOnFrontEnd], [OnPublishExecuteCode], [InjectHtml]) VALUES (47, 37, N'New Item', N'New Item', 0, 0, N'', N'', N'', N'', 5, 0, 0, 0, 0, NULL, CAST(N'2017-07-14T11:04:36.300' AS DateTime), 0, 0, 0, N'', N'', N'~/new-item/', 25, 0, NULL, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'', 0, CAST(N'2017-07-14T11:04:36.300' AS DateTime), CAST(N'2017-07-14T11:04:36.300' AS DateTime), 0, 0, 0, N'', NULL, N'', N'', N'', 1, 1, 0, 0, N'', N'')
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [MetaKeywords], [MetaDescription], [MetaRobots], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [UseDefaultLanguageLayouts], [CanLimitedRolesAccessAllChildPages], [EnforceRoleLimitationsOnFrontEnd], [OnPublishExecuteCode], [InjectHtml]) VALUES (48, 38, N'New Item', N'New Item', 0, 0, N'', N'', N'', N'', 5, 0, 0, 0, 0, NULL, CAST(N'2017-07-14T11:04:37.053' AS DateTime), 0, 0, 0, N'', N'', N'~/new-item/', 25, 0, NULL, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'', 0, CAST(N'2017-07-14T11:04:37.050' AS DateTime), CAST(N'2017-07-14T11:04:37.050' AS DateTime), 0, 0, 0, N'', NULL, N'', N'', N'', 1, 1, 0, 0, N'', N'')
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [MetaKeywords], [MetaDescription], [MetaRobots], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [UseDefaultLanguageLayouts], [CanLimitedRolesAccessAllChildPages], [EnforceRoleLimitationsOnFrontEnd], [OnPublishExecuteCode], [InjectHtml]) VALUES (49, 39, N'New Item', N'New Item', 0, 0, N'', N'', N'', N'', 5, 0, 0, 0, 0, NULL, CAST(N'2017-07-14T11:04:38.260' AS DateTime), 0, 0, 0, N'', N'', N'~/new-item/', 25, 0, NULL, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'', 0, CAST(N'2017-07-14T11:04:38.257' AS DateTime), CAST(N'2017-07-14T11:04:38.257' AS DateTime), 0, 0, 0, N'', NULL, N'', N'', N'', 1, 1, 0, 0, N'', N'')
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [MetaKeywords], [MetaDescription], [MetaRobots], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [UseDefaultLanguageLayouts], [CanLimitedRolesAccessAllChildPages], [EnforceRoleLimitationsOnFrontEnd], [OnPublishExecuteCode], [InjectHtml]) VALUES (50, 40, N'New Item', N'New Item', 0, 0, N'', N'', N'', N'', 5, 0, 0, 0, 0, NULL, CAST(N'2017-07-14T11:07:57.160' AS DateTime), 0, 0, 0, N'', N'', N'~/new-item/', 25, 0, NULL, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'', 0, CAST(N'2017-07-14T11:07:57.157' AS DateTime), CAST(N'2017-07-14T11:07:57.157' AS DateTime), 0, 0, 0, N'', NULL, N'', N'', N'', 1, 1, 0, 0, N'', N'')
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [MetaKeywords], [MetaDescription], [MetaRobots], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [UseDefaultLanguageLayouts], [CanLimitedRolesAccessAllChildPages], [EnforceRoleLimitationsOnFrontEnd], [OnPublishExecuteCode], [InjectHtml]) VALUES (51, 41, N'New Item', N'New Item', 0, 0, N'', N'', N'', N'', 5, 0, 0, 0, 0, NULL, CAST(N'2017-07-14T11:07:57.737' AS DateTime), 0, 0, 0, N'', N'', N'~/new-item/', 25, 0, NULL, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'', 0, CAST(N'2017-07-14T11:07:57.737' AS DateTime), CAST(N'2017-07-14T11:07:57.737' AS DateTime), 0, 0, 0, N'', NULL, N'', N'', N'', 1, 1, 0, 0, N'', N'')
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [MetaKeywords], [MetaDescription], [MetaRobots], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [UseDefaultLanguageLayouts], [CanLimitedRolesAccessAllChildPages], [EnforceRoleLimitationsOnFrontEnd], [OnPublishExecuteCode], [InjectHtml]) VALUES (218, 2, N'Home', N'Home', 0, 0, N'', N'', N'', N'all', 5, 0, 0, 0, 0, NULL, CAST(N'2018-04-06T09:53:35.000' AS DateTime), 1, 0, 1, N'', N'', N'~/', 19, 0, NULL, 0, 25, 30, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'', 0, CAST(N'2017-08-08T09:39:54.520' AS DateTime), CAST(N'2018-04-06T09:52:41.557' AS DateTime), 0, 0, 0, N'', NULL, N'<script type="text/javascript" charset="utf-8">
    $(document).ready(function() {
        console.log("ran");
    });
</script>', N'', N'', 1, 1, 0, 0, N'', N'@{        
    var color = "#eee";
}
<style type="text/css" media="all">
    body {
        background-color: @color;
    }
</style>')
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [MetaKeywords], [MetaDescription], [MetaRobots], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [UseDefaultLanguageLayouts], [CanLimitedRolesAccessAllChildPages], [EnforceRoleLimitationsOnFrontEnd], [OnPublishExecuteCode], [InjectHtml]) VALUES (219, 117, N'New Item', N'Annette-aft-lipstick.png', 0, 0, N'', N'', N'', N'', 5, 0, 0, 0, 0, NULL, CAST(N'2017-07-24T13:45:35.553' AS DateTime), 0, 0, 0, N'', N'', N'~/annetteaftlipstickpng/', 25, 0, NULL, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'', 0, CAST(N'2017-08-08T09:39:54.477' AS DateTime), CAST(N'2017-08-08T09:39:54.477' AS DateTime), 0, 0, 0, N'', NULL, N'', N'', N'', 1, 1, 0, 0, N'', N'')
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [MetaKeywords], [MetaDescription], [MetaRobots], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [UseDefaultLanguageLayouts], [CanLimitedRolesAccessAllChildPages], [EnforceRoleLimitationsOnFrontEnd], [OnPublishExecuteCode], [InjectHtml]) VALUES (220, 118, N'New Item', N'Annette-aft-magazine.jpg', 0, 0, N'', N'', N'', N'', 5, 0, 0, 0, 0, NULL, CAST(N'2017-07-24T13:45:35.587' AS DateTime), 0, 0, 0, N'', N'', N'~/annetteaftmagazinejpg/', 25, 0, NULL, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'', 0, CAST(N'2017-08-08T09:39:54.493' AS DateTime), CAST(N'2017-08-08T09:39:54.493' AS DateTime), 0, 0, 0, N'', NULL, N'', N'', N'', 1, 1, 0, 0, N'', N'')
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [MetaKeywords], [MetaDescription], [MetaRobots], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [UseDefaultLanguageLayouts], [CanLimitedRolesAccessAllChildPages], [EnforceRoleLimitationsOnFrontEnd], [OnPublishExecuteCode], [InjectHtml]) VALUES (238, 126, N'New Item', N'Annette-aft-bandaids.jpg', 0, 0, N'', N'', N'', N'', 5, 0, 0, 0, 0, NULL, CAST(N'2017-08-23T13:31:42.160' AS DateTime), 0, 0, 0, N'', N'', N'~/', 25, 0, NULL, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'', 0, CAST(N'2017-08-23T13:31:42.140' AS DateTime), CAST(N'2017-08-23T13:31:42.140' AS DateTime), 0, 0, 0, N'', NULL, N'', N'', N'', 1, 1, 0, 0, N'', N'')
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [MetaKeywords], [MetaDescription], [MetaRobots], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [UseDefaultLanguageLayouts], [CanLimitedRolesAccessAllChildPages], [EnforceRoleLimitationsOnFrontEnd], [OnPublishExecuteCode], [InjectHtml]) VALUES (239, 127, N'New Item', N'Annette-aft-giraffe.jpg', 0, 0, N'', N'', N'', N'', 5, 0, 0, 0, 0, NULL, CAST(N'2017-08-23T13:31:46.043' AS DateTime), 0, 0, 0, N'', N'', N'~/', 25, 0, NULL, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'', 0, CAST(N'2017-08-23T13:31:46.040' AS DateTime), CAST(N'2017-08-23T13:31:46.040' AS DateTime), 0, 0, 0, N'', NULL, N'', N'', N'', 1, 1, 0, 0, N'', N'')
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [MetaKeywords], [MetaDescription], [MetaRobots], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [UseDefaultLanguageLayouts], [CanLimitedRolesAccessAllChildPages], [EnforceRoleLimitationsOnFrontEnd], [OnPublishExecuteCode], [InjectHtml]) VALUES (240, 128, N'New Item', N'Annette-aft-goldfish.jpg', 0, 0, N'', N'', N'', N'', 5, 0, 0, 0, 0, NULL, CAST(N'2017-08-23T13:31:46.087' AS DateTime), 0, 0, 0, N'', N'', N'~/', 25, 0, NULL, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'', 0, CAST(N'2017-08-23T13:31:46.087' AS DateTime), CAST(N'2017-08-23T13:31:46.087' AS DateTime), 0, 0, 0, N'', NULL, N'', N'', N'', 1, 1, 0, 0, N'', N'')
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [MetaKeywords], [MetaDescription], [MetaRobots], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [UseDefaultLanguageLayouts], [CanLimitedRolesAccessAllChildPages], [EnforceRoleLimitationsOnFrontEnd], [OnPublishExecuteCode], [InjectHtml]) VALUES (241, 129, N'New Item', N'Annette-aft-lipstick.jpg', 0, 0, N'', N'', N'', N'', 5, 0, 0, 0, 0, NULL, CAST(N'2017-08-23T13:31:46.117' AS DateTime), 0, 0, 0, N'', N'', N'~/', 25, 0, NULL, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'', 0, CAST(N'2017-08-23T13:31:46.117' AS DateTime), CAST(N'2017-08-23T13:31:46.117' AS DateTime), 0, 0, 0, N'', NULL, N'', N'', N'', 1, 1, 0, 0, N'', N'')
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [MetaKeywords], [MetaDescription], [MetaRobots], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [UseDefaultLanguageLayouts], [CanLimitedRolesAccessAllChildPages], [EnforceRoleLimitationsOnFrontEnd], [OnPublishExecuteCode], [InjectHtml]) VALUES (254, 134, N'New Item', N'Annette-aft-bandaids.jpg', 0, 0, N'', N'', N'', N'', 5, 0, 0, 0, 0, NULL, CAST(N'2017-08-23T13:31:42.160' AS DateTime), 0, 0, 0, N'', N'', N'~/', 25, 0, NULL, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'', 0, CAST(N'2017-08-29T09:39:19.397' AS DateTime), CAST(N'2017-08-29T09:39:19.397' AS DateTime), 0, 0, 0, N'', NULL, N'', N'', N'', 1, 1, 0, 0, N'', N'')
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [MetaKeywords], [MetaDescription], [MetaRobots], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [UseDefaultLanguageLayouts], [CanLimitedRolesAccessAllChildPages], [EnforceRoleLimitationsOnFrontEnd], [OnPublishExecuteCode], [InjectHtml]) VALUES (255, 135, N'New Item', N'Annette-aft-giraffe.jpg', 0, 0, N'', N'', N'', N'', 5, 0, 0, 0, 0, NULL, CAST(N'2017-08-23T13:31:46.043' AS DateTime), 0, 0, 0, N'', N'', N'~/', 25, 0, NULL, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'', 0, CAST(N'2017-08-29T09:39:19.423' AS DateTime), CAST(N'2017-08-29T09:39:19.423' AS DateTime), 0, 0, 0, N'', NULL, N'', N'', N'', 1, 1, 0, 0, N'', N'')
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [MetaKeywords], [MetaDescription], [MetaRobots], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [UseDefaultLanguageLayouts], [CanLimitedRolesAccessAllChildPages], [EnforceRoleLimitationsOnFrontEnd], [OnPublishExecuteCode], [InjectHtml]) VALUES (256, 136, N'New Item', N'Annette-aft-goldfish.jpg', 0, 0, N'', N'', N'', N'', 5, 0, 0, 0, 0, NULL, CAST(N'2017-08-23T13:31:46.087' AS DateTime), 0, 0, 0, N'', N'', N'~/', 25, 0, NULL, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'', 0, CAST(N'2017-08-29T09:39:19.450' AS DateTime), CAST(N'2017-08-29T09:39:19.450' AS DateTime), 0, 0, 0, N'', NULL, N'', N'', N'', 1, 1, 0, 0, N'', N'')
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [MetaKeywords], [MetaDescription], [MetaRobots], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [UseDefaultLanguageLayouts], [CanLimitedRolesAccessAllChildPages], [EnforceRoleLimitationsOnFrontEnd], [OnPublishExecuteCode], [InjectHtml]) VALUES (257, 137, N'New Item', N'Annette-aft-lipstick.jpg', 0, 0, N'', N'', N'', N'', 5, 0, 0, 0, 0, NULL, CAST(N'2017-08-23T13:31:46.117' AS DateTime), 0, 0, 0, N'', N'', N'~/', 25, 0, NULL, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'', 0, CAST(N'2017-08-29T09:39:19.477' AS DateTime), CAST(N'2017-08-29T09:39:19.477' AS DateTime), 0, 0, 0, N'', NULL, N'', N'', N'', 1, 1, 0, 0, N'', N'')
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [MetaKeywords], [MetaDescription], [MetaRobots], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [UseDefaultLanguageLayouts], [CanLimitedRolesAccessAllChildPages], [EnforceRoleLimitationsOnFrontEnd], [OnPublishExecuteCode], [InjectHtml]) VALUES (259, 138, N'New Item', N'Annette-aft-bandaids.jpg', 0, 0, N'', N'', N'', N'', 5, 0, 0, 0, 0, NULL, CAST(N'2017-08-23T13:31:42.160' AS DateTime), 0, 0, 0, N'', N'', N'~/', 25, 0, NULL, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'', 0, CAST(N'2017-08-29T09:40:07.300' AS DateTime), CAST(N'2017-08-29T09:40:07.300' AS DateTime), 0, 0, 0, N'', NULL, N'', N'', N'', 1, 1, 0, 0, N'', N'')
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [MetaKeywords], [MetaDescription], [MetaRobots], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [UseDefaultLanguageLayouts], [CanLimitedRolesAccessAllChildPages], [EnforceRoleLimitationsOnFrontEnd], [OnPublishExecuteCode], [InjectHtml]) VALUES (260, 139, N'New Item', N'Annette-aft-giraffe.jpg', 0, 0, N'', N'', N'', N'', 5, 0, 0, 0, 0, NULL, CAST(N'2017-08-23T13:31:46.043' AS DateTime), 0, 0, 0, N'', N'', N'~/', 25, 0, NULL, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'', 0, CAST(N'2017-08-29T09:40:07.327' AS DateTime), CAST(N'2017-08-29T09:40:07.327' AS DateTime), 0, 0, 0, N'', NULL, N'', N'', N'', 1, 1, 0, 0, N'', N'')
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [MetaKeywords], [MetaDescription], [MetaRobots], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [UseDefaultLanguageLayouts], [CanLimitedRolesAccessAllChildPages], [EnforceRoleLimitationsOnFrontEnd], [OnPublishExecuteCode], [InjectHtml]) VALUES (261, 140, N'New Item', N'Annette-aft-goldfish.jpg', 0, 0, N'', N'', N'', N'', 5, 0, 0, 0, 0, NULL, CAST(N'2017-08-23T13:31:46.087' AS DateTime), 0, 0, 0, N'', N'', N'~/', 25, 0, NULL, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'', 0, CAST(N'2017-08-29T09:40:07.350' AS DateTime), CAST(N'2017-08-29T09:40:07.350' AS DateTime), 0, 0, 0, N'', NULL, N'', N'', N'', 1, 1, 0, 0, N'', N'')
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [MetaKeywords], [MetaDescription], [MetaRobots], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [UseDefaultLanguageLayouts], [CanLimitedRolesAccessAllChildPages], [EnforceRoleLimitationsOnFrontEnd], [OnPublishExecuteCode], [InjectHtml]) VALUES (262, 141, N'New Item', N'Annette-aft-lipstick.jpg', 0, 0, N'', N'', N'', N'', 5, 0, 0, 0, 0, NULL, CAST(N'2017-08-23T13:31:46.117' AS DateTime), 0, 0, 0, N'', N'', N'~/', 25, 0, NULL, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'', 0, CAST(N'2017-08-29T09:40:07.377' AS DateTime), CAST(N'2017-08-29T09:40:07.377' AS DateTime), 0, 0, 0, N'', NULL, N'', N'', N'', 1, 1, 0, 0, N'', N'')
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [MetaKeywords], [MetaDescription], [MetaRobots], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [UseDefaultLanguageLayouts], [CanLimitedRolesAccessAllChildPages], [EnforceRoleLimitationsOnFrontEnd], [OnPublishExecuteCode], [InjectHtml]) VALUES (264, 142, N'New Item', N'Annette-aft-bandaids.jpg', 0, 0, N'', N'', N'', N'', 5, 0, 0, 0, 0, NULL, CAST(N'2017-08-23T13:31:42.160' AS DateTime), 0, 0, 0, N'', N'', N'~/', 25, 0, NULL, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'', 0, CAST(N'2017-08-29T09:41:02.703' AS DateTime), CAST(N'2017-08-29T09:41:02.703' AS DateTime), 0, 0, 0, N'', NULL, N'', N'', N'', 1, 1, 0, 0, N'', N'')
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [MetaKeywords], [MetaDescription], [MetaRobots], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [UseDefaultLanguageLayouts], [CanLimitedRolesAccessAllChildPages], [EnforceRoleLimitationsOnFrontEnd], [OnPublishExecuteCode], [InjectHtml]) VALUES (265, 143, N'New Item', N'Annette-aft-giraffe.jpg', 0, 0, N'', N'', N'', N'', 5, 0, 0, 0, 0, NULL, CAST(N'2017-08-23T13:31:46.043' AS DateTime), 0, 0, 0, N'', N'', N'~/', 25, 0, NULL, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'', 0, CAST(N'2017-08-29T09:41:02.727' AS DateTime), CAST(N'2017-08-29T09:41:02.727' AS DateTime), 0, 0, 0, N'', NULL, N'', N'', N'', 1, 1, 0, 0, N'', N'')
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [MetaKeywords], [MetaDescription], [MetaRobots], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [UseDefaultLanguageLayouts], [CanLimitedRolesAccessAllChildPages], [EnforceRoleLimitationsOnFrontEnd], [OnPublishExecuteCode], [InjectHtml]) VALUES (266, 144, N'New Item', N'Annette-aft-goldfish.jpg', 0, 0, N'', N'', N'', N'', 5, 0, 0, 0, 0, NULL, CAST(N'2017-08-23T13:31:46.087' AS DateTime), 0, 0, 0, N'', N'', N'~/', 25, 0, NULL, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'', 0, CAST(N'2017-08-29T09:41:02.757' AS DateTime), CAST(N'2017-08-29T09:41:02.757' AS DateTime), 0, 0, 0, N'', NULL, N'', N'', N'', 1, 1, 0, 0, N'', N'')
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [MetaKeywords], [MetaDescription], [MetaRobots], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [UseDefaultLanguageLayouts], [CanLimitedRolesAccessAllChildPages], [EnforceRoleLimitationsOnFrontEnd], [OnPublishExecuteCode], [InjectHtml]) VALUES (267, 145, N'New Item', N'Annette-aft-lipstick.jpg', 0, 0, N'', N'', N'', N'', 5, 0, 0, 0, 0, NULL, CAST(N'2017-08-23T13:31:46.117' AS DateTime), 0, 0, 0, N'', N'', N'~/', 25, 0, NULL, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'', 0, CAST(N'2017-08-29T09:41:02.800' AS DateTime), CAST(N'2017-08-29T09:41:02.800' AS DateTime), 0, 0, 0, N'', NULL, N'', N'', N'', 1, 1, 0, 0, N'', N'')
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [MetaKeywords], [MetaDescription], [MetaRobots], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [UseDefaultLanguageLayouts], [CanLimitedRolesAccessAllChildPages], [EnforceRoleLimitationsOnFrontEnd], [OnPublishExecuteCode], [InjectHtml]) VALUES (273, 149, N'New Item', N'Annette-aft-bandaids.jpg', 0, 0, N'', N'', N'', N'', 5, 0, 0, 0, 0, NULL, CAST(N'2017-08-23T13:31:42.160' AS DateTime), 0, 0, 0, N'', N'', N'~/', 25, 0, NULL, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'', 0, CAST(N'2017-08-29T10:12:37.703' AS DateTime), CAST(N'2017-08-29T10:12:37.703' AS DateTime), 0, 0, 0, N'', NULL, N'', N'', N'', 1, 1, 0, 0, N'', N'')
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [MetaKeywords], [MetaDescription], [MetaRobots], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [UseDefaultLanguageLayouts], [CanLimitedRolesAccessAllChildPages], [EnforceRoleLimitationsOnFrontEnd], [OnPublishExecuteCode], [InjectHtml]) VALUES (274, 150, N'New Item', N'Annette-aft-giraffe.jpg', 0, 0, N'', N'', N'', N'', 5, 0, 0, 0, 0, NULL, CAST(N'2017-08-23T13:31:46.043' AS DateTime), 0, 0, 0, N'', N'', N'~/', 25, 0, NULL, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'', 0, CAST(N'2017-08-29T10:12:37.730' AS DateTime), CAST(N'2017-08-29T10:12:37.730' AS DateTime), 0, 0, 0, N'', NULL, N'', N'', N'', 1, 1, 0, 0, N'', N'')
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [MetaKeywords], [MetaDescription], [MetaRobots], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [UseDefaultLanguageLayouts], [CanLimitedRolesAccessAllChildPages], [EnforceRoleLimitationsOnFrontEnd], [OnPublishExecuteCode], [InjectHtml]) VALUES (275, 151, N'New Item', N'Annette-aft-goldfish.jpg', 0, 0, N'', N'', N'', N'', 5, 0, 0, 0, 0, NULL, CAST(N'2017-08-23T13:31:46.087' AS DateTime), 0, 0, 0, N'', N'', N'~/', 25, 0, NULL, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'', 0, CAST(N'2017-08-29T10:12:37.753' AS DateTime), CAST(N'2017-08-29T10:12:37.753' AS DateTime), 0, 0, 0, N'', NULL, N'', N'', N'', 1, 1, 0, 0, N'', N'')
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [MetaKeywords], [MetaDescription], [MetaRobots], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [UseDefaultLanguageLayouts], [CanLimitedRolesAccessAllChildPages], [EnforceRoleLimitationsOnFrontEnd], [OnPublishExecuteCode], [InjectHtml]) VALUES (276, 152, N'New Item', N'Annette-aft-lipstick.jpg', 0, 0, N'', N'', N'', N'', 5, 0, 0, 0, 0, NULL, CAST(N'2017-08-23T13:31:46.117' AS DateTime), 0, 0, 0, N'', N'', N'~/', 25, 0, NULL, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'', 0, CAST(N'2017-08-29T10:12:37.777' AS DateTime), CAST(N'2017-08-29T10:12:37.777' AS DateTime), 0, 0, 0, N'', NULL, N'', N'', N'', 1, 1, 0, 0, N'', N'')
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [MetaKeywords], [MetaDescription], [MetaRobots], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [UseDefaultLanguageLayouts], [CanLimitedRolesAccessAllChildPages], [EnforceRoleLimitationsOnFrontEnd], [OnPublishExecuteCode], [InjectHtml]) VALUES (278, 153, N'New Item', N'Annette-aft-bandaids.jpg', 0, 0, N'', N'', N'', N'', 5, 0, 0, 0, 0, NULL, CAST(N'2017-08-23T13:31:42.160' AS DateTime), 0, 0, 0, N'', N'', N'~/', 25, 0, NULL, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'', 0, CAST(N'2017-08-29T10:22:24.997' AS DateTime), CAST(N'2017-08-29T10:22:24.997' AS DateTime), 0, 0, 0, N'', NULL, N'', N'', N'', 1, 1, 0, 0, N'', N'')
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [MetaKeywords], [MetaDescription], [MetaRobots], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [UseDefaultLanguageLayouts], [CanLimitedRolesAccessAllChildPages], [EnforceRoleLimitationsOnFrontEnd], [OnPublishExecuteCode], [InjectHtml]) VALUES (279, 154, N'New Item', N'Annette-aft-giraffe.jpg', 0, 0, N'', N'', N'', N'', 5, 0, 0, 0, 0, NULL, CAST(N'2017-08-23T13:31:46.043' AS DateTime), 0, 0, 0, N'', N'', N'~/', 25, 0, NULL, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'', 0, CAST(N'2017-08-29T10:22:25.020' AS DateTime), CAST(N'2017-08-29T10:22:25.020' AS DateTime), 0, 0, 0, N'', NULL, N'', N'', N'', 1, 1, 0, 0, N'', N'')
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [MetaKeywords], [MetaDescription], [MetaRobots], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [UseDefaultLanguageLayouts], [CanLimitedRolesAccessAllChildPages], [EnforceRoleLimitationsOnFrontEnd], [OnPublishExecuteCode], [InjectHtml]) VALUES (280, 155, N'New Item', N'Annette-aft-goldfish.jpg', 0, 0, N'', N'', N'', N'', 5, 0, 0, 0, 0, NULL, CAST(N'2017-08-23T13:31:46.087' AS DateTime), 0, 0, 0, N'', N'', N'~/', 25, 0, NULL, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'', 0, CAST(N'2017-08-29T10:22:25.040' AS DateTime), CAST(N'2017-08-29T10:22:25.040' AS DateTime), 0, 0, 0, N'', NULL, N'', N'', N'', 1, 1, 0, 0, N'', N'')
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [MetaKeywords], [MetaDescription], [MetaRobots], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [UseDefaultLanguageLayouts], [CanLimitedRolesAccessAllChildPages], [EnforceRoleLimitationsOnFrontEnd], [OnPublishExecuteCode], [InjectHtml]) VALUES (281, 156, N'New Item', N'Annette-aft-lipstick.jpg', 0, 0, N'', N'', N'', N'', 5, 0, 0, 0, 0, NULL, CAST(N'2017-08-23T13:31:46.117' AS DateTime), 0, 0, 0, N'', N'', N'~/', 25, 0, NULL, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'', 0, CAST(N'2017-08-29T10:22:25.060' AS DateTime), CAST(N'2017-08-29T10:22:25.060' AS DateTime), 0, 0, 0, N'', NULL, N'', N'', N'', 1, 1, 0, 0, N'', N'')
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [MetaKeywords], [MetaDescription], [MetaRobots], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [UseDefaultLanguageLayouts], [CanLimitedRolesAccessAllChildPages], [EnforceRoleLimitationsOnFrontEnd], [OnPublishExecuteCode], [InjectHtml]) VALUES (283, 157, N'New Item', N'Annette-aft-bandaids.jpg', 0, 0, N'', N'', N'', N'', 5, 0, 0, 0, 0, NULL, CAST(N'2017-08-23T13:31:42.160' AS DateTime), 0, 0, 0, N'', N'', N'~/', 25, 0, NULL, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'', 0, CAST(N'2017-08-29T10:24:00.507' AS DateTime), CAST(N'2017-08-29T10:24:00.507' AS DateTime), 0, 0, 0, N'', NULL, N'', N'', N'', 1, 1, 0, 0, N'', N'')
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [MetaKeywords], [MetaDescription], [MetaRobots], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [UseDefaultLanguageLayouts], [CanLimitedRolesAccessAllChildPages], [EnforceRoleLimitationsOnFrontEnd], [OnPublishExecuteCode], [InjectHtml]) VALUES (284, 158, N'New Item', N'Annette-aft-giraffe.jpg', 0, 0, N'', N'', N'', N'', 5, 0, 0, 0, 0, NULL, CAST(N'2017-08-23T13:31:46.043' AS DateTime), 0, 0, 0, N'', N'', N'~/', 25, 0, NULL, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'', 0, CAST(N'2017-08-29T10:24:00.527' AS DateTime), CAST(N'2017-08-29T10:24:00.527' AS DateTime), 0, 0, 0, N'', NULL, N'', N'', N'', 1, 1, 0, 0, N'', N'')
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [MetaKeywords], [MetaDescription], [MetaRobots], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [UseDefaultLanguageLayouts], [CanLimitedRolesAccessAllChildPages], [EnforceRoleLimitationsOnFrontEnd], [OnPublishExecuteCode], [InjectHtml]) VALUES (285, 159, N'New Item', N'Annette-aft-goldfish.jpg', 0, 0, N'', N'', N'', N'', 5, 0, 0, 0, 0, NULL, CAST(N'2017-08-23T13:31:46.087' AS DateTime), 0, 0, 0, N'', N'', N'~/', 25, 0, NULL, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'', 0, CAST(N'2017-08-29T10:24:00.550' AS DateTime), CAST(N'2017-08-29T10:24:00.550' AS DateTime), 0, 0, 0, N'', NULL, N'', N'', N'', 1, 1, 0, 0, N'', N'')
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [MetaKeywords], [MetaDescription], [MetaRobots], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [UseDefaultLanguageLayouts], [CanLimitedRolesAccessAllChildPages], [EnforceRoleLimitationsOnFrontEnd], [OnPublishExecuteCode], [InjectHtml]) VALUES (286, 160, N'New Item', N'Annette-aft-lipstick.jpg', 0, 0, N'', N'', N'', N'', 5, 0, 0, 0, 0, NULL, CAST(N'2017-08-23T13:31:46.117' AS DateTime), 0, 0, 0, N'', N'', N'~/', 25, 0, NULL, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'', 0, CAST(N'2017-08-29T10:24:00.573' AS DateTime), CAST(N'2017-08-29T10:24:00.573' AS DateTime), 0, 0, 0, N'', NULL, N'', N'', N'', 1, 1, 0, 0, N'', N'')
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [MetaKeywords], [MetaDescription], [MetaRobots], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [UseDefaultLanguageLayouts], [CanLimitedRolesAccessAllChildPages], [EnforceRoleLimitationsOnFrontEnd], [OnPublishExecuteCode], [InjectHtml]) VALUES (288, 161, N'New Item', N'Annette-aft-bandaids.jpg', 0, 0, N'', N'', N'', N'', 5, 0, 0, 0, 0, NULL, CAST(N'2017-08-23T13:31:42.160' AS DateTime), 0, 0, 0, N'', N'', N'~/', 25, 0, NULL, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'', 0, CAST(N'2017-08-29T10:25:23.387' AS DateTime), CAST(N'2017-08-29T10:25:23.387' AS DateTime), 0, 0, 0, N'', NULL, N'', N'', N'', 1, 1, 0, 0, N'', N'')
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [MetaKeywords], [MetaDescription], [MetaRobots], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [UseDefaultLanguageLayouts], [CanLimitedRolesAccessAllChildPages], [EnforceRoleLimitationsOnFrontEnd], [OnPublishExecuteCode], [InjectHtml]) VALUES (289, 162, N'New Item', N'Annette-aft-giraffe.jpg', 0, 0, N'', N'', N'', N'', 5, 0, 0, 0, 0, NULL, CAST(N'2017-08-23T13:31:46.043' AS DateTime), 0, 0, 0, N'', N'', N'~/', 25, 0, NULL, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'', 0, CAST(N'2017-08-29T10:25:23.407' AS DateTime), CAST(N'2017-08-29T10:25:23.407' AS DateTime), 0, 0, 0, N'', NULL, N'', N'', N'', 1, 1, 0, 0, N'', N'')
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [MetaKeywords], [MetaDescription], [MetaRobots], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [UseDefaultLanguageLayouts], [CanLimitedRolesAccessAllChildPages], [EnforceRoleLimitationsOnFrontEnd], [OnPublishExecuteCode], [InjectHtml]) VALUES (290, 163, N'New Item', N'Annette-aft-goldfish.jpg', 0, 0, N'', N'', N'', N'', 5, 0, 0, 0, 0, NULL, CAST(N'2017-08-23T13:31:46.087' AS DateTime), 0, 0, 0, N'', N'', N'~/', 25, 0, NULL, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'', 0, CAST(N'2017-08-29T10:25:23.427' AS DateTime), CAST(N'2017-08-29T10:25:23.427' AS DateTime), 0, 0, 0, N'', NULL, N'', N'', N'', 1, 1, 0, 0, N'', N'')
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [MetaKeywords], [MetaDescription], [MetaRobots], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [UseDefaultLanguageLayouts], [CanLimitedRolesAccessAllChildPages], [EnforceRoleLimitationsOnFrontEnd], [OnPublishExecuteCode], [InjectHtml]) VALUES (291, 164, N'New Item', N'Annette-aft-lipstick.jpg', 0, 0, N'', N'', N'', N'', 5, 0, 0, 0, 0, NULL, CAST(N'2017-08-23T13:31:46.117' AS DateTime), 0, 0, 0, N'', N'', N'~/', 25, 0, NULL, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'', 0, CAST(N'2017-08-29T10:25:23.443' AS DateTime), CAST(N'2017-08-29T10:25:23.443' AS DateTime), 0, 0, 0, N'', NULL, N'', N'', N'', 1, 1, 0, 0, N'', N'')
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [MetaKeywords], [MetaDescription], [MetaRobots], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [UseDefaultLanguageLayouts], [CanLimitedRolesAccessAllChildPages], [EnforceRoleLimitationsOnFrontEnd], [OnPublishExecuteCode], [InjectHtml]) VALUES (293, 165, N'New Item', N'Annette-aft-bandaids.jpg', 0, 0, N'', N'', N'', N'', 5, 0, 0, 0, 0, NULL, CAST(N'2017-08-23T13:31:42.160' AS DateTime), 0, 0, 0, N'', N'', N'~/', 25, 0, NULL, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'', 0, CAST(N'2017-08-29T10:26:09.380' AS DateTime), CAST(N'2017-08-29T10:26:09.380' AS DateTime), 0, 0, 0, N'', NULL, N'', N'', N'', 1, 1, 0, 0, N'', N'')
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [MetaKeywords], [MetaDescription], [MetaRobots], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [UseDefaultLanguageLayouts], [CanLimitedRolesAccessAllChildPages], [EnforceRoleLimitationsOnFrontEnd], [OnPublishExecuteCode], [InjectHtml]) VALUES (294, 166, N'New Item', N'Annette-aft-giraffe.jpg', 0, 0, N'', N'', N'', N'', 5, 0, 0, 0, 0, NULL, CAST(N'2017-08-23T13:31:46.043' AS DateTime), 0, 0, 0, N'', N'', N'~/', 25, 0, NULL, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'', 0, CAST(N'2017-08-29T10:26:09.403' AS DateTime), CAST(N'2017-08-29T10:26:09.403' AS DateTime), 0, 0, 0, N'', NULL, N'', N'', N'', 1, 1, 0, 0, N'', N'')
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [MetaKeywords], [MetaDescription], [MetaRobots], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [UseDefaultLanguageLayouts], [CanLimitedRolesAccessAllChildPages], [EnforceRoleLimitationsOnFrontEnd], [OnPublishExecuteCode], [InjectHtml]) VALUES (295, 167, N'New Item', N'Annette-aft-goldfish.jpg', 0, 0, N'', N'', N'', N'', 5, 0, 0, 0, 0, NULL, CAST(N'2017-08-23T13:31:46.087' AS DateTime), 0, 0, 0, N'', N'', N'~/', 25, 0, NULL, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'', 0, CAST(N'2017-08-29T10:26:09.430' AS DateTime), CAST(N'2017-08-29T10:26:09.430' AS DateTime), 0, 0, 0, N'', NULL, N'', N'', N'', 1, 1, 0, 0, N'', N'')
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [MetaKeywords], [MetaDescription], [MetaRobots], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [UseDefaultLanguageLayouts], [CanLimitedRolesAccessAllChildPages], [EnforceRoleLimitationsOnFrontEnd], [OnPublishExecuteCode], [InjectHtml]) VALUES (296, 168, N'New Item', N'Annette-aft-lipstick.jpg', 0, 0, N'', N'', N'', N'', 5, 0, 0, 0, 0, NULL, CAST(N'2017-08-23T13:31:46.117' AS DateTime), 0, 0, 0, N'', N'', N'~/', 25, 0, NULL, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'', 0, CAST(N'2017-08-29T10:26:09.453' AS DateTime), CAST(N'2017-08-29T10:26:09.453' AS DateTime), 0, 0, 0, N'', NULL, N'', N'', N'', 1, 1, 0, 0, N'', N'')
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [MetaKeywords], [MetaDescription], [MetaRobots], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [UseDefaultLanguageLayouts], [CanLimitedRolesAccessAllChildPages], [EnforceRoleLimitationsOnFrontEnd], [OnPublishExecuteCode], [InjectHtml]) VALUES (298, 169, N'New Item', N'Annette-aft-bandaids.jpg', 0, 0, N'', N'', N'', N'', 5, 0, 0, 0, 0, NULL, CAST(N'2017-08-23T13:31:42.160' AS DateTime), 0, 0, 0, N'', N'', N'~/', 25, 0, NULL, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'', 0, CAST(N'2017-08-29T10:27:26.573' AS DateTime), CAST(N'2017-08-29T10:27:26.573' AS DateTime), 0, 0, 0, N'', NULL, N'', N'', N'', 1, 1, 0, 0, N'', N'')
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [MetaKeywords], [MetaDescription], [MetaRobots], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [UseDefaultLanguageLayouts], [CanLimitedRolesAccessAllChildPages], [EnforceRoleLimitationsOnFrontEnd], [OnPublishExecuteCode], [InjectHtml]) VALUES (299, 170, N'New Item', N'Annette-aft-giraffe.jpg', 0, 0, N'', N'', N'', N'', 5, 0, 0, 0, 0, NULL, CAST(N'2017-08-23T13:31:46.043' AS DateTime), 0, 0, 0, N'', N'', N'~/', 25, 0, NULL, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'', 0, CAST(N'2017-08-29T10:27:26.597' AS DateTime), CAST(N'2017-08-29T10:27:26.597' AS DateTime), 0, 0, 0, N'', NULL, N'', N'', N'', 1, 1, 0, 0, N'', N'')
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [MetaKeywords], [MetaDescription], [MetaRobots], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [UseDefaultLanguageLayouts], [CanLimitedRolesAccessAllChildPages], [EnforceRoleLimitationsOnFrontEnd], [OnPublishExecuteCode], [InjectHtml]) VALUES (300, 171, N'New Item', N'Annette-aft-goldfish.jpg', 0, 0, N'', N'', N'', N'', 5, 0, 0, 0, 0, NULL, CAST(N'2017-08-23T13:31:46.087' AS DateTime), 0, 0, 0, N'', N'', N'~/', 25, 0, NULL, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'', 0, CAST(N'2017-08-29T10:27:26.623' AS DateTime), CAST(N'2017-08-29T10:27:26.623' AS DateTime), 0, 0, 0, N'', NULL, N'', N'', N'', 1, 1, 0, 0, N'', N'')
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [MetaKeywords], [MetaDescription], [MetaRobots], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [UseDefaultLanguageLayouts], [CanLimitedRolesAccessAllChildPages], [EnforceRoleLimitationsOnFrontEnd], [OnPublishExecuteCode], [InjectHtml]) VALUES (301, 172, N'New Item', N'Annette-aft-lipstick.jpg', 0, 0, N'', N'', N'', N'', 5, 0, 0, 0, 0, NULL, CAST(N'2017-08-23T13:31:46.117' AS DateTime), 0, 0, 0, N'', N'', N'~/', 25, 0, NULL, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'', 0, CAST(N'2017-08-29T10:27:26.653' AS DateTime), CAST(N'2017-08-29T10:27:26.653' AS DateTime), 0, 0, 0, N'', NULL, N'', N'', N'', 1, 1, 0, 0, N'', N'')
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [MetaKeywords], [MetaDescription], [MetaRobots], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [UseDefaultLanguageLayouts], [CanLimitedRolesAccessAllChildPages], [EnforceRoleLimitationsOnFrontEnd], [OnPublishExecuteCode], [InjectHtml]) VALUES (303, 173, N'New Item', N'Annette-aft-bandaids.jpg', 0, 0, N'', N'', N'', N'', 5, 0, 0, 0, 0, NULL, CAST(N'2017-08-23T13:31:42.160' AS DateTime), 0, 0, 0, N'', N'', N'~/', 25, 0, NULL, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'', 0, CAST(N'2017-08-29T10:28:41.733' AS DateTime), CAST(N'2017-08-29T10:28:41.733' AS DateTime), 0, 0, 0, N'', NULL, N'', N'', N'', 1, 1, 0, 0, N'', N'')
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [MetaKeywords], [MetaDescription], [MetaRobots], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [UseDefaultLanguageLayouts], [CanLimitedRolesAccessAllChildPages], [EnforceRoleLimitationsOnFrontEnd], [OnPublishExecuteCode], [InjectHtml]) VALUES (304, 174, N'New Item', N'Annette-aft-giraffe.jpg', 0, 0, N'', N'', N'', N'', 5, 0, 0, 0, 0, NULL, CAST(N'2017-08-23T13:31:46.043' AS DateTime), 0, 0, 0, N'', N'', N'~/', 25, 0, NULL, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'', 0, CAST(N'2017-08-29T10:28:41.760' AS DateTime), CAST(N'2017-08-29T10:28:41.760' AS DateTime), 0, 0, 0, N'', NULL, N'', N'', N'', 1, 1, 0, 0, N'', N'')
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [MetaKeywords], [MetaDescription], [MetaRobots], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [UseDefaultLanguageLayouts], [CanLimitedRolesAccessAllChildPages], [EnforceRoleLimitationsOnFrontEnd], [OnPublishExecuteCode], [InjectHtml]) VALUES (305, 175, N'New Item', N'Annette-aft-goldfish.jpg', 0, 0, N'', N'', N'', N'', 5, 0, 0, 0, 0, NULL, CAST(N'2017-08-23T13:31:46.087' AS DateTime), 0, 0, 0, N'', N'', N'~/', 25, 0, NULL, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'', 0, CAST(N'2017-08-29T10:28:41.783' AS DateTime), CAST(N'2017-08-29T10:28:41.783' AS DateTime), 0, 0, 0, N'', NULL, N'', N'', N'', 1, 1, 0, 0, N'', N'')
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [MetaKeywords], [MetaDescription], [MetaRobots], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [UseDefaultLanguageLayouts], [CanLimitedRolesAccessAllChildPages], [EnforceRoleLimitationsOnFrontEnd], [OnPublishExecuteCode], [InjectHtml]) VALUES (306, 176, N'New Item', N'Annette-aft-lipstick.jpg', 0, 0, N'', N'', N'', N'', 5, 0, 0, 0, 0, NULL, CAST(N'2017-08-23T13:31:46.117' AS DateTime), 0, 0, 0, N'', N'', N'~/', 25, 0, NULL, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'', 0, CAST(N'2017-08-29T10:28:41.810' AS DateTime), CAST(N'2017-08-29T10:28:41.810' AS DateTime), 0, 0, 0, N'', NULL, N'', N'', N'', 1, 1, 0, 0, N'', N'')
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [MetaKeywords], [MetaDescription], [MetaRobots], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [UseDefaultLanguageLayouts], [CanLimitedRolesAccessAllChildPages], [EnforceRoleLimitationsOnFrontEnd], [OnPublishExecuteCode], [InjectHtml]) VALUES (308, 177, N'New Item', N'Annette-aft-bandaids.jpg', 0, 0, N'', N'', N'', N'', 5, 0, 0, 0, 0, NULL, CAST(N'2017-08-23T13:31:42.160' AS DateTime), 0, 0, 0, N'', N'', N'~/', 25, 0, NULL, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'', 0, CAST(N'2017-09-01T09:01:26.437' AS DateTime), CAST(N'2017-09-01T09:01:26.437' AS DateTime), 0, 0, 0, N'', NULL, N'', N'', N'', 1, 1, 0, 0, N'', N'')
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [MetaKeywords], [MetaDescription], [MetaRobots], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [UseDefaultLanguageLayouts], [CanLimitedRolesAccessAllChildPages], [EnforceRoleLimitationsOnFrontEnd], [OnPublishExecuteCode], [InjectHtml]) VALUES (309, 178, N'New Item', N'Annette-aft-giraffe.jpg', 0, 0, N'', N'', N'', N'', 5, 0, 0, 0, 0, NULL, CAST(N'2017-08-23T13:31:46.043' AS DateTime), 0, 0, 0, N'', N'', N'~/', 25, 0, NULL, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'', 0, CAST(N'2017-09-01T09:01:26.457' AS DateTime), CAST(N'2017-09-01T09:01:26.457' AS DateTime), 0, 0, 0, N'', NULL, N'', N'', N'', 1, 1, 0, 0, N'', N'')
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [MetaKeywords], [MetaDescription], [MetaRobots], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [UseDefaultLanguageLayouts], [CanLimitedRolesAccessAllChildPages], [EnforceRoleLimitationsOnFrontEnd], [OnPublishExecuteCode], [InjectHtml]) VALUES (310, 179, N'New Item', N'Annette-aft-goldfish.jpg', 0, 0, N'', N'', N'', N'', 5, 0, 0, 0, 0, NULL, CAST(N'2017-08-23T13:31:46.087' AS DateTime), 0, 0, 0, N'', N'', N'~/', 25, 0, NULL, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'', 0, CAST(N'2017-09-01T09:01:26.477' AS DateTime), CAST(N'2017-09-01T09:01:26.477' AS DateTime), 0, 0, 0, N'', NULL, N'', N'', N'', 1, 1, 0, 0, N'', N'')
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [MetaKeywords], [MetaDescription], [MetaRobots], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [UseDefaultLanguageLayouts], [CanLimitedRolesAccessAllChildPages], [EnforceRoleLimitationsOnFrontEnd], [OnPublishExecuteCode], [InjectHtml]) VALUES (311, 180, N'New Item', N'Annette-aft-lipstick.jpg', 0, 0, N'', N'', N'', N'', 5, 0, 0, 0, 0, NULL, CAST(N'2017-08-23T13:31:46.117' AS DateTime), 0, 0, 0, N'', N'', N'~/', 25, 0, NULL, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'', 0, CAST(N'2017-09-01T09:01:26.497' AS DateTime), CAST(N'2017-09-01T09:01:26.497' AS DateTime), 0, 0, 0, N'', NULL, N'', N'', N'', 1, 1, 0, 0, N'', N'')
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [MetaKeywords], [MetaDescription], [MetaRobots], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [UseDefaultLanguageLayouts], [CanLimitedRolesAccessAllChildPages], [EnforceRoleLimitationsOnFrontEnd], [OnPublishExecuteCode], [InjectHtml]) VALUES (313, 181, N'New Item', N'Annette-aft-bandaids.jpg', 0, 0, N'', N'', N'', N'', 5, 0, 0, 0, 0, NULL, CAST(N'2017-08-23T13:31:42.160' AS DateTime), 0, 0, 0, N'', N'', N'~/', 25, 0, NULL, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'', 0, CAST(N'2017-09-01T09:04:28.883' AS DateTime), CAST(N'2017-09-01T09:04:28.883' AS DateTime), 0, 0, 0, N'', NULL, N'', N'', N'', 1, 1, 0, 0, N'', N'')
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [MetaKeywords], [MetaDescription], [MetaRobots], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [UseDefaultLanguageLayouts], [CanLimitedRolesAccessAllChildPages], [EnforceRoleLimitationsOnFrontEnd], [OnPublishExecuteCode], [InjectHtml]) VALUES (314, 182, N'New Item', N'Annette-aft-giraffe.jpg', 0, 0, N'', N'', N'', N'', 5, 0, 0, 0, 0, NULL, CAST(N'2017-08-23T13:31:46.043' AS DateTime), 0, 0, 0, N'', N'', N'~/', 25, 0, NULL, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'', 0, CAST(N'2017-09-01T09:04:28.913' AS DateTime), CAST(N'2017-09-01T09:04:28.913' AS DateTime), 0, 0, 0, N'', NULL, N'', N'', N'', 1, 1, 0, 0, N'', N'')
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [MetaKeywords], [MetaDescription], [MetaRobots], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [UseDefaultLanguageLayouts], [CanLimitedRolesAccessAllChildPages], [EnforceRoleLimitationsOnFrontEnd], [OnPublishExecuteCode], [InjectHtml]) VALUES (315, 183, N'New Item', N'Annette-aft-goldfish.jpg', 0, 0, N'', N'', N'', N'', 5, 0, 0, 0, 0, NULL, CAST(N'2017-08-23T13:31:46.087' AS DateTime), 0, 0, 0, N'', N'', N'~/', 25, 0, NULL, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'', 0, CAST(N'2017-09-01T09:04:28.960' AS DateTime), CAST(N'2017-09-01T09:04:28.960' AS DateTime), 0, 0, 0, N'', NULL, N'', N'', N'', 1, 1, 0, 0, N'', N'')
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [MetaKeywords], [MetaDescription], [MetaRobots], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [UseDefaultLanguageLayouts], [CanLimitedRolesAccessAllChildPages], [EnforceRoleLimitationsOnFrontEnd], [OnPublishExecuteCode], [InjectHtml]) VALUES (316, 184, N'New Item', N'Annette-aft-lipstick.jpg', 0, 0, N'', N'', N'', N'', 5, 0, 0, 0, 0, NULL, CAST(N'2017-08-23T13:31:46.117' AS DateTime), 0, 0, 0, N'', N'', N'~/', 25, 0, NULL, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'', 0, CAST(N'2017-09-01T09:04:28.983' AS DateTime), CAST(N'2017-09-01T09:04:28.983' AS DateTime), 0, 0, 0, N'', NULL, N'', N'', N'', 1, 1, 0, 0, N'', N'')
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [MetaKeywords], [MetaDescription], [MetaRobots], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [UseDefaultLanguageLayouts], [CanLimitedRolesAccessAllChildPages], [EnforceRoleLimitationsOnFrontEnd], [OnPublishExecuteCode], [InjectHtml]) VALUES (321, 185, N'New Item', N'Annette-aft-bandaids.jpg', 0, 0, N'', N'', N'', N'', 5, 0, 0, 0, 0, NULL, CAST(N'2017-08-23T13:31:42.160' AS DateTime), 0, 0, 0, N'', N'', N'~/', 25, 0, NULL, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'', 0, CAST(N'2017-09-05T09:14:24.533' AS DateTime), CAST(N'2017-09-05T09:14:24.533' AS DateTime), 0, 0, 0, N'', NULL, N'', N'', N'', 1, 1, 0, 0, N'', N'')
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [MetaKeywords], [MetaDescription], [MetaRobots], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [UseDefaultLanguageLayouts], [CanLimitedRolesAccessAllChildPages], [EnforceRoleLimitationsOnFrontEnd], [OnPublishExecuteCode], [InjectHtml]) VALUES (322, 186, N'New Item', N'Annette-aft-giraffe.jpg', 0, 0, N'', N'', N'', N'', 5, 0, 0, 0, 0, NULL, CAST(N'2017-08-23T13:31:46.043' AS DateTime), 0, 0, 0, N'', N'', N'~/', 25, 0, NULL, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'', 0, CAST(N'2017-09-05T09:14:24.557' AS DateTime), CAST(N'2017-09-05T09:14:24.557' AS DateTime), 0, 0, 0, N'', NULL, N'', N'', N'', 1, 1, 0, 0, N'', N'')
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [MetaKeywords], [MetaDescription], [MetaRobots], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [UseDefaultLanguageLayouts], [CanLimitedRolesAccessAllChildPages], [EnforceRoleLimitationsOnFrontEnd], [OnPublishExecuteCode], [InjectHtml]) VALUES (323, 187, N'New Item', N'Annette-aft-goldfish.jpg', 0, 0, N'', N'', N'', N'', 5, 0, 0, 0, 0, NULL, CAST(N'2017-08-23T13:31:46.087' AS DateTime), 0, 0, 0, N'', N'', N'~/', 25, 0, NULL, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'', 0, CAST(N'2017-09-05T09:14:24.583' AS DateTime), CAST(N'2017-09-05T09:14:24.583' AS DateTime), 0, 0, 0, N'', NULL, N'', N'', N'', 1, 1, 0, 0, N'', N'')
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [MetaKeywords], [MetaDescription], [MetaRobots], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [UseDefaultLanguageLayouts], [CanLimitedRolesAccessAllChildPages], [EnforceRoleLimitationsOnFrontEnd], [OnPublishExecuteCode], [InjectHtml]) VALUES (324, 188, N'New Item', N'Annette-aft-lipstick.jpg', 0, 0, N'', N'', N'', N'', 5, 0, 0, 0, 0, NULL, CAST(N'2017-08-23T13:31:46.117' AS DateTime), 0, 0, 0, N'', N'', N'~/', 25, 0, NULL, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'', 0, CAST(N'2017-09-05T09:14:24.603' AS DateTime), CAST(N'2017-09-05T09:14:24.603' AS DateTime), 0, 0, 0, N'', NULL, N'', N'', N'', 1, 1, 0, 0, N'', N'')
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [MetaKeywords], [MetaDescription], [MetaRobots], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [UseDefaultLanguageLayouts], [CanLimitedRolesAccessAllChildPages], [EnforceRoleLimitationsOnFrontEnd], [OnPublishExecuteCode], [InjectHtml]) VALUES (329, 193, N'New Item', N'New Item', 0, 0, N'', N'', N'', N'', 5, 0, 0, 0, 0, NULL, CAST(N'2017-09-05T10:20:25.413' AS DateTime), 0, 0, 0, N'', N'', N'~/new-item/', 25, 0, NULL, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'', 0, CAST(N'2017-09-05T10:20:25.410' AS DateTime), CAST(N'2017-09-05T10:20:25.410' AS DateTime), 0, 0, 0, N'', NULL, N'', N'', N'', 1, 1, 0, 0, N'', N'')
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [MetaKeywords], [MetaDescription], [MetaRobots], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [UseDefaultLanguageLayouts], [CanLimitedRolesAccessAllChildPages], [EnforceRoleLimitationsOnFrontEnd], [OnPublishExecuteCode], [InjectHtml]) VALUES (330, 194, N'New Item', N'New Item', 0, 0, N'', N'', N'', N'', 5, 0, 0, 0, 0, NULL, CAST(N'2017-09-05T10:20:25.677' AS DateTime), 0, 0, 0, N'', N'', N'~/new-item/', 25, 0, NULL, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'', 0, CAST(N'2017-09-05T10:20:25.637' AS DateTime), CAST(N'2017-09-05T10:20:25.637' AS DateTime), 0, 0, 0, N'', NULL, N'', N'', N'', 1, 1, 0, 0, N'', N'')
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [MetaKeywords], [MetaDescription], [MetaRobots], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [UseDefaultLanguageLayouts], [CanLimitedRolesAccessAllChildPages], [EnforceRoleLimitationsOnFrontEnd], [OnPublishExecuteCode], [InjectHtml]) VALUES (331, 195, N'Global Fields', N'Global Fields', 0, 0, N'', N'', N'', N'', 5, 0, 0, 0, 0, NULL, CAST(N'2017-09-05T10:39:06.000' AS DateTime), 0, 0, 0, N'', N'', N'~/includes/global-fields/', 30, 0, NULL, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'', 0, CAST(N'2017-09-05T10:39:06.580' AS DateTime), CAST(N'2018-03-26T16:22:05.907' AS DateTime), 0, 0, 0, N'', NULL, N'', N'', N'', 0, 1, 0, 0, N'', N'')
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [MetaKeywords], [MetaDescription], [MetaRobots], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [UseDefaultLanguageLayouts], [CanLimitedRolesAccessAllChildPages], [EnforceRoleLimitationsOnFrontEnd], [OnPublishExecuteCode], [InjectHtml]) VALUES (10335, 196, N'New Item', N'Annette-aft-eyeshadow.png', 0, 0, N'', N'', N'', N'', 5, 0, 0, 0, 0, NULL, CAST(N'2017-09-06T15:27:04.253' AS DateTime), 0, 0, 0, N'', N'', N'~/includes/header/annetteafteyeshadowpng/', 25, 0, NULL, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'', 0, CAST(N'2017-09-06T15:27:04.233' AS DateTime), CAST(N'2017-09-06T15:27:04.233' AS DateTime), 0, 0, 0, N'', NULL, N'', N'', N'', 1, 1, 0, 0, N'', N'')
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [MetaKeywords], [MetaDescription], [MetaRobots], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [UseDefaultLanguageLayouts], [CanLimitedRolesAccessAllChildPages], [EnforceRoleLimitationsOnFrontEnd], [OnPublishExecuteCode], [InjectHtml]) VALUES (10336, 197, N'New Item', N'Annette-aft-giraffe.png', 0, 0, N'', N'', N'', N'', 5, 0, 0, 0, 0, NULL, CAST(N'2017-09-06T15:27:08.890' AS DateTime), 0, 0, 0, N'', N'', N'~/includes/header/annetteaftgiraffepng/', 25, 0, NULL, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'', 0, CAST(N'2017-09-06T15:27:08.887' AS DateTime), CAST(N'2017-09-06T15:27:08.887' AS DateTime), 0, 0, 0, N'', NULL, N'', N'', N'', 1, 1, 0, 0, N'', N'')
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [MetaKeywords], [MetaDescription], [MetaRobots], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [UseDefaultLanguageLayouts], [CanLimitedRolesAccessAllChildPages], [EnforceRoleLimitationsOnFrontEnd], [OnPublishExecuteCode], [InjectHtml]) VALUES (10337, 198, N'New Item', N'Annette-aft-goldfish.png', 0, 0, N'', N'', N'', N'', 5, 0, 0, 0, 0, NULL, CAST(N'2017-09-06T15:27:08.933' AS DateTime), 0, 0, 0, N'', N'', N'~/includes/header/annetteaftgoldfishpng/', 25, 0, NULL, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'', 0, CAST(N'2017-09-06T15:27:08.933' AS DateTime), CAST(N'2017-09-06T15:27:08.933' AS DateTime), 0, 0, 0, N'', NULL, N'', N'', N'', 1, 1, 0, 0, N'', N'')
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [MetaKeywords], [MetaDescription], [MetaRobots], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [UseDefaultLanguageLayouts], [CanLimitedRolesAccessAllChildPages], [EnforceRoleLimitationsOnFrontEnd], [OnPublishExecuteCode], [InjectHtml]) VALUES (20372, 202, N'New Item', N'2017-12-05_10h58_30.png', 0, 0, N'', N'', N'', N'', 5, 0, 0, 0, 0, NULL, CAST(N'2018-01-03T10:16:02.110' AS DateTime), 0, 0, 0, N'', N'', N'~/includes/global-fields/20171205_10h58_30png/', 25, 0, NULL, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'', 0, CAST(N'2018-01-03T10:16:02.103' AS DateTime), CAST(N'2018-01-03T10:16:02.103' AS DateTime), 0, 0, 0, N'', NULL, N'', N'', N'', 1, 1, 0, 0, N'', N'')
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [MetaKeywords], [MetaDescription], [MetaRobots], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [UseDefaultLanguageLayouts], [CanLimitedRolesAccessAllChildPages], [EnforceRoleLimitationsOnFrontEnd], [OnPublishExecuteCode], [InjectHtml]) VALUES (20373, 203, N'New Item', N'2017-12-05_10h58_39.png', 0, 0, N'', N'', N'', N'', 5, 0, 0, 0, 0, NULL, CAST(N'2018-01-03T10:16:03.627' AS DateTime), 0, 0, 0, N'', N'', N'~/includes/global-fields/20171205_10h58_39png/', 25, 0, NULL, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'', 0, CAST(N'2018-01-03T10:16:03.623' AS DateTime), CAST(N'2018-01-03T10:16:03.623' AS DateTime), 0, 0, 0, N'', NULL, N'', N'', N'', 1, 1, 0, 0, N'', N'')
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [MetaKeywords], [MetaDescription], [MetaRobots], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [UseDefaultLanguageLayouts], [CanLimitedRolesAccessAllChildPages], [EnforceRoleLimitationsOnFrontEnd], [OnPublishExecuteCode], [InjectHtml]) VALUES (20374, 204, N'New Item', N'2017-12-05_11h00_32.png', 0, 0, N'', N'', N'', N'', 5, 0, 0, 0, 0, NULL, CAST(N'2018-01-03T10:16:03.650' AS DateTime), 0, 0, 0, N'', N'', N'~/includes/global-fields/20171205_11h00_32png/', 25, 0, NULL, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'', 0, CAST(N'2018-01-03T10:16:03.647' AS DateTime), CAST(N'2018-01-03T10:16:03.647' AS DateTime), 0, 0, 0, N'', NULL, N'', N'', N'', 1, 1, 0, 0, N'', N'')
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [MetaKeywords], [MetaDescription], [MetaRobots], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [UseDefaultLanguageLayouts], [CanLimitedRolesAccessAllChildPages], [EnforceRoleLimitationsOnFrontEnd], [OnPublishExecuteCode], [InjectHtml]) VALUES (20601, 396, N'Email Templates', N'Email Templates', 0, 0, N'', N'', N'', N'', 5, 0, 0, 0, 0, NULL, CAST(N'2018-01-17T09:56:44.040' AS DateTime), 0, 0, 0, N'', N'', N'~/includes/email-templates/', 30, 0, NULL, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'', 0, CAST(N'2018-01-17T09:56:43.783' AS DateTime), CAST(N'2018-01-17T09:56:44.040' AS DateTime), 0, 0, 0, N'', NULL, N'', N'', N'', 0, 1, 0, 0, N'', N'')
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [MetaKeywords], [MetaDescription], [MetaRobots], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [UseDefaultLanguageLayouts], [CanLimitedRolesAccessAllChildPages], [EnforceRoleLimitationsOnFrontEnd], [OnPublishExecuteCode], [InjectHtml]) VALUES (20602, 397, N'Contact Form Email Template', N'Contact Form Email Template', 0, 0, N'', N'', N'', N'', 5, 0, 0, 0, 0, NULL, CAST(N'2018-01-17T10:01:02.000' AS DateTime), 0, 0, 0, N'', N'', N'~/includes/email-templates/contact-form-email-template/', 30, 0, NULL, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'', 0, CAST(N'2018-01-17T10:01:02.510' AS DateTime), CAST(N'2018-01-17T10:11:55.573' AS DateTime), 0, 0, 0, N'', NULL, N'<table>
    <tr>
        <td><b>First Name:</b></td>
        <td>{first-name}</td>
    </tr>
    <tr>
        <td><b>Last Name:<b></td>
        <td>{last-name}</td>
    </tr>    
    <tr>
        <td><b>Email Address:<b></td>
        <td>{email-address}</td>
    </tr>      
</table>', N'', N'', 0, 1, 0, 0, N'', N'')
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [MetaKeywords], [MetaDescription], [MetaRobots], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [UseDefaultLanguageLayouts], [CanLimitedRolesAccessAllChildPages], [EnforceRoleLimitationsOnFrontEnd], [OnPublishExecuteCode], [InjectHtml]) VALUES (20611, 398, N'New Item', N'Annette-aft-eyeshadow.png', 0, 0, N'', N'', N'', N'', 5, 0, 0, 0, 0, NULL, CAST(N'2017-09-06T15:27:04.253' AS DateTime), 0, 0, 0, N'', N'', N'~/includes/header/annetteafteyeshadowpng/', 25, 0, NULL, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'', 0, CAST(N'2018-01-17T10:58:02.187' AS DateTime), CAST(N'2018-01-17T10:58:02.187' AS DateTime), 0, 0, 0, N'', NULL, N'', N'', N'', 1, 1, 0, 0, N'', N'')
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [MetaKeywords], [MetaDescription], [MetaRobots], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [UseDefaultLanguageLayouts], [CanLimitedRolesAccessAllChildPages], [EnforceRoleLimitationsOnFrontEnd], [OnPublishExecuteCode], [InjectHtml]) VALUES (20612, 399, N'New Item', N'Annette-aft-giraffe.png', 0, 0, N'', N'', N'', N'', 5, 0, 0, 0, 0, NULL, CAST(N'2017-09-06T15:27:08.890' AS DateTime), 0, 0, 0, N'', N'', N'~/includes/header/annetteaftgiraffepng/', 25, 0, NULL, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'', 0, CAST(N'2018-01-17T10:58:02.203' AS DateTime), CAST(N'2018-01-17T10:58:02.203' AS DateTime), 0, 0, 0, N'', NULL, N'', N'', N'', 1, 1, 0, 0, N'', N'')
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [MetaKeywords], [MetaDescription], [MetaRobots], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [UseDefaultLanguageLayouts], [CanLimitedRolesAccessAllChildPages], [EnforceRoleLimitationsOnFrontEnd], [OnPublishExecuteCode], [InjectHtml]) VALUES (20613, 400, N'New Item', N'Annette-aft-goldfish.png', 0, 0, N'', N'', N'', N'', 5, 0, 0, 0, 0, NULL, CAST(N'2017-09-06T15:27:08.933' AS DateTime), 0, 0, 0, N'', N'', N'~/includes/header/annetteaftgoldfishpng/', 25, 0, NULL, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'', 0, CAST(N'2018-01-17T10:58:02.220' AS DateTime), CAST(N'2018-01-17T10:58:02.220' AS DateTime), 0, 0, 0, N'', NULL, N'', N'', N'', 1, 1, 0, 0, N'', N'')
GO
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [MetaKeywords], [MetaDescription], [MetaRobots], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [UseDefaultLanguageLayouts], [CanLimitedRolesAccessAllChildPages], [EnforceRoleLimitationsOnFrontEnd], [OnPublishExecuteCode], [InjectHtml]) VALUES (20614, 401, N'Blog', N'Blog', 0, 0, N'', N'', N'', N'', 5, 0, 0, 0, 0, NULL, CAST(N'2018-01-17T14:39:49.000' AS DateTime), 1, 0, 0, N'', N'', N'~/blog/', 23, 0, NULL, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'', 0, CAST(N'2018-01-17T14:39:49.707' AS DateTime), CAST(N'2018-03-23T15:08:36.747' AS DateTime), 0, 0, 0, N'', NULL, N'<Site:RenderChildren runat="server" ShowPager="True" PageSize="10" ChildPropertyName="UseSummaryLayout" Where=''MediaType.Name=="BlogPost"'' OrderBy="DateCreated DESC" />', N'', N'', 1, 1, 0, 0, N'', N'')
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [MetaKeywords], [MetaDescription], [MetaRobots], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [UseDefaultLanguageLayouts], [CanLimitedRolesAccessAllChildPages], [EnforceRoleLimitationsOnFrontEnd], [OnPublishExecuteCode], [InjectHtml]) VALUES (20615, 402, N'Category 1', N'Category 1', 0, 0, N'', N'', N'', N'', 5, 0, 0, 0, 0, NULL, CAST(N'2018-01-17T14:40:06.000' AS DateTime), 0, 0, 1, N'', N'', N'~/blog/category-1/', 26, 0, NULL, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'', 0, CAST(N'2018-01-17T14:40:06.110' AS DateTime), CAST(N'2018-01-18T09:45:13.707' AS DateTime), 0, 0, 0, N'', NULL, N'', N'', N'', 1, 1, 0, 0, N'', N'')
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [MetaKeywords], [MetaDescription], [MetaRobots], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [UseDefaultLanguageLayouts], [CanLimitedRolesAccessAllChildPages], [EnforceRoleLimitationsOnFrontEnd], [OnPublishExecuteCode], [InjectHtml]) VALUES (20617, 404, N'Blog Post 2', N'Blog Post 2', 0, 0, N'', N'', N'', N'all', 5, 0, 0, 0, 0, NULL, CAST(N'2018-04-13T10:46:13.870' AS DateTime), 0, 0, 1, N'', N'', N'~/blog/category-1/blog-post-2/', 24, 0, NULL, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'', 0, CAST(N'2018-01-17T14:47:11.077' AS DateTime), CAST(N'2018-04-13T10:46:13.870' AS DateTime), 0, 0, 0, N'', NULL, N'@model Page 
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
</form>', N'', N'', 1, 1, 0, 0, N'', N'')
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [MetaKeywords], [MetaDescription], [MetaRobots], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [UseDefaultLanguageLayouts], [CanLimitedRolesAccessAllChildPages], [EnforceRoleLimitationsOnFrontEnd], [OnPublishExecuteCode], [InjectHtml]) VALUES (20812, 472, N'New Item', N'New Item', 0, 0, N'', N'', N'', N'', 5, 0, 0, 0, 0, NULL, CAST(N'2018-03-19T09:20:16.693' AS DateTime), 0, 0, 0, N'', N'', N'~/new-item/', 25, 0, NULL, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'', 0, CAST(N'2018-03-19T09:20:16.677' AS DateTime), CAST(N'2018-03-19T09:20:16.677' AS DateTime), 0, 0, 0, N'', NULL, N'', N'', N'', 1, 0, 0, 0, N'', N'')
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [MetaKeywords], [MetaDescription], [MetaRobots], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [UseDefaultLanguageLayouts], [CanLimitedRolesAccessAllChildPages], [EnforceRoleLimitationsOnFrontEnd], [OnPublishExecuteCode], [InjectHtml]) VALUES (20813, 473, N'New Item', N'New Item', 0, 0, N'', N'', N'', N'', 5, 0, 0, 0, 0, NULL, CAST(N'2018-03-19T09:20:18.133' AS DateTime), 0, 0, 0, N'', N'', N'~/new-item/', 25, 0, NULL, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'', 0, CAST(N'2018-03-19T09:20:18.130' AS DateTime), CAST(N'2018-03-19T09:20:18.130' AS DateTime), 0, 0, 0, N'', NULL, N'', N'', N'', 1, 0, 0, 0, N'', N'')
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [MetaKeywords], [MetaDescription], [MetaRobots], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [UseDefaultLanguageLayouts], [CanLimitedRolesAccessAllChildPages], [EnforceRoleLimitationsOnFrontEnd], [OnPublishExecuteCode], [InjectHtml]) VALUES (20862, 506, N'New Item', N'2018-03-16_13h14_22.png', 0, 0, N'', N'', N'', N'', 5, 0, 0, 0, 0, NULL, CAST(N'2018-03-20T09:27:38.973' AS DateTime), 0, 0, 0, N'', N'', N'~/20180316_13h14_22png/', 25, 0, NULL, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'', 0, CAST(N'2018-03-20T09:27:38.967' AS DateTime), CAST(N'2018-03-20T09:27:38.967' AS DateTime), 0, 0, 0, N'', NULL, N'', N'', N'', 1, 1, 0, 0, N'', N'')
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [MetaKeywords], [MetaDescription], [MetaRobots], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [UseDefaultLanguageLayouts], [CanLimitedRolesAccessAllChildPages], [EnforceRoleLimitationsOnFrontEnd], [OnPublishExecuteCode], [InjectHtml]) VALUES (20863, 507, N'New Item', N'2018-03-19_14h52_33.png', 0, 0, N'', N'', N'', N'', 5, 0, 0, 0, 0, NULL, CAST(N'2018-03-20T09:27:39.017' AS DateTime), 0, 0, 0, N'', N'', N'~/20180319_14h52_33png/', 25, 0, NULL, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'', 0, CAST(N'2018-03-20T09:27:39.013' AS DateTime), CAST(N'2018-03-20T09:27:39.013' AS DateTime), 0, 0, 0, N'', NULL, N'', N'', N'', 1, 1, 0, 0, N'', N'')
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [MetaKeywords], [MetaDescription], [MetaRobots], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [UseDefaultLanguageLayouts], [CanLimitedRolesAccessAllChildPages], [EnforceRoleLimitationsOnFrontEnd], [OnPublishExecuteCode], [InjectHtml]) VALUES (20864, 508, N'New Item', N'2018-03-19_14h55_10.png', 0, 0, N'', N'', N'', N'', 5, 0, 0, 0, 0, NULL, CAST(N'2018-03-20T09:27:39.037' AS DateTime), 0, 0, 0, N'', N'', N'~/20180319_14h55_10png/', 25, 0, NULL, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'', 0, CAST(N'2018-03-20T09:27:39.037' AS DateTime), CAST(N'2018-03-20T09:27:39.037' AS DateTime), 0, 0, 0, N'', NULL, N'', N'', N'', 1, 1, 0, 0, N'', N'')
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [MetaKeywords], [MetaDescription], [MetaRobots], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [UseDefaultLanguageLayouts], [CanLimitedRolesAccessAllChildPages], [EnforceRoleLimitationsOnFrontEnd], [OnPublishExecuteCode], [InjectHtml]) VALUES (20961, 528, N'test', N'test', 0, 0, N'', N'', N'', N'all', 5, 0, 0, 0, 0, NULL, CAST(N'2018-03-27T11:24:59.000' AS DateTime), 1, 0, 1, N'', N'', N'~/test/', 1, 0, NULL, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'', 0, CAST(N'2018-03-27T11:24:58.440' AS DateTime), CAST(N'2018-04-12T13:16:57.857' AS DateTime), 0, 0, 0, N'', NULL, N'{Field:MultiItem}', N'<div>
    <h2>{SectionTitle}</h2>
    {ShortDescription}
</div>', N'', 0, 1, 0, 0, N'', N'')
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [MetaKeywords], [MetaDescription], [MetaRobots], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [UseDefaultLanguageLayouts], [CanLimitedRolesAccessAllChildPages], [EnforceRoleLimitationsOnFrontEnd], [OnPublishExecuteCode], [InjectHtml]) VALUES (20962, 529, N'test1', N'test1', 0, 0, N'', N'', N'', N'all', 5, 0, 0, 0, 0, NULL, CAST(N'2018-03-27T11:25:13.000' AS DateTime), 1, 0, 1, N'', N'', N'~/test/test1/', 1, 0, NULL, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'', 0, CAST(N'2018-03-27T11:25:05.857' AS DateTime), CAST(N'2018-04-10T09:08:31.997' AS DateTime), 0, 0, 0, N'', NULL, N'<div class="row">
    <div class="col col-md-12">
        {Field:SectionTitle}{Field:MainContent}</div>
</div>', N'<div>
    <h2>{SectionTitle}</h2>
    {ShortDescription}
</div>', N'', 1, 1, 0, 0, N'', N'')
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [MetaKeywords], [MetaDescription], [MetaRobots], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [UseDefaultLanguageLayouts], [CanLimitedRolesAccessAllChildPages], [EnforceRoleLimitationsOnFrontEnd], [OnPublishExecuteCode], [InjectHtml]) VALUES (20963, 530, N'test2', N'test2', 0, 0, N'', N'', N'', N'', 5, 0, 0, 0, 0, NULL, CAST(N'2018-03-27T11:25:41.670' AS DateTime), 1, 1, 1, N'', N'', N'~/test/test2/', 1, 0, NULL, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'', 0, CAST(N'2018-03-27T11:25:37.417' AS DateTime), CAST(N'2018-04-13T10:49:47.343' AS DateTime), 0, 0, 0, N'', NULL, N'<div class="row">
    <div class="col col-md-12">
        {Field:SectionTitle}{Field:MainContent}</div>
</div>', N'<div>
    <h2>{SectionTitle}</h2>
    {ShortDescription}
</div>', N'', 1, 1, 0, 0, N'', N'')
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [MetaKeywords], [MetaDescription], [MetaRobots], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [UseDefaultLanguageLayouts], [CanLimitedRolesAccessAllChildPages], [EnforceRoleLimitationsOnFrontEnd], [OnPublishExecuteCode], [InjectHtml]) VALUES (20982, 537, N'New Item', N'slide-1.jpg', 0, 0, N'', N'', N'', N'', 5, 0, 0, 0, 0, NULL, CAST(N'2018-04-04T15:43:57.000' AS DateTime), 0, 0, 0, N'', N'', N'~/test/slide1jpg/', 25, 0, NULL, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'', 0, CAST(N'2018-04-04T15:32:42.773' AS DateTime), CAST(N'2018-04-04T15:43:02.150' AS DateTime), 0, 0, 0, N'', NULL, N'', N'', N'', 1, 1, 0, 0, N'', N'')
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [MetaKeywords], [MetaDescription], [MetaRobots], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [UseDefaultLanguageLayouts], [CanLimitedRolesAccessAllChildPages], [EnforceRoleLimitationsOnFrontEnd], [OnPublishExecuteCode], [InjectHtml]) VALUES (20983, 538, N'New Item', N'slide-2.jpg', 0, 0, N'', N'', N'', N'', 5, 0, 0, 0, 0, NULL, CAST(N'2018-04-04T15:32:42.870' AS DateTime), 0, 0, 0, N'', N'', N'~/test/slide2jpg/', 25, 0, NULL, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'', 0, CAST(N'2018-04-04T15:32:42.867' AS DateTime), CAST(N'2018-04-04T15:32:42.867' AS DateTime), 0, 0, 0, N'', NULL, N'', N'', N'', 1, 1, 0, 0, N'', N'')
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [MetaKeywords], [MetaDescription], [MetaRobots], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [UseDefaultLanguageLayouts], [CanLimitedRolesAccessAllChildPages], [EnforceRoleLimitationsOnFrontEnd], [OnPublishExecuteCode], [InjectHtml]) VALUES (20984, 539, N'New Item', N'slide-3.jpg', 0, 0, N'', N'', N'', N'', 5, 0, 0, 0, 0, NULL, CAST(N'2018-04-04T15:32:42.893' AS DateTime), 0, 0, 0, N'', N'', N'~/test/slide3jpg/', 25, 0, NULL, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'', 0, CAST(N'2018-04-04T15:32:42.887' AS DateTime), CAST(N'2018-04-04T15:32:42.887' AS DateTime), 0, 0, 0, N'', NULL, N'', N'', N'', 1, 1, 0, 0, N'', N'')
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [MetaKeywords], [MetaDescription], [MetaRobots], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [UseDefaultLanguageLayouts], [CanLimitedRolesAccessAllChildPages], [EnforceRoleLimitationsOnFrontEnd], [OnPublishExecuteCode], [InjectHtml]) VALUES (20985, 540, N'New Item', N'slide-4.jpg', 0, 0, N'', N'', N'', N'', 5, 0, 0, 0, 0, NULL, CAST(N'2018-04-04T15:32:42.917' AS DateTime), 0, 0, 0, N'', N'', N'~/test/slide4jpg/', 25, 0, NULL, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'', 0, CAST(N'2018-04-04T15:32:42.913' AS DateTime), CAST(N'2018-04-04T15:32:42.913' AS DateTime), 0, 0, 0, N'', NULL, N'', N'', N'', 1, 1, 0, 0, N'', N'')
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [MetaKeywords], [MetaDescription], [MetaRobots], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [UseDefaultLanguageLayouts], [CanLimitedRolesAccessAllChildPages], [EnforceRoleLimitationsOnFrontEnd], [OnPublishExecuteCode], [InjectHtml]) VALUES (21025, 566, N'Search', N'Search', 0, 0, N'', N'', N'', N'all', 5, 0, 0, 0, 0, NULL, CAST(N'2018-04-13T08:47:04.000' AS DateTime), 0, 0, 1, N'', N'', N'~/search/', 1, 0, NULL, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'', 0, CAST(N'2018-04-13T08:47:03.607' AS DateTime), CAST(N'2018-04-13T09:33:31.193' AS DateTime), 0, 0, 0, N'', NULL, N'<!-- Replace the below with Google Custom Search -->

<!-- Load the search form  -->
{{Load:8}.Field:SearchForm}

<!-- Show the search results, this looks for the query string param ''q'' -->
<Site:SearchResults runat="server" />
', N'<div>
    <h2>{SectionTitle}</h2>
    {ShortDescription}
</div>', N'', 0, 1, 0, 0, N'', N'')
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [MetaKeywords], [MetaDescription], [MetaRobots], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [UseDefaultLanguageLayouts], [CanLimitedRolesAccessAllChildPages], [EnforceRoleLimitationsOnFrontEnd], [OnPublishExecuteCode], [InjectHtml]) VALUES (21045, 406, N'Blog Post 4', N'Blog Post 4', 0, 0, N'', N'', N'', N'all', 5, 0, 0, 0, 0, NULL, CAST(N'2018-04-13T10:46:07.827' AS DateTime), 0, 0, 1, N'', N'', N'~/blog/category-1/blog-post-4/', 24, 0, NULL, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'', 0, CAST(N'2018-04-13T10:08:55.237' AS DateTime), CAST(N'2018-04-13T10:46:07.827' AS DateTime), 0, 0, 0, N'', NULL, N'@model Page 
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
</form>', N'', N'', 1, 1, 0, 0, N'', N'')
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [MetaKeywords], [MetaDescription], [MetaRobots], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [UseDefaultLanguageLayouts], [CanLimitedRolesAccessAllChildPages], [EnforceRoleLimitationsOnFrontEnd], [OnPublishExecuteCode], [InjectHtml]) VALUES (21057, 405, N'Blog Post 3', N'Blog Post 3', 0, 0, N'', N'', N'', N'all', 5, 0, 0, 0, 0, NULL, CAST(N'2018-04-13T10:45:52.000' AS DateTime), 0, 0, 1, N'', N'', N'~/blog/category-1/blog-post-3/', 24, 0, NULL, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'', 0, CAST(N'2018-04-13T10:44:08.877' AS DateTime), CAST(N'2018-04-13T10:47:15.573' AS DateTime), 0, 0, 0, N'', NULL, N'@model Page 
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
</form>', N'', N'', 1, 1, 0, 0, N'', N'')
INSERT [dbo].[MediaDetails] ([ID], [MediaID], [Title], [LinkTitle], [UseDirectLink], [OpenInNewWindow], [DirectLink], [MetaKeywords], [MetaDescription], [MetaRobots], [LanguageID], [NumberOfViews], [NumberOfStars], [IsDeleted], [AllowCommenting], [ExpiryDate], [PublishDate], [ShowInMenu], [ShowInSearchResults], [EnableCaching], [SefTitle], [Handler], [CachedVirtualPath], [MediaTypeID], [HistoryVersionNumber], [HistoryForMediaDetailID], [IsDraft], [CreatedByUserID], [LastUpdatedByUserID], [CanAddToCart], [Price], [QuantityInStock], [RecurringTimePeriod], [RedirectToFirstChild], [DateCreated], [DateLastModified], [RenderInFooter], [ForceSSL], [IsProtected], [CssClasses], [MasterPageID], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [UseDefaultLanguageLayouts], [CanLimitedRolesAccessAllChildPages], [EnforceRoleLimitationsOnFrontEnd], [OnPublishExecuteCode], [InjectHtml]) VALUES (21061, 403, N'Blog Post', N'Blog Post', 0, 0, N'', N'', N'', N'all', 5, 0, 0, 0, 0, CAST(N'2018-04-16T10:51:31.000' AS DateTime), CAST(N'2018-04-14T10:51:28.000' AS DateTime), 0, 0, 1, N'', N'', N'~/blog/category-1/blog-post/', 24, 0, NULL, 0, 25, 25, 0, CAST(0.00 AS Decimal(18, 2)), 0, N'', 0, CAST(N'2018-04-13T10:50:01.777' AS DateTime), CAST(N'2018-04-13T10:51:34.293' AS DateTime), 0, 0, 0, N'', NULL, N'@model Page 
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
</form>', N'', N'', 1, 1, 0, 0, N'', N'')
SET IDENTITY_INSERT [dbo].[MediaDetails] OFF
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (13, 4, 10, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (14, 4, 11, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (15, 4, 12, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (16, 5, 10, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (17, 5, 11, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (18, 5, 12, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (24, 19, 21, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (25, 19, 22, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (26, 19, 23, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (27, 20, 21, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (28, 20, 22, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (29, 20, 23, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (53, 27, 21, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (54, 27, 22, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (55, 27, 23, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (56, 28, 21, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (57, 28, 22, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (58, 28, 23, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (59, 29, 21, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (60, 29, 22, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (61, 29, 23, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (63, 30, 21, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (64, 30, 22, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (65, 30, 23, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (66, 31, 21, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (67, 31, 22, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (68, 31, 23, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (70, 32, 21, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (71, 32, 22, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (72, 32, 23, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (73, 33, 21, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (74, 33, 22, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (75, 33, 23, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (76, 34, 21, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (77, 34, 22, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (78, 34, 23, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (80, 19, 79, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (81, 20, 79, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (86, 27, 79, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (87, 28, 79, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (88, 29, 79, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (89, 30, 79, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (90, 31, 79, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (91, 32, 79, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (92, 33, 79, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (93, 34, 79, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (95, 35, 21, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (96, 35, 22, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (97, 35, 23, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (98, 35, 79, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (99, 36, 21, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (100, 36, 22, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (101, 36, 23, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (102, 36, 79, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (103, 37, 21, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (104, 37, 22, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (105, 37, 23, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (106, 37, 79, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (146, 47, 21, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (147, 47, 22, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (148, 47, 23, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (149, 47, 79, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (150, 48, 21, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (151, 48, 22, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (152, 48, 23, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (153, 48, 79, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (154, 49, 21, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (155, 49, 22, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (156, 49, 23, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (157, 49, 79, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (159, 50, 21, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (160, 50, 22, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (161, 50, 23, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (162, 50, 79, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (163, 51, 21, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (164, 51, 22, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (165, 51, 23, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (166, 51, 79, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (936, 218, 1, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (937, 218, 3, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (938, 218, 5, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (939, 219, 21, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (940, 219, 22, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (941, 219, 23, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (942, 219, 79, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (943, 220, 21, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (944, 220, 22, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (945, 220, 23, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (946, 220, 79, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (1406, 9, NULL, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (1413, 331, NULL, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (1414, 331, NULL, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (11446, 331, NULL, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (11493, 331, NULL, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (11494, 331, NULL, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (11495, 9, NULL, 0, 0)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (11502, 331, NULL, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (21495, 331, NULL, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (22061, 20614, 22055, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (22062, 20614, 22056, 1, 1)
GO
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (22063, 20614, 22057, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (22067, 20615, 22064, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (22068, 20615, 22065, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (22069, 20615, 22066, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (22073, 20617, 22058, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (22074, 20617, 22059, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (22075, 20617, 22060, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (23176, 20812, 21, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (23177, 20812, 22, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (23178, 20812, 23, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (23179, 20812, 79, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (23180, 20813, 21, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (23181, 20813, 22, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (23182, 20813, 23, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (23183, 20813, 79, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (23387, 20862, 21, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (23388, 20862, 22, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (23389, 20862, 23, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (23390, 20862, 79, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (23391, 20863, 21, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (23392, 20863, 22, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (23393, 20863, 23, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (23394, 20863, 79, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (23395, 20864, 21, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (23396, 20864, 22, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (23397, 20864, 23, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (23398, 20864, 79, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (23733, 20961, 10, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (23734, 20961, 11, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (23735, 20961, 12, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (23736, 20962, 10, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (23737, 20962, 11, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (23738, 20962, 12, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (23739, 20963, 10, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (23740, 20963, 11, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (23741, 20963, 12, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (23742, 20961, NULL, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (23815, 20982, 21, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (23816, 20982, 22, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (23817, 20982, 23, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (23818, 20982, 79, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (23819, 20983, 21, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (23820, 20983, 22, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (23821, 20983, 23, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (23822, 20983, 79, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (23823, 20984, 21, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (23824, 20984, 22, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (23825, 20984, 23, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (23826, 20984, 79, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (23827, 20985, 21, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (23828, 20985, 22, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (23829, 20985, 23, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (23830, 20985, 79, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (23981, 21025, 10, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (23982, 21025, 11, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (23983, 21025, 12, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (24017, 9, NULL, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (24039, 21045, 22058, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (24040, 21045, 22059, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (24041, 21045, 22060, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (24075, 21057, 22058, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (24076, 21057, 22059, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (24077, 21057, 22060, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (24087, 20963, NULL, 0, 0)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (24088, 21061, 22058, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (24089, 21061, 22059, 1, 1)
INSERT [dbo].[MediaDetailsFields] ([FieldID], [MediaDetailID], [MediaTypeFieldID], [UseMediaTypeFieldFrontEndLayout], [UseMediaTypeFieldDescription]) VALUES (24090, 21061, 22060, 1, 1)
INSERT [dbo].[MediaTags] ([TagID], [MediaID], [OrderIndex]) VALUES (2, 403, 0)
INSERT [dbo].[MediaTags] ([TagID], [MediaID], [OrderIndex]) VALUES (2, 404, 0)
INSERT [dbo].[MediaTags] ([TagID], [MediaID], [OrderIndex]) VALUES (2, 405, 0)
SET IDENTITY_INSERT [dbo].[MediaTypes] ON 

INSERT [dbo].[MediaTypes] ([ID], [Name], [Label], [MediaTypeHandler], [MasterPageID], [IsActive], [ShowInMenu], [ShowInSearchResults], [ShowInSiteTree], [EnableCaching], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [OnPublishExecuteCode], [DateCreated], [DateLastModified]) VALUES (1, N'Page', N'Page', N'~/Views/MediaTypeHandlers/Page.aspx', NULL, 1, 1, 1, 1, 1, N'<div class="row">
    <div class="col col-md-12">
        {Field:SectionTitle}{Field:MainContent}</div>
</div>', N'<div>
    <h2>{SectionTitle}</h2>
    {ShortDescription}
</div>', N'', 1, N'@{
    var test = "This is a test message";
    
    @test
}', CAST(N'2011-02-25T16:00:51.810' AS DateTime), CAST(N'2018-03-22T13:23:13.303' AS DateTime))
INSERT [dbo].[MediaTypes] ([ID], [Name], [Label], [MediaTypeHandler], [MasterPageID], [IsActive], [ShowInMenu], [ShowInSearchResults], [ShowInSiteTree], [EnableCaching], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [OnPublishExecuteCode], [DateCreated], [DateLastModified]) VALUES (13, N'RootPage', N'RootPage', N'~/Views/MediaTypeHandlers/RootPage.aspx', NULL, 1, 0, 0, 1, 1, N'', N'', N'', 1, N'', CAST(N'2012-01-17T14:36:29.107' AS DateTime), CAST(N'2017-07-04T14:18:19.477' AS DateTime))
INSERT [dbo].[MediaTypes] ([ID], [Name], [Label], [MediaTypeHandler], [MasterPageID], [IsActive], [ShowInMenu], [ShowInSearchResults], [ShowInSiteTree], [EnableCaching], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [OnPublishExecuteCode], [DateCreated], [DateLastModified]) VALUES (16, N'UrlRedirectRule', N'UrlRedirectRule', N'~/Views/MediaTypeHandlers/UrlRedirectRule.aspx', NULL, 1, 0, 0, 1, 0, N'', N'', N'', 1, N'', CAST(N'2012-04-13T15:39:37.113' AS DateTime), CAST(N'2018-01-29T13:58:42.667' AS DateTime))
INSERT [dbo].[MediaTypes] ([ID], [Name], [Label], [MediaTypeHandler], [MasterPageID], [IsActive], [ShowInMenu], [ShowInSearchResults], [ShowInSiteTree], [EnableCaching], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [OnPublishExecuteCode], [DateCreated], [DateLastModified]) VALUES (17, N'UrlRedirectRuleList', N'UrlRedirectRuleList', N'~/Views/MediaTypeHandlers/UrlRedirectRuleList.aspx', NULL, 1, 0, 0, 1, 0, N'', N'', N'', 1, N'', CAST(N'2012-04-13T15:40:04.020' AS DateTime), CAST(N'2018-01-29T14:01:08.563' AS DateTime))
INSERT [dbo].[MediaTypes] ([ID], [Name], [Label], [MediaTypeHandler], [MasterPageID], [IsActive], [ShowInMenu], [ShowInSearchResults], [ShowInSiteTree], [EnableCaching], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [OnPublishExecuteCode], [DateCreated], [DateLastModified]) VALUES (19, N'Website', N'Website', N'~/Views/MediaTypeHandlers/Website.aspx', 2, 1, 1, 1, 1, 1, N'{Field:MainContent}
<div class="row">
    <div class="col col-md-4">
        {{Load:195}.Field:ContactForm}</div>
    <div class="col col-md-8">
        {Field:SectionTitle}{Field:MainContent}</div>
</div>', N'', N'', 1, N'', CAST(N'2012-06-14T16:49:05.997' AS DateTime), CAST(N'2018-03-20T09:29:18.923' AS DateTime))
INSERT [dbo].[MediaTypes] ([ID], [Name], [Label], [MediaTypeHandler], [MasterPageID], [IsActive], [ShowInMenu], [ShowInSearchResults], [ShowInSiteTree], [EnableCaching], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [OnPublishExecuteCode], [DateCreated], [DateLastModified]) VALUES (23, N'Blog', N'Blog', N'/Views/MediaTypeHandlers/Blog.aspx', NULL, 1, 1, 0, 1, 0, N'', N'', N'', 1, N'', CAST(N'2016-02-26T14:56:06.043' AS DateTime), CAST(N'2018-03-26T15:37:16.727' AS DateTime))
INSERT [dbo].[MediaTypes] ([ID], [Name], [Label], [MediaTypeHandler], [MasterPageID], [IsActive], [ShowInMenu], [ShowInSearchResults], [ShowInSiteTree], [EnableCaching], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [OnPublishExecuteCode], [DateCreated], [DateLastModified]) VALUES (24, N'BlogPost', N'BlogPost', N'~/Views/MediaTypeHandlers/Page.aspx', NULL, 1, 0, 0, 1, 1, N'@model Page 
@{
    var relatedItems = Model.GetRelatedItems().Take(3);
    
    var currentArticleDate = StringHelper.FormatOnlyDate((DateTime) Model.DateCreated);
    
    if(Model.PublishDate != null)
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
        @{
            if(relatedItems.Count() > 0)
            {
                <div class="container related-blog-posts">
                    <h3>Related Blog Posts:</h3>
                    <div>
                        {{Load:195}.Field:RenderMediaTypeItems?MediaTypeID=''@Model.MediaTypeID''&Take=''3''&CurrentMediaID=''@Model.MediaID''&ShortCode=''UseSummaryLayout''}
                    </div>
                </div>
            }
        }
    </aside>
</div>
<!--<form runat="server">
    <asp:scriptmanager runat="server"></asp:scriptmanager>
    <site:commentsform runat="server"></site:commentsform>
    <site:commentslist runat="server"></site:commentslist>
</form>-->', N'<div class="col post">
    <h5>{Field:SectionTitle}</h5>
    <small><em>{PublishDate}</em></small>
    <p>{Field:ShortDescription}</p>
    <a href="{AbsoluteUrl}" class="related-blog-posts-link">Read more &raquo;</a>
</div>', N'', 1, N'', CAST(N'2016-03-11T10:23:22.883' AS DateTime), CAST(N'2018-01-18T13:26:33.007' AS DateTime))
INSERT [dbo].[MediaTypes] ([ID], [Name], [Label], [MediaTypeHandler], [MasterPageID], [IsActive], [ShowInMenu], [ShowInSearchResults], [ShowInSiteTree], [EnableCaching], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [OnPublishExecuteCode], [DateCreated], [DateLastModified]) VALUES (25, N'FieldItem', N'FieldItem', N'~/Views/MediaTypeHandlers/Page.aspx', NULL, 1, 0, 0, 0, 0, N'', N'', N'', 1, N'', CAST(N'2016-07-06T09:44:49.593' AS DateTime), CAST(N'2018-02-01T13:39:24.250' AS DateTime))
INSERT [dbo].[MediaTypes] ([ID], [Name], [Label], [MediaTypeHandler], [MasterPageID], [IsActive], [ShowInMenu], [ShowInSearchResults], [ShowInSiteTree], [EnableCaching], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [OnPublishExecuteCode], [DateCreated], [DateLastModified]) VALUES (26, N'BlogCategory', N'BlogCategory', N'/Views/MediaTypeHandlers/Blog.aspx', NULL, 1, 0, 0, 1, 1, N'', N'', N'', 1, N'', CAST(N'2016-10-12T08:48:11.100' AS DateTime), CAST(N'2018-01-18T10:48:04.710' AS DateTime))
INSERT [dbo].[MediaTypes] ([ID], [Name], [Label], [MediaTypeHandler], [MasterPageID], [IsActive], [ShowInMenu], [ShowInSearchResults], [ShowInSiteTree], [EnableCaching], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [OnPublishExecuteCode], [DateCreated], [DateLastModified]) VALUES (29, N'RedirectPage', N'RedirectPage', N'/Views/MediaTypeHandlers/Page.aspx', NULL, 1, 0, 0, 1, 0, N'', N'', N'', 1, N'', CAST(N'2017-01-30T12:59:52.550' AS DateTime), CAST(N'2017-07-04T14:48:46.597' AS DateTime))
INSERT [dbo].[MediaTypes] ([ID], [Name], [Label], [MediaTypeHandler], [MasterPageID], [IsActive], [ShowInMenu], [ShowInSearchResults], [ShowInSiteTree], [EnableCaching], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [OnPublishExecuteCode], [DateCreated], [DateLastModified]) VALUES (30, N'Include', N'Include', N'/Views/MediaTypeHandlers/Page.aspx', 4, 1, 0, 0, 1, 0, N'', N'', N'', 0, N'', CAST(N'2017-07-04T11:53:45.740' AS DateTime), CAST(N'2018-01-17T09:57:22.743' AS DateTime))
INSERT [dbo].[MediaTypes] ([ID], [Name], [Label], [MediaTypeHandler], [MasterPageID], [IsActive], [ShowInMenu], [ShowInSearchResults], [ShowInSiteTree], [EnableCaching], [MainLayout], [SummaryLayout], [FeaturedLayout], [UseMediaTypeLayouts], [OnPublishExecuteCode], [DateCreated], [DateLastModified]) VALUES (31, N'Container', N'Container', N'/Views/MediaTypeHandlers/Page.aspx', 4, 1, 0, 0, 1, 0, N'', N'', N'', 0, N'', CAST(N'2017-07-04T11:56:39.263' AS DateTime), CAST(N'2017-08-08T10:57:49.343' AS DateTime))
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
INSERT [dbo].[MediaTypesChildren] ([MediaTypeID], [AllowedChildMediaTypeID]) VALUES (30, 30)
INSERT [dbo].[MediaTypesChildren] ([MediaTypeID], [AllowedChildMediaTypeID]) VALUES (31, 30)
INSERT [dbo].[MediaTypesChildren] ([MediaTypeID], [AllowedChildMediaTypeID]) VALUES (31, 31)
INSERT [dbo].[MediaTypesFields] ([FieldID], [MediaTypeID], [Instructions]) VALUES (1, 19, N'')
INSERT [dbo].[MediaTypesFields] ([FieldID], [MediaTypeID], [Instructions]) VALUES (3, 19, N'')
INSERT [dbo].[MediaTypesFields] ([FieldID], [MediaTypeID], [Instructions]) VALUES (5, 19, N'')
INSERT [dbo].[MediaTypesFields] ([FieldID], [MediaTypeID], [Instructions]) VALUES (10, 1, N'')
INSERT [dbo].[MediaTypesFields] ([FieldID], [MediaTypeID], [Instructions]) VALUES (11, 1, N'')
INSERT [dbo].[MediaTypesFields] ([FieldID], [MediaTypeID], [Instructions]) VALUES (12, 1, N'')
INSERT [dbo].[MediaTypesFields] ([FieldID], [MediaTypeID], [Instructions]) VALUES (21, 25, N'')
INSERT [dbo].[MediaTypesFields] ([FieldID], [MediaTypeID], [Instructions]) VALUES (22, 25, N'')
INSERT [dbo].[MediaTypesFields] ([FieldID], [MediaTypeID], [Instructions]) VALUES (23, 25, N'')
INSERT [dbo].[MediaTypesFields] ([FieldID], [MediaTypeID], [Instructions]) VALUES (79, 25, N'')
INSERT [dbo].[MediaTypesFields] ([FieldID], [MediaTypeID], [Instructions]) VALUES (22055, 23, N'')
INSERT [dbo].[MediaTypesFields] ([FieldID], [MediaTypeID], [Instructions]) VALUES (22056, 23, N'')
INSERT [dbo].[MediaTypesFields] ([FieldID], [MediaTypeID], [Instructions]) VALUES (22057, 23, N'')
INSERT [dbo].[MediaTypesFields] ([FieldID], [MediaTypeID], [Instructions]) VALUES (22058, 24, N'')
INSERT [dbo].[MediaTypesFields] ([FieldID], [MediaTypeID], [Instructions]) VALUES (22059, 24, N'')
INSERT [dbo].[MediaTypesFields] ([FieldID], [MediaTypeID], [Instructions]) VALUES (22060, 24, N'')
INSERT [dbo].[MediaTypesFields] ([FieldID], [MediaTypeID], [Instructions]) VALUES (22064, 26, N'')
INSERT [dbo].[MediaTypesFields] ([FieldID], [MediaTypeID], [Instructions]) VALUES (22065, 26, N'')
INSERT [dbo].[MediaTypesFields] ([FieldID], [MediaTypeID], [Instructions]) VALUES (22066, 26, N'')
INSERT [dbo].[Pages] ([MediaDetailID]) VALUES (4)
INSERT [dbo].[Pages] ([MediaDetailID]) VALUES (5)
INSERT [dbo].[Pages] ([MediaDetailID]) VALUES (6)
INSERT [dbo].[Pages] ([MediaDetailID]) VALUES (8)
INSERT [dbo].[Pages] ([MediaDetailID]) VALUES (9)
INSERT [dbo].[Pages] ([MediaDetailID]) VALUES (10)
INSERT [dbo].[Pages] ([MediaDetailID]) VALUES (19)
INSERT [dbo].[Pages] ([MediaDetailID]) VALUES (20)
INSERT [dbo].[Pages] ([MediaDetailID]) VALUES (27)
INSERT [dbo].[Pages] ([MediaDetailID]) VALUES (28)
INSERT [dbo].[Pages] ([MediaDetailID]) VALUES (29)
INSERT [dbo].[Pages] ([MediaDetailID]) VALUES (30)
INSERT [dbo].[Pages] ([MediaDetailID]) VALUES (31)
INSERT [dbo].[Pages] ([MediaDetailID]) VALUES (32)
INSERT [dbo].[Pages] ([MediaDetailID]) VALUES (33)
INSERT [dbo].[Pages] ([MediaDetailID]) VALUES (34)
INSERT [dbo].[Pages] ([MediaDetailID]) VALUES (35)
INSERT [dbo].[Pages] ([MediaDetailID]) VALUES (36)
INSERT [dbo].[Pages] ([MediaDetailID]) VALUES (37)
INSERT [dbo].[Pages] ([MediaDetailID]) VALUES (47)
INSERT [dbo].[Pages] ([MediaDetailID]) VALUES (48)
INSERT [dbo].[Pages] ([MediaDetailID]) VALUES (49)
INSERT [dbo].[Pages] ([MediaDetailID]) VALUES (50)
INSERT [dbo].[Pages] ([MediaDetailID]) VALUES (51)
INSERT [dbo].[Pages] ([MediaDetailID]) VALUES (219)
INSERT [dbo].[Pages] ([MediaDetailID]) VALUES (220)
INSERT [dbo].[Pages] ([MediaDetailID]) VALUES (238)
INSERT [dbo].[Pages] ([MediaDetailID]) VALUES (239)
INSERT [dbo].[Pages] ([MediaDetailID]) VALUES (240)
INSERT [dbo].[Pages] ([MediaDetailID]) VALUES (241)
INSERT [dbo].[Pages] ([MediaDetailID]) VALUES (254)
INSERT [dbo].[Pages] ([MediaDetailID]) VALUES (255)
INSERT [dbo].[Pages] ([MediaDetailID]) VALUES (256)
INSERT [dbo].[Pages] ([MediaDetailID]) VALUES (257)
INSERT [dbo].[Pages] ([MediaDetailID]) VALUES (259)
INSERT [dbo].[Pages] ([MediaDetailID]) VALUES (260)
INSERT [dbo].[Pages] ([MediaDetailID]) VALUES (261)
INSERT [dbo].[Pages] ([MediaDetailID]) VALUES (262)
INSERT [dbo].[Pages] ([MediaDetailID]) VALUES (264)
INSERT [dbo].[Pages] ([MediaDetailID]) VALUES (265)
INSERT [dbo].[Pages] ([MediaDetailID]) VALUES (266)
INSERT [dbo].[Pages] ([MediaDetailID]) VALUES (267)
INSERT [dbo].[Pages] ([MediaDetailID]) VALUES (273)
INSERT [dbo].[Pages] ([MediaDetailID]) VALUES (274)
INSERT [dbo].[Pages] ([MediaDetailID]) VALUES (275)
INSERT [dbo].[Pages] ([MediaDetailID]) VALUES (276)
INSERT [dbo].[Pages] ([MediaDetailID]) VALUES (278)
INSERT [dbo].[Pages] ([MediaDetailID]) VALUES (279)
INSERT [dbo].[Pages] ([MediaDetailID]) VALUES (280)
INSERT [dbo].[Pages] ([MediaDetailID]) VALUES (281)
INSERT [dbo].[Pages] ([MediaDetailID]) VALUES (283)
INSERT [dbo].[Pages] ([MediaDetailID]) VALUES (284)
INSERT [dbo].[Pages] ([MediaDetailID]) VALUES (285)
INSERT [dbo].[Pages] ([MediaDetailID]) VALUES (286)
INSERT [dbo].[Pages] ([MediaDetailID]) VALUES (288)
INSERT [dbo].[Pages] ([MediaDetailID]) VALUES (289)
INSERT [dbo].[Pages] ([MediaDetailID]) VALUES (290)
INSERT [dbo].[Pages] ([MediaDetailID]) VALUES (291)
INSERT [dbo].[Pages] ([MediaDetailID]) VALUES (293)
INSERT [dbo].[Pages] ([MediaDetailID]) VALUES (294)
INSERT [dbo].[Pages] ([MediaDetailID]) VALUES (295)
INSERT [dbo].[Pages] ([MediaDetailID]) VALUES (296)
INSERT [dbo].[Pages] ([MediaDetailID]) VALUES (298)
INSERT [dbo].[Pages] ([MediaDetailID]) VALUES (299)
INSERT [dbo].[Pages] ([MediaDetailID]) VALUES (300)
INSERT [dbo].[Pages] ([MediaDetailID]) VALUES (301)
INSERT [dbo].[Pages] ([MediaDetailID]) VALUES (303)
INSERT [dbo].[Pages] ([MediaDetailID]) VALUES (304)
INSERT [dbo].[Pages] ([MediaDetailID]) VALUES (305)
INSERT [dbo].[Pages] ([MediaDetailID]) VALUES (306)
INSERT [dbo].[Pages] ([MediaDetailID]) VALUES (308)
INSERT [dbo].[Pages] ([MediaDetailID]) VALUES (309)
INSERT [dbo].[Pages] ([MediaDetailID]) VALUES (310)
INSERT [dbo].[Pages] ([MediaDetailID]) VALUES (311)
INSERT [dbo].[Pages] ([MediaDetailID]) VALUES (313)
INSERT [dbo].[Pages] ([MediaDetailID]) VALUES (314)
INSERT [dbo].[Pages] ([MediaDetailID]) VALUES (315)
INSERT [dbo].[Pages] ([MediaDetailID]) VALUES (316)
INSERT [dbo].[Pages] ([MediaDetailID]) VALUES (321)
INSERT [dbo].[Pages] ([MediaDetailID]) VALUES (322)
INSERT [dbo].[Pages] ([MediaDetailID]) VALUES (323)
INSERT [dbo].[Pages] ([MediaDetailID]) VALUES (324)
INSERT [dbo].[Pages] ([MediaDetailID]) VALUES (329)
INSERT [dbo].[Pages] ([MediaDetailID]) VALUES (330)
INSERT [dbo].[Pages] ([MediaDetailID]) VALUES (331)
INSERT [dbo].[Pages] ([MediaDetailID]) VALUES (10335)
INSERT [dbo].[Pages] ([MediaDetailID]) VALUES (10336)
INSERT [dbo].[Pages] ([MediaDetailID]) VALUES (10337)
INSERT [dbo].[Pages] ([MediaDetailID]) VALUES (20372)
INSERT [dbo].[Pages] ([MediaDetailID]) VALUES (20373)
INSERT [dbo].[Pages] ([MediaDetailID]) VALUES (20374)
INSERT [dbo].[Pages] ([MediaDetailID]) VALUES (20601)
INSERT [dbo].[Pages] ([MediaDetailID]) VALUES (20602)
INSERT [dbo].[Pages] ([MediaDetailID]) VALUES (20611)
INSERT [dbo].[Pages] ([MediaDetailID]) VALUES (20612)
INSERT [dbo].[Pages] ([MediaDetailID]) VALUES (20613)
INSERT [dbo].[Pages] ([MediaDetailID]) VALUES (20614)
INSERT [dbo].[Pages] ([MediaDetailID]) VALUES (20615)
INSERT [dbo].[Pages] ([MediaDetailID]) VALUES (20617)
INSERT [dbo].[Pages] ([MediaDetailID]) VALUES (20812)
GO
INSERT [dbo].[Pages] ([MediaDetailID]) VALUES (20813)
INSERT [dbo].[Pages] ([MediaDetailID]) VALUES (20862)
INSERT [dbo].[Pages] ([MediaDetailID]) VALUES (20863)
INSERT [dbo].[Pages] ([MediaDetailID]) VALUES (20864)
INSERT [dbo].[Pages] ([MediaDetailID]) VALUES (20961)
INSERT [dbo].[Pages] ([MediaDetailID]) VALUES (20962)
INSERT [dbo].[Pages] ([MediaDetailID]) VALUES (20963)
INSERT [dbo].[Pages] ([MediaDetailID]) VALUES (20982)
INSERT [dbo].[Pages] ([MediaDetailID]) VALUES (20983)
INSERT [dbo].[Pages] ([MediaDetailID]) VALUES (20984)
INSERT [dbo].[Pages] ([MediaDetailID]) VALUES (20985)
INSERT [dbo].[Pages] ([MediaDetailID]) VALUES (21025)
INSERT [dbo].[Pages] ([MediaDetailID]) VALUES (21045)
INSERT [dbo].[Pages] ([MediaDetailID]) VALUES (21057)
INSERT [dbo].[Pages] ([MediaDetailID]) VALUES (21061)
SET IDENTITY_INSERT [dbo].[Permissions] ON 

INSERT [dbo].[Permissions] ([ID], [Name], [EnumName], [Description], [IsActive], [DateCreated], [DateLastModified]) VALUES (13, N'AccessCMS', N'AccessCMS', N'AccessCMS', 1, CAST(N'2017-04-12T10:21:11.460' AS DateTime), CAST(N'2017-04-12T10:21:11.460' AS DateTime))
INSERT [dbo].[Permissions] ([ID], [Name], [EnumName], [Description], [IsActive], [DateCreated], [DateLastModified]) VALUES (16, N'Create', N'Create', N'Create', 1, CAST(N'2017-04-12T10:21:28.780' AS DateTime), CAST(N'2017-04-12T10:21:28.780' AS DateTime))
INSERT [dbo].[Permissions] ([ID], [Name], [EnumName], [Description], [IsActive], [DateCreated], [DateLastModified]) VALUES (17, N'Save', N'Save', N'Save', 1, CAST(N'2017-04-12T10:21:33.990' AS DateTime), CAST(N'2017-04-12T10:21:33.990' AS DateTime))
INSERT [dbo].[Permissions] ([ID], [Name], [EnumName], [Description], [IsActive], [DateCreated], [DateLastModified]) VALUES (18, N'Delete', N'Delete', N'Delete', 1, CAST(N'2017-04-12T10:21:38.623' AS DateTime), CAST(N'2017-04-12T10:21:38.623' AS DateTime))
INSERT [dbo].[Permissions] ([ID], [Name], [EnumName], [Description], [IsActive], [DateCreated], [DateLastModified]) VALUES (19, N'Publish', N'Publish', N'Publish', 1, CAST(N'2017-04-12T10:21:43.407' AS DateTime), CAST(N'2017-04-12T10:21:43.407' AS DateTime))
INSERT [dbo].[Permissions] ([ID], [Name], [EnumName], [Description], [IsActive], [DateCreated], [DateLastModified]) VALUES (20, N'View', N'View', N'View', 1, CAST(N'2017-08-02T11:10:13.753' AS DateTime), CAST(N'2017-08-02T11:10:13.753' AS DateTime))
INSERT [dbo].[Permissions] ([ID], [Name], [EnumName], [Description], [IsActive], [DateCreated], [DateLastModified]) VALUES (21, N'AccessAdvanceOptions', N'AccessAdvanceOptions', N'AccessAdvanceOptions', 1, CAST(N'2017-08-25T14:46:16.737' AS DateTime), CAST(N'2017-08-25T14:46:16.737' AS DateTime))
INSERT [dbo].[Permissions] ([ID], [Name], [EnumName], [Description], [IsActive], [DateCreated], [DateLastModified]) VALUES (22, N'FrontEndEditor', N'FrontEndEditor', N'FrontEndEditor', 1, CAST(N'2017-11-22T13:10:05.983' AS DateTime), CAST(N'2017-11-22T13:10:05.983' AS DateTime))
SET IDENTITY_INSERT [dbo].[Permissions] OFF
SET IDENTITY_INSERT [dbo].[Roles] ON 

INSERT [dbo].[Roles] ([ID], [Name], [EnumName], [Description], [IsActive], [DateCreated], [DateLastModified]) VALUES (20, N'Administrator', N'Administrator', N'Administrator', 1, CAST(N'2011-10-26T14:58:24.577' AS DateTime), CAST(N'2018-04-06T09:58:45.037' AS DateTime))
INSERT [dbo].[Roles] ([ID], [Name], [EnumName], [Description], [IsActive], [DateCreated], [DateLastModified]) VALUES (26, N'Developer', N'Developer', N'Developer', 1, CAST(N'2017-08-25T14:50:09.547' AS DateTime), CAST(N'2017-11-22T13:10:40.550' AS DateTime))
SET IDENTITY_INSERT [dbo].[Roles] OFF
INSERT [dbo].[RolesPermissions] ([RoleID], [PermissionID]) VALUES (20, 13)
INSERT [dbo].[RolesPermissions] ([RoleID], [PermissionID]) VALUES (20, 16)
INSERT [dbo].[RolesPermissions] ([RoleID], [PermissionID]) VALUES (20, 17)
INSERT [dbo].[RolesPermissions] ([RoleID], [PermissionID]) VALUES (20, 18)
INSERT [dbo].[RolesPermissions] ([RoleID], [PermissionID]) VALUES (20, 19)
INSERT [dbo].[RolesPermissions] ([RoleID], [PermissionID]) VALUES (20, 20)
INSERT [dbo].[RolesPermissions] ([RoleID], [PermissionID]) VALUES (20, 21)
INSERT [dbo].[RolesPermissions] ([RoleID], [PermissionID]) VALUES (20, 22)
INSERT [dbo].[RolesPermissions] ([RoleID], [PermissionID]) VALUES (26, 13)
INSERT [dbo].[RolesPermissions] ([RoleID], [PermissionID]) VALUES (26, 16)
INSERT [dbo].[RolesPermissions] ([RoleID], [PermissionID]) VALUES (26, 17)
INSERT [dbo].[RolesPermissions] ([RoleID], [PermissionID]) VALUES (26, 18)
INSERT [dbo].[RolesPermissions] ([RoleID], [PermissionID]) VALUES (26, 19)
INSERT [dbo].[RolesPermissions] ([RoleID], [PermissionID]) VALUES (26, 20)
INSERT [dbo].[RolesPermissions] ([RoleID], [PermissionID]) VALUES (26, 21)
INSERT [dbo].[RolesPermissions] ([RoleID], [PermissionID]) VALUES (26, 22)
INSERT [dbo].[RootPages] ([MediaDetailID]) VALUES (1)
SET IDENTITY_INSERT [dbo].[Settings] ON 

INSERT [dbo].[Settings] ([ID], [GlobalCodeInHead], [GlobalCodeInBody], [ShoppingCartTax], [MaxRequestLength], [MaxUploadFileSizePerFile], [SiteOnlineAtDateTime], [SiteOfflineAtDateTime], [SiteOfflineUrl], [PageNotFoundUrl], [EnableGlossaryTerms], [OutputCacheDurationInSeconds], [DefaultLanguageID], [DefaultMasterPageID], [DateCreated], [DateLastModified]) VALUES (1, N'@{
    var BaseUrl = URIHelper.BaseUrl;
    var CurrentMediaDetail = FrameworkSettings.Current.CurrentMediaDetail;
    
    if (!AppSettings.IsRunningOnProd)
    {
        <meta name="robots" content="noindex, nofollow, noarchive"> 
    }    
}

<script type="text/javascript">
    var BaseUrl = "@BaseUrl";
</script>

<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="description" content="{CurrentMediaDetail.GetMetaDescription()}" />
<meta name="keywords" content="{CurrentMediaDetail.GetMetaKeywords()}" />
<meta name="robots" content="{CurrentMediaDetail.MetaRobots}" />

<title>{CurrentMediaDetail.GetPageTitle()}</title>

<link rel="stylesheet" href="/Scripts/colorbox-master/example3/colorbox.css" type="text/css" media="all" />

<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>

<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0/css/bootstrap.min.css" />

<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" />

<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/normalize/7.0.0/normalize.min.css" />
<link rel="stylesheet" href="/Frontend/styles/css/main.css" />

<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js" type="text/javascript" charset="utf-8"></script>

<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="//code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<script src="//cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js" type="text/javascript" charset="utf-8"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery.colorbox/1.6.3/jquery.colorbox-min.js" type="text/javascript" charset="utf-8"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/headjs/1.0.3/head.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0/js/bootstrap.min.js"></script>

<script src="/Scripts/global.js" type="text/javascript" charset="utf-8"></script>

<script src="/Scripts/commonFrontEnd.js" type="text/javascript" charset="utf-8"></script>', N'@{
    var CurrentMediaDetail = FrameworkSettings.Current.CurrentMediaDetail;
    
    if(!CurrentMediaDetail.CanRender || CurrentMediaDetail.HasADeletedParent())
    {
        <div class="alert alert-danger" role="alert">
          ONLY logged in admins and developers can see this page.
        </div>
    }
}

@Raw(CurrentMediaDetail.GetInjectHtml())', CAST(0.00 AS Decimal(18, 2)), 0, 0, CAST(N'2016-06-17T22:39:00.000' AS DateTime), NULL, N'/site-offline/', N'/page-not-found/', 1, 31536000, 5, 3, CAST(N'2012-02-08T10:55:42.713' AS DateTime), CAST(N'2018-04-13T09:53:06.710' AS DateTime))
SET IDENTITY_INSERT [dbo].[Settings] OFF
SET IDENTITY_INSERT [dbo].[Tags] ON 

INSERT [dbo].[Tags] ([ID], [Name], [Description], [SefTitle], [ThumbnailPath], [IsActive], [OrderIndex], [DateCreated], [DateLastModified]) VALUES (1, N'test', N'test', N'test', N'', 0, 0, CAST(N'2018-01-16T14:50:39.247' AS DateTime), CAST(N'2018-01-16T14:50:39.247' AS DateTime))
INSERT [dbo].[Tags] ([ID], [Name], [Description], [SefTitle], [ThumbnailPath], [IsActive], [OrderIndex], [DateCreated], [DateLastModified]) VALUES (2, N'Health', N'Health', N'health', N'', 0, 0, CAST(N'2018-01-17T14:49:35.567' AS DateTime), CAST(N'2018-01-17T14:49:35.567' AS DateTime))
SET IDENTITY_INSERT [dbo].[Tags] OFF
INSERT [dbo].[UrlRedirectRules] ([MediaDetailID], [VirtualPathToRedirect], [RedirectToUrl], [Is301Redirect]) VALUES (7, N'/sample/', N'{Link:2}', 0)
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([ID], [ProfilePhoto], [UserName], [Password], [FirstName], [LastName], [EmailAddress], [AfterLoginStartPage], [AuthenticationType], [LastLoggedInAt], [IsActive], [DateCreated], [DateLastModified]) VALUES (25, N'http://www.gravatar.com/avatar/b642b4217b34b1e8d3bd915fc65c4452.jpg?s=50', N'admin', N'[?a??????%l?3~???', N'', N'', N'test@test.com', N'', N'Forms', CAST(N'2015-12-08T14:18:13.027' AS DateTime), 1, CAST(N'2011-05-31T15:14:59.767' AS DateTime), CAST(N'2017-08-25T14:50:57.493' AS DateTime))
INSERT [dbo].[Users] ([ID], [ProfilePhoto], [UserName], [Password], [FirstName], [LastName], [EmailAddress], [AfterLoginStartPage], [AuthenticationType], [LastLoggedInAt], [IsActive], [DateCreated], [DateLastModified]) VALUES (30, N'', N'admin2', N'1_lZ?c?W??g\?J??3', N'', N'', N'admin2@admin2.com', N'', N'Forms', NULL, 1, CAST(N'2017-09-06T15:43:27.240' AS DateTime), CAST(N'2017-09-06T15:43:27.240' AS DateTime))
SET IDENTITY_INSERT [dbo].[Users] OFF
INSERT [dbo].[UsersRoles] ([UserID], [RoleID]) VALUES (25, 26)
INSERT [dbo].[UsersRoles] ([UserID], [RoleID]) VALUES (30, 20)
INSERT [dbo].[Website] ([MediaDetailID], [CodeInHead], [CodeInBody]) VALUES (218, N'', N'')
SET ANSI_PADDING ON
GO
/****** Object:  Index [Languages_uq]    Script Date: 4/13/2018 11:42:24 AM ******/
ALTER TABLE [dbo].[Languages] ADD  CONSTRAINT [Languages_uq] UNIQUE NONCLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Languages_uq2]    Script Date: 4/13/2018 11:42:24 AM ******/
ALTER TABLE [dbo].[Languages] ADD  CONSTRAINT [Languages_uq2] UNIQUE NONCLUSTERED 
(
	[CultureCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UNIQUE_UriSegment]    Script Date: 4/13/2018 11:42:24 AM ******/
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
ALTER TABLE [dbo].[Fields] ADD  CONSTRAINT [DF_Fields_UsageExample]  DEFAULT ('') FOR [UsageExample]
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
ALTER TABLE [dbo].[Fields] ADD  CONSTRAINT [DF_Fields_FieldFrontEndSubmissions]  DEFAULT ('') FOR [FrontEndSubmissions]
GO
ALTER TABLE [dbo].[Fields] ADD  CONSTRAINT [DF_Fields_IsGlobalField]  DEFAULT ((0)) FOR [IsGlobalField]
GO
ALTER TABLE [dbo].[Fields] ADD  CONSTRAINT [DF_Fields_FieldSettings]  DEFAULT ('') FOR [FieldSettings]
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
ALTER TABLE [dbo].[MediaDetails] ADD  CONSTRAINT [DF_MediaDetails_MetaRobots]  DEFAULT ('') FOR [MetaRobots]
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
ALTER TABLE [dbo].[MediaDetails] ADD  CONSTRAINT [DF_MediaDetails_CanAccessAllChildPages]  DEFAULT ((0)) FOR [CanLimitedRolesAccessAllChildPages]
GO
ALTER TABLE [dbo].[MediaDetails] ADD  CONSTRAINT [DF_MediaDetails_EnforceRoleLimitationsOnFrontEnd]  DEFAULT ((0)) FOR [EnforceRoleLimitationsOnFrontEnd]
GO
ALTER TABLE [dbo].[MediaDetails] ADD  CONSTRAINT [DF_MediaDetails_OnPublishExecuteCode]  DEFAULT ('') FOR [OnPublishExecuteCode]
GO
ALTER TABLE [dbo].[MediaDetails] ADD  CONSTRAINT [DF_MediaDetails_CSS]  DEFAULT ('') FOR [InjectHtml]
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
ALTER TABLE [dbo].[MediaTypes] ADD  CONSTRAINT [DF_MediaTypes_OnPublishExecuteCode]  DEFAULT ('') FOR [OnPublishExecuteCode]
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
ALTER TABLE [dbo].[ScheduledTasks] ADD  CONSTRAINT [DF_ScheduledTasks_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[ScheduledTasks] ADD  CONSTRAINT [DF_ScheduledTasks_DateCreated]  DEFAULT (getdate()) FOR [DateCreated]
GO
ALTER TABLE [dbo].[ScheduledTasks] ADD  CONSTRAINT [DF_ScheduledTasks_DateLastModified]  DEFAULT (getdate()) FOR [DateLastModified]
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
