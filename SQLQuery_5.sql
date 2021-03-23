CREATE TRIGGER update_magazines
ON Magazines
AFTER INSERT, DELETE
AS
BEGIN
    EXEC update_count 'Magazines'
END