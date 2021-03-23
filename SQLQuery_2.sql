CREATE PROCEDURE update_count @item_type nvarchar(100)
AS
    declare @quantity Int
    set @quantity = 0
    if(@item_type = 'Clothes')
        BEGIN
            select @quantity = count(*) from Clothes
            UPDATE Inventory set quantity = @quantity where id=1 
        END
    if(@item_type = 'Accessories')
        BEGIN
            select @quantity = count(*) from Accessories
            UPDATE Inventory set quantity    = @quantity where id=3
        END
    if(@item_type = 'Magazines')
        BEGIN
             select @quantity = count(*) from Magazines
             UPDATE Inventory set quantity = @quantity where id=2 
        END
  
GO