CREATE TABLE [Currency_stg](
	[CurrencyCode] [nchar](3) NOT NULL,
	[Name] [nvarchar](50) NOT NULL
	
)	

CREATE TABLE [SalesTerritory_stg](
	[Name] [nvarchar](50) NOT NULL,
	[CountryRegionCode] [nvarchar](3) NOT NULL,
	[Group] [nvarchar](50) NOT NULL
)

CREATE TABLE [ProductCostHistory_stg](
[ProductID] [int] NOT NULL,
[StartDate] [datetime] NOT NULL,
[EndDate] [datetime] NULL,
[StandardCost] [money] NOT NULL)
--[ModifiedDate] [datetime] NOT NULL)


CREATE TABLE [ProductModel_stg](
--[ProductModelID] [int] IDENTITY(1,1) NOT NULL,
[Name] [nvarchar](50) NOT NULL
--[CatalogDescription] [xml](CONTENT [Production].[ProductDescriptionSchemaCollection]) NULL,
--[Instructions] [xml](CONTENT [Production].[ManuInstructionsSchemaCollection]) NULL,
--[rowguid] [uniqueidentifier] ROWGUIDCOL NOT NULL,
--[ModifiedDate] [datetime] NOT NULL)
)

CREATE TABLE [ProductSubcategory_stg](
[ProductSubcategoryID] [int] NOT NULL,
[ProductCategoryID] [int] NOT NULL,
[Name] [nvarchar](50) NOT NULL
--[rowguid] [uniqueidentifier] ROWGUIDCOL NOT NULL,
--[ModifiedDate] [datetime] NOT NULL)
)

CREATE TABLE [ProductCategory_stg](
[ProductCategoryID] [int]  NOT NULL,
[Name]  [nvarchar](50) NOT NULL
--[rowguid] [uniqueidentifier] ROWGUIDCOL NOT NULL,
--[ModifiedDate] [datetime] NOT NULL)
)


CREATE TABLE [Product_stg](
[ProductID] [int] NOT NULL,
[Name] [nvarchar](50) NOT NULL,
--[ProductNumber] [nvarchar](25) NOT NULL,
--[MakeFlag] [dbo].[Flag] NOT NULL,
[FinishedGoodsFlag] [nvarchar](50) NOT NULL,
--[Color] [nvarchar](15) NULL,
[SafetyStockLevel] [smallint] NOT NULL,
[ReorderPoint] [smallint] NOT NULL,
[StandardCost] [money] NOT NULL,
[ListPrice] [money] NOT NULL,
[Size] [nvarchar](5) NULL,
--[SizeUnitMeasureCode] [nchar](3) NULL,
--[WeightUnitMeasureCode] [nchar](3) NULL,
[Weight] [decimal](8, 2) NULL,
[DaysToManufacture] [int] NOT NULL,
[ProductLine] [nchar](2) NULL
--[Class] [nchar](2) NULL,
--[Style] [nchar](2) NULL,
--[ProductSubcategoryID] [int] NULL,
--[ProductModelID] [int] NULL,
--[SellStartDate] [datetime] NOT NULL,
--[SellEndDate] [datetime] NULL,
--[DiscontinuedDate] [datetime] NULL,
--[rowguid] [uniqueidentifier] ROWGUIDCOL NOT NULL,
--[ModifiedDate] [datetime] NOT NULL
)


CREATE TABLE [Person_stg](
[BusinessEntityID] [int] NOT NULL,
--[PersonType] [nchar](2) NOT NULL,
--[NameStyle] [dbo].[NameStyle] NOT NULL,
--[Title] [nvarchar](8) NULL,
[FirstName] [nvarchar](50) NOT NULL,
--[MiddleName] [dbo].[Name] NULL,
[LastName] [nvarchar](50) NOT NULL,
--[Suffix] [nvarchar](10) NULL,
--[EmailPromotion] [int] NOT NULL,
--[AdditionalContactInfo] [xml](CONTENT [Person].[AdditionalContactInfoSchemaCollection]) NULL,
--[Demographics] [xml](CONTENT [Person].[IndividualSurveySchemaCollection]) NULL,
--[rowguid] [uniqueidentifier] ROWGUIDCOL NOT NULL,
--[ModifiedDate] [datetime] NOT NULL
)

CREATE TABLE [EmailAddress_stg](
[BusinessEntityID] [int] NOT NULL,
--[EmailAddressID] [int] IDENTITY(1,1) NOT NULL,
[EmailAddress] [nvarchar](50) NULL
--[rowguid] [uniqueidentifier] ROWGUIDCOL NOT NULL,
--[ModifiedDate] [datetime] NOT NULL,
)

CREATE TABLE [Address_stg](
[AddressID] [int]  NOT NULL,
[AddressLine1] [nvarchar](60) NOT NULL,
--[AddressLine2] [nvarchar](60) NULL,
--[City] [nvarchar](30) NOT NULL,
--[StateProvinceID] [int] NOT NULL,
--[PostalCode] [nvarchar](15) NOT NULL,
--[SpatialLocation] [geography] NULL,
--[rowguid] [uniqueidentifier] ROWGUIDCOL NOT NULL,
--[ModifiedDate] [datetime] NOT NULL,
)

CREATE TABLE [SpecialOffer_stg](
[SpecialOfferID] [int]  NOT NULL,
--[Description] [nvarchar](255) NOT NULL,
[DiscountPct] [smallmoney] NOT NULL,
[Type] [nvarchar](50) NOT NULL,
[Category] [nvarchar](50) NOT NULL,
[StartDate] [datetime] NOT NULL,
[EndDate] [datetime] NOT NULL,
[MinQty] [int] NOT NULL,
[MaxQty] [int] NULL
--[rowguid] [uniqueidentifier] ROWGUIDCOL NOT NULL,
--[ModifiedDate] [datetime] NOT NULL,
)

CREATE TABLE [SalesReason_stg](
[SalesReasonID] [int]  NOT NULL,
[Name]  [nvarchar](50) NOT NULL,
[ReasonType]  [nvarchar](50) NOT NULL
--[ModifiedDate] [datetime] NOT NULL,
)