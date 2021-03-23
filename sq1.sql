BEGIN TRANSACTION
    CREATE TABLE Inventory(
        id int not null identity(1,1) primary key,
        item_name varchar(100) not null,
        quantity int not null default 0
    );

    INSERT INTO Inventory (item_name,quantity) VALUES
        ('Clothes',0),
        ('Magazines',0),
        ('Accessories',0);


    CREATE TABLE  Items(
        id int NOT NULL IDENTITY(1,1) primary key ,
        name varchar(100) default 'item',
        price decimal check (price>=0) ,
        item_type int  foreign key references Inventory(id),
    
    );

       INSERT INTO Items ( name,price, item_type)  values
        ('T-Shirt',5.66, 1),
        ('Trousers', 12, 1),
        ('Jacket', 2.44, 1),
        ('Shoks', 5.5, 1),
        ('Head-cap', 1.4, 1);

        INSERT Items ( name,price, item_type)  values
        ('Five Gear', 5.4, 2),
        ('As', 3.66, 2),
        ('Nw', 2.1, 2),
        ('Zoo', 1.4, 2),
        ('Zet', 3.4, 2);
        INSERT INTO Items ( name,price, item_type)  values
        ('Rings', 23, 3),
        ('Bracelet', 33.66, 3),
        ('Saphire-Rings', 33, 3),
        ('Silver-rings', 7, 3),
        ('Watch Strap', 9, 3);
    
    CREATE TABLE Clothes(
        id int NOT NULL IDENTITY(1,1) primary key ,
        fabric varchar(255) default null,
        size int,
        item_id int not null foreign key references items(id)
    );
        INSERT INTO Clothes ( fabric, size, item_id) values
                ('Cotton', 6, 1),
                ('Linen', 7, 1),
                ('Voile', 8, 1),
                ('Organdie', 4, 1),
                ('Tulle', 8, 1);

    CREATE TABLE Accessories(
        id int NOT NULL IDENTITY(1,1) primary key ,
        color varchar(255) default null,
        item_id int not null foreign key references items(id)
    );

    INSERT INTO Accessories (color, item_id)values
    ('Yellow', 1),
    ('Brown',2),
    ('Green', 3),
    ('Blue',4),
    ('Orange',5);
    CREATE TABLE Magazines(
        id int NOT NULL IDENTITY(1,1) primary key ,
        item_type varchar(255) default null,
        item_id int not null foreign key references items(id),
    );

     INSERT INTO Magazines (item_type, item_id) VALUES
        ('Comic', 7),
        ('Drama',7),
        ('Sport', 7),
        ('Fashion',7),
        ('News',7);

   

   

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
