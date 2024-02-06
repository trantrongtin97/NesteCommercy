INSERT INTO dbo.tblScriptVersion
(
    ScriptName,
    ScriptVersion,
    DateRun,
    [FileName]
)
VALUES
('proc_EC_ProductListPage', 
  '1.0', 
  GETDATE(),
 'proc_EC_ProductListPage_v1.0');
GO
/*-------------------------------------------------------------------------*----------------------------------------------------------------------*/

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
	@SortBy VARCHAR(MAX) = ''
)        
AS        
/*              
|--------------------------------------------------------------------------|              
| Name:     proc_EC_ProductListPage                                                  
|              
| Date:     02/06/2024         
| Version:  1.1       
|--------------------------------------------------------------------------|              
| Purpose:  Populates the Product List        
|                           
| Input Parameters: 
|	  @Skip INT       
|	  @Take INT 
|     @SortBy
|                                  
|--------------------------------------------------------------------------|              
|         Copyright (c) 2024                                                                            
|--------------------------------------------------------------------------|              
| Modifications: 
|     1.0 - 02/06/2024 TTT
|           Original version 
|--------------------------------------------------------------------------|              
*/        
        
BEGIN 
WITH MaxWorkingItem AS 
(
	SELECT * FROM tbl_EC_ManagerVendor mp
	INNER JOIN tbl_EC_Product p 
	ON p.Id = mp.ProductId
	LEFT JOIN tbl_EC_Category c 
	ON c.Id = p.CategoryId
	LEFT JOIN tbl_EC_Vendor v 
	ON v.Id = mp.VendorId
	LEFT JOIN tbl_EC_ProductTag pt
	ON pt.Id = mp.ProductTagID
) 
SELECT *
FROM
    
	--ORDER BY 
	--OFFSET @Skip ROWS      
	--FETCH NEXT @Take ROWS ONLY;              
END; 