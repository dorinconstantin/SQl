CREATE TRIGGER update_accessories
ON Accessories
AFTER INSERT, DELETE
AS
BEGIN
    EXEC update_count 'Accessories'
END