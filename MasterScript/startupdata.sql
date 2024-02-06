--delete tbl_EC_Category
--DBCC CHECKIDENT ('tbl_EC_Category', RESEED, 0);
--delete tbl_EC_DescriptionProduct
--DBCC CHECKIDENT ('tbl_EC_DescriptionProduct', RESEED, 0);
--delete tbl_EC_ManagerCart
--DBCC CHECKIDENT ('tbl_EC_ManagerCart', RESEED, 0);
--delete tbl_EC_ManagerCartItems
--DBCC CHECKIDENT ('tbl_EC_ManagerCartItems', RESEED, 0);
--delete tbl_EC_ManagerVendor
--DBCC CHECKIDENT ('tbl_EC_ManagerVendor', RESEED, 0);
--delete tbl_EC_Product
--DBCC CHECKIDENT ('tbl_EC_Product', RESEED, 0);
--delete tbl_EC_ProductTag
--DBCC CHECKIDENT ('tbl_EC_ProductTag', RESEED, 0);
--delete tbl_EC_SizeWeight
--DBCC CHECKIDENT ('tbl_EC_SizeWeight', RESEED, 0);
--delete tbl_EC_SizeWeightJoin
--DBCC CHECKIDENT ('tbl_EC_SizeWeightJoin', RESEED, 0);
--delete tbl_EC_User
--DBCC CHECKIDENT ('tbl_EC_User', RESEED, 0);
--delete tbl_EC_Vendor
--DBCC CHECKIDENT ('tbl_EC_Vendor', RESEED, 0);


  --drop table tbl_EC_User					
  --drop table tbl_EC_Category				
  --drop table tbl_EC_Vendor				
  --drop table tbl_EC_Product				
  --drop table tbl_EC_DescriptionProduct	
  --drop table tbl_EC_SizeWeight			
  --drop table tbl_EC_SizeWeightJoin		
  --drop table tbl_EC_ProductTag			
  --drop table tbl_EC_ManagerVendor		
  --drop table tbl_EC_ManagerCart			
  --drop table tbl_EC_ManagerCartItems	

insert into tbl_EC_Category([Name],[Description],[ImgUrl]) values('Cake','ccc','assets/imgs/shop/cat-13.png')
insert into tbl_EC_Category([Name],[Description],[ImgUrl]) values('Coffes & Teas','ctctct','assets/imgs/shop/cat-14.png')
insert into tbl_EC_Category([Name],[Description],[ImgUrl]) values('Vegetables','vvvvv','assets/imgs/shop/cat-1.png')

INSERT INTO [dbo].[tbl_EC_Vendor]
           ([Name]
           ,[ShortDescription]
           ,[DescriptionInProduct]
           ,[LogoUrl]
           ,[Since]
           ,[Rating]
           ,[Address]
           ,[CallUs]
           ,[TwitterLink]
           ,[FaceBookLink]
           ,[InsLink]
           ,[PrLink]
		   ,[RatingInProduct]
           ,[ShipOnTime]
           ,[ChatResponse])
     VALUES
           ('Nest Food.'
           ,'Got a smooth, buttery spread in your fridge? Chances are good that it''s Good Chef. This brand made Lionto''s list of the most popular grocery brands across the country.'
           ,'Noodles & Company is an American fast-casual restaurant that offers international and American noodle dishes and pasta in addition to soups and salads. Noodles & Company was founded in 1995 by Aaron Kennedy and is headquartered in Broomfield, Colorado. The company went public in 2013 and recorded a $457 million revenue in 2017.In late 2018, there were 460 Noodles & Company locations across 29 states and Washington, D.C.'
           ,'assets/imgs/vendor/vendor-18.svg'
           ,'2012'
           ,4.0
           ,'5171 W Campbell Ave undefined, Utah 53127 United States'
           ,'(+91) - 540-025-124553'
           ,'#'
           ,'#'
           ,'#'
           ,'#'
		   ,92
           ,100
           ,89)
