
IF EXISTS
(
    SELECT *
    FROM sys.objects
    WHERE objects.object_id = OBJECT_ID(N'[dbo].[proc_EC_ProductListPage]')
          AND objects.type IN ( N'P', N'PC' )
)
BEGIN
    DROP PROC dbo.proc_EC_ProductListPage;
END;
GO

CREATE PROCEDURE [dbo].[proc_EC_ProductListPage]        
(              
	@Skip INT = 0,      
	@Take INT = 10,
	@SortBy INT = 0
)        
AS        
/*              
|--------------------------------------------------------------------------|              
| Name:     proc_EC_ProductListPage                                                  
|              
| Date:     02/06/2024         
| Version:  1.0      
|--------------------------------------------------------------------------|              
| Purpose:  Populates the Product List        
|                           
| Input Parameters: 
|	  @Skip INT       
|	  @Take INT 
|     @SortBy INT
|			0: ID DESC
|			1: Price ASC
|			2: Price DESC
|			3: ProductName ASC
|			4: ProductName DESC
|                                  
|--------------------------------------------------------------------------|              
| Modifications: 
|     1.0 - 02/06/2024 TTT
|           Original version 
|--------------------------------------------------------------------------|              
*/        
        
BEGIN 

CREATE TABLE #TempTable(
	Id INT,
	ProductName VARCHAR(500),
	CategoryId INT,
	CategoryName VARCHAR(500),
	Rating FLOAT,
	VendorId INT,
	VendorName VARCHAR(500),
	InStockQuantity INT,
	Price MONEY,
	DiscountPrice MONEY,
	ContentTag VARCHAR(100),
	StateTag VARCHAR(10),
	ImgUrl1  VARCHAR(MAX),
	ImgUrl2  VARCHAR(MAX),
	PromoCountDownDate DATETIME,
);

WITH Result AS 
(
	SELECT mp.ProductId AS Id,
			p.Name AS ProductName,
			c.Id AS CategoryId,
			c.Name AS CategoryName,
			p.Rating AS Rating,
			mp.VendorId AS VendorId,
			v.Name AS VendorName,
			mp.InStockQuantity AS InStockQuantity,
			mp.PriceSell AS Price,
			mp.PriceDiscount AS DiscountPrice,
			pt.Content AS ContentTag,
			pt.State AS StateTag,
			p.ImgUrl1 AS ImgUrl1,
			p.ImgUrl2 AS ImgUrl2,
			mp.PromoCountDownDate AS PromoCountDownDate
	FROM tbl_EC_ManagerVendor mp
	INNER JOIN tbl_EC_Product p 
		ON p.Id = mp.ProductId
	LEFT JOIN tbl_EC_Category c 
		ON c.Id = p.CategoryId
	LEFT JOIN tbl_EC_Vendor v 
		ON v.Id = mp.VendorId
	LEFT JOIN tbl_EC_ProductTag pt
		ON pt.Id = mp.ProductTagID
) 
INSERT INTO #TempTable
SELECT *
FROM Result
ORDER BY Id DESC
OFFSET @Skip ROWS      
FETCH NEXT @Take ROWS ONLY; 

If(@SortBy = 0)
	BEGIN
		SELECT * FROM #TempTable
	END
ELSE If(@SortBy = 1)
	BEGIN
		SELECT * FROM #TempTable
		ORDER BY Price ASC
	END
ELSE If(@SortBy = 2)
	BEGIN
		SELECT * FROM #TempTable
		ORDER BY Price DESC 
	END
ELSE If(@SortBy = 3)
	BEGIN
		SELECT * FROM #TempTable
		ORDER BY ProductName ASC 
	END
ELSE If(@SortBy = 4)
	BEGIN
		SELECT * FROM #TempTable
		ORDER BY ProductName DESC 
	END
END; 