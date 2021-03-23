BEGIN TRANSACTION
    CREATE TABLE Inventory(
        id int not null identity(1,1) primary key,
        item_name varchar(100) not null,
        quantity int not null default 0
    );

    INSERT INTO Inventory (item_name,quantity) VALUES('Clothes',0)
    INSERT INTO Inventory (item_name,quantity) VALUES ('Magazines',0)
    INSERT INTO Inventory (item_name,quantity) VALUES('Accessories',0)


    CREATE TABLE  Items(
        id int NOT NULL IDENTITY(1,1) primary key ,
        name varchar(100) default 'item',
        price decimal check (price>=0) ,
        item_type int  foreign key references Inventory(id),
    
    );

       INSERT INTO Items ( name,price, item_type)  VALUES('T-Shirt',5.66, 1),
       INSERT INTO Items ( name,price, item_type)  VALUES ('Trousers', 12, 1),
       INSERT INTO Items ( name,price, item_type)  VALUES('Jacket', 2.44, 1),
       INSERT INTO Items ( name,price, item_type)  VALUES ('Shoks', 5.5, 1),
       INSERT INTO Items ( name,price, item_type)  VALUES ('Head-cap', 1.4, 1);

       INSERT INTO items ( name,price, type)  VALUES('Five Gear', 5.4, 2),
       INSERT INTO items ( name,price, type)  VALUES ('As', 3.66, 2),
       INSERT INTO items ( name,price, type)  VALUES ('Nw', 2.1, 2),
       INSERT INTO items ( name,price, type)  VALUES('Zoo', 1.4, 2),
       INSERT INTO items ( name,price, type)  VALUES ('Zet', 3.4, 2);
       
       INSERT INTO Items ( name,price, item_type) VALUES ('Rings', 23, 3)
       INSERT INTO Items ( name,price, item_type) VALUES ('Bracelet', 33.66, 3)
       INSERT INTO Items ( name,price, item_type) VALUES ('Saphire-Rings', 33, 3)
       INSERT INTO Items ( name,price, item_type) VALUES ('Silver-rings', 7, 3)
       INSERT INTO Items ( name,price, item_type) VALUES ('Watch Strap', 9, 3)
    
    CREATE TABLE Clothes(
        id int NOT NULL IDENTITY(1,1) primary key ,
        fabric varchar(255) default null,
        size int,
        item_id int not null foreign key references items(id)
    );
        INSERT INTO Clothes ( fabric, size, item_id) VALUES('Cotton', 6, 1)
         INSERT INTO Clothes ( fabric, size, item_id) VALUES       ('Linen', 7, 1)
        INSERT INTO Clothes ( fabric, size, item_id) VALUES        ('Voile', 8, 1)
         INSERT INTO Clothes ( fabric, size, item_id) VALUES       ('Organdie', 4, 1)
         INSERT INTO Clothes ( fabric, size, item_id) VALUES       ('Tulle', 8, 1)

    CREATE TABLE Accessories(
        id int NOT NULL IDENTITY(1,1) primary key ,
        color varchar(255) default null,
        item_id int not null foreign key references items(id)
    );

    INSERT INTO Accessories (color, item_id) VALUES('Yellow', 1),
    INSERT INTO Accessories (color, item_id) VALUES('Brown',2),
    INSERT INTO Accessories (color, item_id) VALUES('Green', 3),
    INSERT INTO Accessories (color, item_id) VALUES('Blue',4),
    INSERT INTO Accessories (color, item_id) VALUES('Orange',5);
    
    CREATE TABLE Magazines(
        id int NOT NULL IDENTITY(1,1) primary key ,
        item_type varchar(255) default null,
        item_id int not null foreign key references items(id),
    );

     INSERT INTO Magazines (item_type, item_id) VALUES('Comic', 7),
     INSERT INTO Magazines (item_type, item_id) VALUES   ('Drama',7),
      INSERT INTO Magazines (item_type, item_id) VALUES  ('Sport', 7),
     INSERT INTO Magazines (item_type, item_id) VALUES   ('Fashion',7),
     INSERT INTO Magazines (item_type, item_id) VALUES   ('News',7);

   

   

    UPDATE Accessories
    SET color = 'Black'
    WHERE id=3;

    UPDATE Clothes
    SET size = 11
    WHERE id=2;

    UPDATE Magazines
    SET item_type = 'Comic'
    WHERE id=5;




DELETE from Accessories where id=2 and color = 'Brown';
DELETE from Clothes where fabric='Cotton';
DELETE from Magazines where id=1;

COMMIT TRANSACTION