GO
INSERT INTO [dbo].[tbl_EC_Vendor]
           ([Name]
           ,[ShortDescription]
           ,[DescriptionInProduct]
           ,[LogoUrl]
           ,[Since]
           ,[Rating]
           ,[Address]
           ,[CallUs]
           ,[TwitterLink]
           ,[FaceBookLink]
           ,[InsLink]
           ,[PrLink]
		   ,[RatingInProduct]
           ,[ShipOnTime]
           ,[ChatResponse])
     VALUES
           ('Hodo Foods'
           ,'qrwerwtesdf fqwrevfsa fqwrvasverwvawervawrefva cvqwefvqw.'
           ,'opuku,j,oopiopiolilioliljk,oih,jk,h;p;''.iohoho.i Noodles & Company was founded in 1995 by Aaron Kennedy and is headquartered in Broomfield, Colorado. The company went public in 2013 and recorded a $457 million revenue in 2017.In late 2018, there were 460 Noodles & Company locations across 29 states and Washington, D.C.'
           ,'assets/imgs/vendor/vendor-18.svg'
           ,'2014'
           ,2.0
           ,'nbnb sdawdq'
           ,'(+91) - 23-025-2324141414'
           ,'#'
           ,'#'
           ,'#'
           ,'#'
		   ,30
           ,50
           ,41)
GO


INSERT INTO [dbo].[tbl_EC_Product]
           ([Name]
           ,[CategoryId]
           ,[ShortDescription]
           ,[Price]
           ,[ImgUrl1]
           ,[ImgUrl2]
           ,[ImgUrl3]
           ,[ImgUrl4]
           ,[ImgUrl5]
           ,[ImgUrl6]
           ,[ImgUrl7]
           ,[Rating]
           ,[Type]
           ,[MFG]
           ,[LIFE]
           ,[SKU]
           ,[Tags]
           ,[StandUp]
           ,[Folded_wo]
           ,[Folded_w]
           ,[DoorPassThrough]
           ,[Frame]
           ,[Weight_wo]
           ,[WeightCapacity]
           ,[Width]
           ,[HandleHeight]
           ,[Wheels]
           ,[SeatBackHeight]
           ,[HeadRoom]
           ,[Color]
           ,[Size])
     VALUES
           ('Seeds of Change Organic Quinoa, Brown'
           ,1
           ,'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Aliquam rem officia, corrupti reiciendis minima nisi modi, quasi, odio minus dolore impedit fuga eum eligendi.'
           ,38
           ,'assets/imgs/shop/product-16-1.jpg'
           ,'assets/imgs/shop/product-16-2.jpg'
           ,'assets/imgs/shop/product-16-3.jpg'
           ,'assets/imgs/shop/product-16-4.jpg'
           ,'assets/imgs/shop/product-16-5.jpg'
           ,'assets/imgs/shop/product-16-6.jpg'
           ,'assets/imgs/shop/product-16-7.jpg'
           ,32
           ,'Organic'
           ,' Jun 4.202'
           ,' 70 days'
           ,'FWM15VKT'
           ,'Snack, Organic, Brown'
           ,'35″L x 24″W x 37-45″H(front to back wheel)'
           ,'32.5″L x 18.5″W x 16.5″H'
           ,'32.5″L x 24″W x 18.5″H'
           ,'24'
           ,'Aluminum'
           ,'20 LBS'
           ,'60 LBS'
           ,'24″'
           ,'37-45″'
           ,'12″ air / wide track slick tread'
           ,'21.5″'
           ,'25″'
           ,'Black, Blue, Red, White'
           ,'M, S')
