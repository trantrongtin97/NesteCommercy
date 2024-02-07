
IF EXISTS
(
    SELECT *
    FROM sys.objects
    WHERE objects.object_id = OBJECT_ID(N'[dbo].[proc_EC_CountProductListPage]')
          AND objects.type IN ( N'P', N'PC' )
)
BEGIN
    DROP PROC dbo.proc_EC_CountProductListPage;
END;
GO

CREATE PROCEDURE [dbo].[proc_EC_CountProductListPage]              
AS        
/*              
|--------------------------------------------------------------------------|              
| Name:     proc_EC_CountProductListPage                                                  
|              
| Date:     02/06/2024         
| Version:  1.0      
|--------------------------------------------------------------------------|              
| Purpose:  Count the Product List        
|                                  
|--------------------------------------------------------------------------|              
| Modifications: 
|     1.0 - 02/06/2024 TTT
|           Original version 
|--------------------------------------------------------------------------|              
*/        
        
BEGIN 

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
SELECT COUNT(*)
FROM Result
END;