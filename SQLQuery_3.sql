CREATE TRIGGER update_1
ON Clothes
AFTER INSERT, DELETE
AS
BEGIN
    EXEC update_count 'Clothes'
END