GO
INSERT INTO [dbo].[tbl_EC_Product]
           ([Name]
           ,[CategoryId]
           ,[ShortDescription]
           ,[Price]
           ,[ImgUrl1]
           ,[ImgUrl2]
           ,[ImgUrl3]
           ,[ImgUrl4]
           ,[ImgUrl5]
           ,[ImgUrl6]
           ,[ImgUrl7]
           ,[Rating]
           ,[Type]
           ,[MFG]
           ,[LIFE]
           ,[SKU]
           ,[Tags]
           ,[StandUp]
           ,[Folded_wo]
           ,[Folded_w]
           ,[DoorPassThrough]
           ,[Frame]
           ,[Weight_wo]
           ,[WeightCapacity]
           ,[Width]
           ,[HandleHeight]
           ,[Wheels]
           ,[SeatBackHeight]
           ,[HeadRoom]
           ,[Color]
           ,[Size])
     VALUES
           ('Ulstra Bass Headphone'
           ,2
           ,'tttttttnima nisi modi, quasi, odio minus dolore impedit fuga eum eligendi.'
           ,245
           ,'assets/imgs/shop/product-16-1.jpg'
           ,'assets/imgs/shop/product-16-2.jpg'
           ,'assets/imgs/shop/product-16-3.jpg'
           ,'assets/imgs/shop/product-16-4.jpg'
           ,'assets/imgs/shop/product-16-5.jpg'
           ,'assets/imgs/shop/product-16-6.jpg'
           ,'assets/imgs/shop/product-16-7.jpg'
           ,40
           ,'qwee'
           ,'rere'
           ,'43rr'
           ,'AFDF33'
           ,'Organic, Brown'
           ,'35″L x 24″W x 37-45″H(front to back wheel)'
           ,'32.5″L x 18.5″W x 16.5″H'
           ,'32.5″L x 24″W x 18.5″H'
           ,'24'
           ,'Aluminum'
           ,'20 LBS'
           ,'60 LBS'
           ,'24″'
           ,'37-45″'
           ,'12″ air / wide track slick tread'
           ,'21.5″'
           ,'25″'
           ,'Black, Blue, Red, White'
           ,'M, S')
GO
INSERT INTO [dbo].[tbl_EC_Product]
           ([Name]
           ,[CategoryId]
           ,[ShortDescription]
           ,[Price]
           ,[ImgUrl1]
           ,[ImgUrl2]
           ,[ImgUrl3]
           ,[ImgUrl4]
           ,[ImgUrl5]
           ,[ImgUrl6]
           ,[ImgUrl7]
           ,[Rating]
           ,[Type]
           ,[MFG]
           ,[LIFE]
           ,[SKU]
           ,[Tags]
           ,[StandUp]
           ,[Folded_wo]
           ,[Folded_w]
           ,[DoorPassThrough]
           ,[Frame]
           ,[Weight_wo]
           ,[WeightCapacity]
           ,[Width]
           ,[HandleHeight]
           ,[Wheels]
           ,[SeatBackHeight]
           ,[HeadRoom]
           ,[Color]
           ,[Size])
     VALUES
           ('Seeds of Change Organic Quinoa, redd'
           ,1
           ,'Lorem ipsum dolor, sit amet consega eum eligendi.'
           ,38
           ,'assets/imgs/shop/product-16-1.jpg'
           ,'assets/imgs/shop/product-16-2.jpg'
           ,'assets/imgs/shop/product-16-3.jpg'
           ,'assets/imgs/shop/product-16-4.jpg'
           ,'assets/imgs/shop/product-16-5.jpg'
           ,'assets/imgs/shop/product-16-6.jpg'
           ,'assets/imgs/shop/product-16-7.jpg'
           ,32
           ,'Organic'
           ,' Jun 4.202'
           ,' 70 days'
           ,'FWM15VKT'
           ,'Snack, Organic, Brown'
           ,'35″L x 24″W x 37-45″H(front to back wheel)'
           ,'32.5″L x 18.5″W x 16.5″H'
           ,'32.5″L x 24″W x 18.5″H'
           ,'24'
           ,'Aluminum'
           ,'20 LBS'
           ,'60 LBS'
           ,'24″'
           ,'37-45″'
           ,'12″ air / wide track slick tread'
           ,'21.5″'
           ,'25″'
           ,'Black, Blue, Red, White'
           ,'M, S')
