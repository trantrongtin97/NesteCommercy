--/*    
--|--------------------------------------------------------------------------|    
--| Name:     TTTMasterScript_Install_NesteCommercy
--|    
--| Date:     02/04/2024
--| Version:  1.0
--|--------------------------------------------------------------------------|    
--| Purpose:  Set up database without Migrations for NesteCommercy
--|                                                                                   
--|--------------------------------------------------------------------------|    
--| Modifications:     
--|     1.0 - 02/04/2024 ttt: Original ver
--|--------------------------------------------------------------------------|  

--*/
--/***************************************************************************
--/	1.	tbl_EC_User												**
--/	2.	tbl_EC_Category											**
--/	3.	tbl_EC_Vendor											**
--/	4.	tbl_EC_Product											**
--/	5.	tbl_EC_DescriptionProduct								**
--/	6.	tbl_EC_SizeWeight										**
--/	7.	tbl_EC_SizeWeightJoin									**
--/	8.	tbl_EC_ProductTag										**
--/	9.	tbl_EC_ManagerVendor									**
--/	10.	tbl_EC_ManagerCart										**
--/	11.	tbl_EC_ManagerCartItems									**
--/***************************************************************************/
--/*********************************************************************/
--/**********************************************************/
--/****************************************************/
--/******************************************/