GO
INSERT INTO [dbo].[tbl_EC_Product]
           ([Name]
           ,[CategoryId]
           ,[ShortDescription]
           ,[Price]
           ,[ImgUrl1]
           ,[ImgUrl2]
           ,[ImgUrl3]
           ,[ImgUrl4]
           ,[ImgUrl5]
           ,[ImgUrl6]
           ,[ImgUrl7]
           ,[Rating]
           ,[Type]
           ,[MFG]
           ,[LIFE]
           ,[SKU]
           ,[Tags]
           ,[StandUp]
           ,[Folded_wo]
           ,[Folded_w]
           ,[DoorPassThrough]
           ,[Frame]
           ,[Weight_wo]
           ,[WeightCapacity]
           ,[Width]
           ,[HandleHeight]
           ,[Wheels]
           ,[SeatBackHeight]
           ,[HeadRoom]
           ,[Color]
           ,[Size])
     VALUES
           ('Seeds of Change Organic Quinoa, yrllowwwww'
           ,1
           ,'Lorem ipsum dolor'
           ,38
           ,'assets/imgs/shop/product-16-1.jpg'
           ,'assets/imgs/shop/product-16-2.jpg'
           ,'assets/imgs/shop/product-16-3.jpg'
           ,'assets/imgs/shop/product-16-4.jpg'
           ,'assets/imgs/shop/product-16-5.jpg'
           ,'assets/imgs/shop/product-16-6.jpg'
           ,'assets/imgs/shop/product-16-7.jpg'
           ,32
           ,'Organic'
           ,' Jun 4.202'
           ,' 70 days'
           ,'FWM15VKT'
           ,'Snack, Organic, Brown'
           ,'35″L x 24″W x 37-45″H(front to back wheel)'
           ,'32.5″L x 18.5″W x 16.5″H'
           ,'32.5″L x 24″W x 18.5″H'
           ,'24'
           ,'Aluminum'
           ,'20 LBS'
           ,'60 LBS'
           ,'24″'
           ,'37-45″'
           ,'12″ air / wide track slick tread'
           ,'21.5″'
           ,'25″'
           ,'Black, Blue, Red, White'
           ,'M, S')
GO


INSERT INTO [dbo].[tbl_EC_DescriptionProduct]
           ([TopMainDes]
           ,[TypeOfPacking]
           ,[Color]
           ,[QuantityPerCase]
           ,[EthylAlcohol]
           ,[PieceInOne]
           ,[BotMainDes]
           ,[PackagingAndDelivery]
           ,[SuggestedUse]
           ,[OtherIngredients]
           ,[Warnings])
     VALUES
           ('Uninhibited carnally hired played in whimpered dear gorilla koala depending and much yikes off far quetzal goodness and from for grimaced goodness unaccountably and meadowlark near unblushingly crucial scallop tightly neurotic hungrily some and dear furiously this apart. Spluttered narrowly yikes left moth in yikes bowed this that grizzly much hello on spoon-fed that alas rethought much decently richly and wow against the frequent fluidly at formidable acceptably flapped besides and much circa far over the bucolically hey precarious goldfinch mastodon goodness gnashed a jellyfish and one however because.'
           ,'Bottle'
           ,'Green, Pink, Powder Blue, Purple'
           ,'Green, Pink, Powder Blue, Purple'
           ,'70%'
           ,'Carton'
           ,'Laconic overheard dear woodchuck wow this outrageously taut beaver hey hello far meadowlark imitatively egregiously hugged that yikes minimally unanimous pouted flirtatiously as beaver beheld above forward energetic across this jeepers beneficently cockily less a the raucously that magic upheld far so the this where crud then below after jeez enchanting drunkenly more much wow callously irrespective limpet.'
           ,'Less lion goodness that euphemistically robin expeditiously bluebird smugly scratched far while thus cackled sheepishly rigid after due one assenting regarding censorious while occasional or this more crane went more as this less much amid overhung anathematic because much held one exuberantly sheep goodness so where rat wry well concomitantly.
				Scallop or far crud plain remarkably far by thus far iguana lewd precociously and and less rattlesnake contrary caustic wow this near alas and next and pled the yikes articulate about as less cackled dalmatian in much less well jeering for the thanks blindly sentimental whimpered less across objectively fanciful grimaced wildly some wow and rose jeepers outgrew lugubrious luridly irrationally attractively dachshund.'
           ,'Refrigeration not necessary.
				Stir before serving'
           ,'Organic raw pecans, organic raw cashews.
				This butter was produced using a LTG (Low Temperature Grinding) process
				Made in machinery that processes tree nuts but does not process peanuts, gluten, dairy or soy'
           ,'Oil separation occurs naturally. May contain pieces of shell.')
GO



INSERT INTO [dbo].[tbl_EC_SizeWeight]([Name]) VALUES('50')
INSERT INTO [dbo].[tbl_EC_SizeWeight]([Name]) VALUES('60')
INSERT INTO [dbo].[tbl_EC_SizeWeight]([Name]) VALUES('80')
INSERT INTO [dbo].[tbl_EC_SizeWeight]([Name]) VALUES('100')
INSERT INTO [dbo].[tbl_EC_SizeWeight]([Name]) VALUES('150')
GO

INSERT INTO [dbo].[tbl_EC_SizeWeightJoin]([ProductID],[SizeWeightID]) VALUES(1,1)
INSERT INTO [dbo].[tbl_EC_SizeWeightJoin]([ProductID],[SizeWeightID]) VALUES(2,2)
GO

INSERT INTO [dbo].[tbl_EC_ProductTag]([Content],[State]) VALUES('hot','hot')
INSERT INTO [dbo].[tbl_EC_ProductTag]([Content],[State]) VALUES('sale','sale')
INSERT INTO [dbo].[tbl_EC_ProductTag]([Content],[State]) VALUES('new','new')
INSERT INTO [dbo].[tbl_EC_ProductTag]([Content],[State]) VALUES('-14%','best')
GO

INSERT INTO [dbo].[tbl_EC_ManagerVendor]
           ([ProductId]
           ,[VendorId]
           ,[InStockQuantity]
           ,[SizeWeightJoinID]
           ,[PriceSell]
           ,[ProductTagID]
           ,[DiscountPercent]
           ,[PriceDiscount]
           ,[InStore]
           ,[CreateDate]
           ,[DealsOfDayPromotion]
           ,[PromoCountDownDate])
     VALUES
           (1
           ,1
           ,50
           ,1
           ,44
           ,1
           ,16
           ,62
           ,1
           ,'2024-02-06'
           ,1
           ,'2024-03-06')
GO

INSERT INTO [dbo].[tbl_EC_ManagerVendor]
           ([ProductId]
           ,[VendorId]
           ,[InStockQuantity]
           ,[SizeWeightJoinID]
           ,[PriceSell]
           ,[ProductTagID]
           ,[DiscountPercent]
           ,[PriceDiscount]
           ,[InStore]
           ,[CreateDate]
           ,[DealsOfDayPromotion]
           ,[PromoCountDownDate])
     VALUES
           (2
           ,2
           ,40
           ,1
           ,77
           ,2
           ,20
           ,104
           ,1
           ,'2024-02-06'
           ,1
           ,'2024-04-06')
GO
INSERT INTO [dbo].[tbl_EC_ManagerVendor]
           ([ProductId]
           ,[VendorId]
           ,[InStockQuantity]
           ,[SizeWeightJoinID]
           ,[PriceSell]
           ,[ProductTagID]
           ,[DiscountPercent]
           ,[PriceDiscount]
           ,[InStore]
           ,[CreateDate]
           ,[DealsOfDayPromotion]
           ,[PromoCountDownDate])
     VALUES
           (3
           ,1
           ,80
           ,1
           ,104
           ,1
           ,20
           ,128
           ,1
           ,'2024-02-06'
           ,1
           ,'2024-03-20')
GO
INSERT INTO [dbo].[tbl_EC_ManagerVendor]
           ([ProductId]
           ,[VendorId]
           ,[InStockQuantity]
           ,[SizeWeightJoinID]
           ,[PriceSell]
           ,[ProductTagID]
           ,[DiscountPercent]
           ,[PriceDiscount]
           ,[InStore]
           ,[CreateDate]
           ,[DealsOfDayPromotion]
           ,[PromoCountDownDate])
     VALUES
           (4
           ,2
           ,70
           ,1
           ,14
           ,3
           ,15
           ,20
           ,1
           ,'2024-02-06'
           ,1
           ,'2024-03-15')
GO

INSERT INTO [dbo].[tbl_EC_ManagerCart]
           ([SubTotal]
           ,[Shipping]
           ,[EstimateFor]
           ,[Total])
     VALUES
           (5000
           ,100
           ,'United Kingdom'
           ,5100)
GO

INSERT INTO [dbo].[tbl_EC_ManagerCartItems]
           ([ManagerCartId]
           ,[ProductId]
           ,[Quantity])
     VALUES
           (1
           ,1
           ,2)
GO

INSERT INTO [dbo].[tbl_EC_ManagerCartItems]
           ([ManagerCartId]
           ,[ProductId]
           ,[Quantity])
     VALUES
           (2
           ,2
           ,3)
GO