--/************************************************************************* tbl_EC_User **************************
IF NOT EXISTS
(
    SELECT *
    FROM sys.objects
    WHERE objects.object_id = OBJECT_ID(N'[dbo].[tbl_EC_User]')
          AND objects.type IN ( N'U' )
)
BEGIN
    CREATE TABLE [dbo].[tbl_EC_User]
    (
        [Id] INT IDENTITY(1, 1) NOT NULL,
		[Username] VARCHAR(50) NOT NULL,
		[Password] VARCHAR(MAX) NOT NULL,
		[FirstName] VARCHAR(200) NULL,
		[LastName] VARCHAR(200) NULL,
		[ProfilePictureUrl] VARCHAR(MAX) NULL,
		[DateOfBirth] DATETIME NULL,
		[Theme] INT NULL,
		[CreatedDate] DATETIME NULL,
		[Role] VARCHAR(500) NULL,
        CONSTRAINT [PK_tbl_EC_User]
            PRIMARY KEY CLUSTERED ([ID] ASC)
            WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON,
                  ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF
                 ) ON [PRIMARY]
    ) ON [PRIMARY];
END;
GO

--/************************************************************************* tbl_EC_Category **************************
IF NOT EXISTS
(
    SELECT *
    FROM sys.objects
    WHERE objects.object_id = OBJECT_ID(N'[dbo].[tbl_EC_Category]')
          AND objects.type IN ( N'U' )
)
BEGIN
    CREATE TABLE [dbo].[tbl_EC_Category]
    (
        [Id] INT IDENTITY(1, 1) NOT NULL,
		[Name] VARCHAR(500) NOT NULL,
		[Description] VARCHAR(MAX) NULL,
		[ImgUrl] VARCHAR(MAX) NULL,
        CONSTRAINT [PK_tbl_EC_Category]
            PRIMARY KEY CLUSTERED ([ID] ASC)
            WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON,
                  ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF
                 ) ON [PRIMARY]
    ) ON [PRIMARY];
END;
GO
--/************************************************************************* tbl_EC_Vendor **************************
IF NOT EXISTS
(
    SELECT *
    FROM sys.objects
    WHERE objects.object_id = OBJECT_ID(N'[dbo].[tbl_EC_Vendor]')
          AND objects.type IN ( N'U' )
)
BEGIN
    CREATE TABLE [dbo].[tbl_EC_Vendor]
    (
        [Id] INT IDENTITY(1, 1) NOT NULL,
		[Name] VARCHAR(500),
		[ShortDescription] VARCHAR(MAX),
		[DescriptionInProduct] VARCHAR(MAX),
		[LogoUrl] VARCHAR(MAX) NULL,
		[Since] VARCHAR(MAX) NULL,
		[Rating] FLOAT NULL,
		[Address] VARCHAR(MAX) NULL,
		[CallUs] VARCHAR(MAX) NULL,
		[TwitterLink] VARCHAR(MAX) NULL,
		[FaceBookLink] VARCHAR(MAX) NULL,
		[InsLink] VARCHAR(MAX) NULL,
		[PrLink] VARCHAR(MAX) NULL,
		[RatingInProduct] FLOAT NULL,
		[ShipOnTime] FLOAT NULL,
		[ChatResponse] FLOAT NULL,
        CONSTRAINT [PK_tbl_EC_Vendor]
            PRIMARY KEY CLUSTERED ([ID] ASC)
            WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON,
                  ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF
                 ) ON [PRIMARY]
    ) ON [PRIMARY];
END;
GO
--/************************************************************************* tbl_EC_Product **************************
IF NOT EXISTS
(
    SELECT *
    FROM sys.objects
    WHERE objects.object_id = OBJECT_ID(N'[dbo].[tbl_EC_Product]')
          AND objects.type IN ( N'U' )
)
BEGIN
    CREATE TABLE [dbo].[tbl_EC_Product]
    (
        [Id] INT IDENTITY(1, 1) NOT NULL,
		[Name] VARCHAR(500) NOT NULL,
		[CategoryId] INT NOT NULL,
		[ShortDescription] VARCHAR(MAX) NULL,
		[Price] MONEY NULL,
		[ImgUrl1] VARCHAR(MAX) NULL,
		[ImgUrl2] VARCHAR(MAX) NULL,
		[ImgUrl3] VARCHAR(MAX) NULL,
		[ImgUrl4] VARCHAR(MAX) NULL,
		[ImgUrl5] VARCHAR(MAX) NULL,
		[ImgUrl6] VARCHAR(MAX) NULL,
		[ImgUrl7] VARCHAR(MAX) NULL,
		[Rating] FLOAT NULL,
		[Type] VARCHAR(500) NULL,
		[MFG] VARCHAR(500) NULL,
		[LIFE] VARCHAR(500) NULL,
		[SKU] VARCHAR(500) NULL,
		[Tags] VARCHAR(500) NULL,
		[StandUp] VARCHAR(500) NULL,
		[Folded_wo] VARCHAR(500) NULL,
		[Folded_w] VARCHAR(500) NULL,
		[DoorPassThrough] VARCHAR(500) NULL,
		[Frame] VARCHAR(500) NULL,
		[Weight_wo] VARCHAR(500) NULL,
		[WeightCapacity] VARCHAR(500) NULL,
		[Width] VARCHAR(500) NULL,
		[HandleHeight] VARCHAR(500) NULL,
		[Wheels] VARCHAR(500) NULL,
		[SeatBackHeight] VARCHAR(500) NULL,
		[HeadRoom] VARCHAR(500) NULL,
		[Color] VARCHAR(500) NULL,
		[Size] VARCHAR(500) NULL,
        CONSTRAINT [PK_tbl_EC_Product]
            PRIMARY KEY CLUSTERED ([ID] ASC)
            WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON,
                  ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF
                 ) ON [PRIMARY]
    ) ON [PRIMARY];
END;
GO
--/************************************************************************* tbl_EC_DescriptionProduct **************************
IF NOT EXISTS
(
    SELECT *
    FROM sys.objects
    WHERE objects.object_id = OBJECT_ID(N'[dbo].[tbl_EC_DescriptionProduct]')
          AND objects.type IN ( N'U' )
)
BEGIN
    CREATE TABLE [dbo].[tbl_EC_DescriptionProduct]
    (
        [Id] INT IDENTITY(1, 1) NOT NULL,
		[TopMainDes] VARCHAR(MAX) NULL,
		[TypeOfPacking] VARCHAR(500) NULL,
		[Color] VARCHAR(500) NULL,
		[QuantityPerCase] VARCHAR(500) NULL,
		[EthylAlcohol] VARCHAR(500) NULL,
		[PieceInOne] VARCHAR(500) NULL,
		[BotMainDes] VARCHAR(MAX) NULL,
		[PackagingAndDelivery] VARCHAR(MAX) NULL,
		[SuggestedUse] VARCHAR(MAX) NULL,
		[OtherIngredients] VARCHAR(MAX) NULL,
		[Warnings] VARCHAR(MAX) NULL,
        CONSTRAINT [PK_tbl_EC_DescriptionProduct]
            PRIMARY KEY CLUSTERED ([ID] ASC)
            WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON,
                  ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF
                 ) ON [PRIMARY]
    ) ON [PRIMARY];
END;
GO
--/************************************************************************* tbl_EC_SizeWeight **************************
IF NOT EXISTS
(
    SELECT *
    FROM sys.objects
    WHERE objects.object_id = OBJECT_ID(N'[dbo].[tbl_EC_SizeWeight]')
          AND objects.type IN ( N'U' )
)
BEGIN
    CREATE TABLE [dbo].[tbl_EC_SizeWeight]
    (
        [Id] INT IDENTITY(1, 1) NOT NULL,
		[Name] VARCHAR(20) NOT NULL,
        CONSTRAINT [PK_tbl_EC_SizeWeight]
            PRIMARY KEY CLUSTERED ([ID] ASC)
            WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON,
                  ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF
                 ) ON [PRIMARY]
    ) ON [PRIMARY];
END;
GO
--/************************************************************************* tbl_EC_SizeWeightJoin **************************
IF NOT EXISTS
(
    SELECT *
    FROM sys.objects
    WHERE objects.object_id = OBJECT_ID(N'[dbo].[tbl_EC_SizeWeightJoin]')
          AND objects.type IN ( N'U' )
)
BEGIN
    CREATE TABLE [dbo].[tbl_EC_SizeWeightJoin]
    (
        [Id] INT IDENTITY(1, 1) NOT NULL,
		[ProductID] INT NOT NULL,
		[SizeWeightID] INT NOT NULL,
        CONSTRAINT [PK_tbl_EC_SizeWeightJoin]
            PRIMARY KEY CLUSTERED ([ID] ASC)
            WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON,
                  ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF
                 ) ON [PRIMARY]
    ) ON [PRIMARY];
END;
GO
--/************************************************************************* tbl_EC_ProductTag **************************
IF NOT EXISTS
(
    SELECT *
    FROM sys.objects
    WHERE objects.object_id = OBJECT_ID(N'[dbo].[tbl_EC_ProductTag]')
          AND objects.type IN ( N'U' )
)
BEGIN
    CREATE TABLE [dbo].[tbl_EC_ProductTag]
    (
        [Id] INT IDENTITY(1, 1) NOT NULL,
		[Content] VARCHAR(100) NOT NULL,
		[State] VARCHAR(10) NOT NULL,
        CONSTRAINT [PK_tbl_EC_ProductTag]
            PRIMARY KEY CLUSTERED ([ID] ASC)
            WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON,
                  ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF
                 ) ON [PRIMARY]
    ) ON [PRIMARY];
END;
GO
--/************************************************************************* tbl_EC_ManagerVendor **************************
IF NOT EXISTS
(
    SELECT *
    FROM sys.objects
    WHERE objects.object_id = OBJECT_ID(N'[dbo].[tbl_EC_ManagerVendor]')
          AND objects.type IN ( N'U' )
)
BEGIN 
    CREATE TABLE [dbo].[tbl_EC_ManagerVendor]
    (
        [Id] INT IDENTITY(1, 1) NOT NULL,
		[ProductId] INT NOT NULL UNIQUE,
		[VendorId] INT NOT NULL,
		[InStockQuantity] INT NOT NULL,
		[SizeWeightJoinID] INT NOT NULL,
		[PriceSell] MONEY NOT NULL,
		[ProductTagID] INT NULL,
		[DiscountPercent] INT NULL,
		[PriceDiscount] MONEY NULL,
		[InStore] INT NULL, --Null,0: disable,1: enable
		[CreateDate] DATETIME NULL,
		[DealsOfDayPromotion] INT NULL, --Null,0: disable,1: enable,defaul: 0,null
		[PromoCountDownDate] DATETIME NULL,
		[DescriptionProductId] INT NULL,
        CONSTRAINT [PK_tbl_EC_ManagerVendor]
            PRIMARY KEY CLUSTERED ([ID] ASC)
            WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON,
                  ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF
                 ) ON [PRIMARY]
    ) ON [PRIMARY];
END;
GO
--/************************************************************************* tbl_EC_ManagerCart **************************
IF NOT EXISTS
(
    SELECT *
    FROM sys.objects
    WHERE objects.object_id = OBJECT_ID(N'[dbo].[tbl_EC_ManagerCart]')
          AND objects.type IN ( N'U' )
)
BEGIN
    CREATE TABLE [dbo].[tbl_EC_ManagerCart]
    (
        [Id] INT IDENTITY(1, 1) NOT NULL,
		[SubTotal] MONEY NOT NULL,
		[Shipping] MONEY NOT NULL,
		[EstimateFor] VARCHAR(500) NULL,
		[Total] MONEY NOT NULL,
        CONSTRAINT [PK_tbl_EC_ManagerCart]
            PRIMARY KEY CLUSTERED ([ID] ASC)
            WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON,
                  ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF
                 ) ON [PRIMARY]
    ) ON [PRIMARY];
END;
GO
--/************************************************************************* tbl_EC_ManagerCartItems **************************
IF NOT EXISTS
(
    SELECT *
    FROM sys.objects
    WHERE objects.object_id = OBJECT_ID(N'[dbo].[tbl_EC_ManagerCartItems]')
          AND objects.type IN ( N'U' )
)
BEGIN
    CREATE TABLE [dbo].[tbl_EC_ManagerCartItems]
    (
        [Id] INT IDENTITY(1, 1) NOT NULL,
		[ManagerCartId] INT NOT NULL UNIQUE,
		[ProductId] INT NOT NULL UNIQUE,
		[Quantity] INT NOT NULL,
		[SizeWeightJoinID] INT NOT NULL,
        CONSTRAINT [PK_tbl_EC_ManagerCartItems]
            PRIMARY KEY CLUSTERED ([ID] ASC)
            WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON,
                  ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF
                 ) ON [PRIMARY]
    ) ON [PRIMARY];
END;
GO

