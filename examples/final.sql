CREATE DATABASE MissouriGrills;
USE MissouriGrills;

CREATE TABLE Sales_Rep (
	Rep_ID Char(2) Primary Key,
    first VarChar(18),
    last VarChar(22),
    addr VarChar(32),
    city VarChar(28),
    state Char(41),
    zip Char(10),
    phone Char(15),
    comm Decimal(7, 2),
    rate Decimal(3, 2)
);
CREATE TABLE Customer (
	Cust_ID Char(3) Primary Key,
    first VarChar(18),
    last VarChar(22),
    addr VarChar(32),
    city VarChar(28),
    state Char(41),
    zip Char(10),
    email VarChar(25),
    due Decimal(7, 2),
    cred_lim Decimal(7, 2),
    Rep_ID Char(2)
);
CREATE TABLE Item (
	Item_ID Char(4) Primary Key,
	name VarChar(30),
	on_hand Numeric,
	cat Char(3),
	loc Char(1),
	price Decimal(7, 2)
);
CREATE TABLE Invoice (
	Invoice_Num Char(5) Primary Key,
	date Date,
	Cust_ID VarChar(3)
);
CREATE TABLE Invoice_Line (
	Invoice_Num Char(5) Primary Key,
	Item_ID Char(4) Primary Key,
	ordered Numeric,
	price Decimal(7, 2)
--put comma on previous line above and uncomment line below if the composite primary key above does not work
--	Primary Key (Invoice_Num, Item_ID)
);

INSERT INTO Sales_Rep  VALUES ("2", "Gregory", "Jacques", "1002 Mont Blanc Street", "Union", "MO", "63084", "636-432-7711", 19425.52, 0.04);
INSERT INTO Sales_Rep  VALUES ("10", "Sullivan", "Germann", "1451 German Street", "Rolla", "MO", "65401", "636-432-7081", 16769.22, 0.03);
INSERT INTO Sales_Rep  VALUES ("28", "Huffry", "Lang", "2671", "Sullivan", "MO", "63080", "314-214-9981", 854.64, 0.03);
INSERT INTO Sales_Rep  VALUES ("50", "Nivre", "Loutre", "7474 Havanna Drive", "Cuba", "MO", "65453", "573-221-3846", 9824.01, 0.04);

INSERT INTO Customer VALUES ("101", "John", "White", "1234 Elmer Street", "Union", "MO", "63084", "jwhitez@gmail.com", "76.12", "500.00", "2");
INSERT INTO Customer VALUES ("109", "Hillary", "Mittens", "1234 Hillaryus Street", "Rolla", "MO", "65401", "hmittens1238@hotmail.com", "64.00", "250.00", "10");
INSERT INTO Customer VALUES ("115", "John", "Bites", "1845 Dragon's Snack Drive", "Sullivan", "MO", "63080", "jbites8888@gmail.com", "12.22", "300.00", "50");
INSERT INTO Customer VALUES ("154", "John", "Know", "4872 Watch Drive", "Cuba", "MO", "65453", "jknowwatch.hotmail.com", "99.87", "500.00", "10");
INSERT INTO Customer VALUES ("161", "John", "Moe", "1850 Mo Joe Street", "Union", "MO", "63084", "jmoeee.hotmail.com", "101.66", "750.00", "50");
INSERT INTO Customer VALUES ("196", "Bea", "Knees", "1004 Grovy Street", "Rolla", "MO", "65401", "bknees845.gmail.com", "71.38", "250.00", "2");
INSERT INTO Customer VALUES ("202", "Gregory", "Schmedly", "1284 Schmitten Hower Schmitt Drive", "Sullivan", "MO", "63080", "gschmedly2.gmail.com", "45.85", "200.00", "50");
INSERT INTO Customer VALUES ("218", "Grigorvich", "Every", "5841 Boulee Boulevard", "Cuba", "MO", "65453", "gevery241@hotmail.com", "49.99", "300.00", "10");
INSERT INTO Customer VALUES ("222", "Iro", "Will", "7869 Smithing Drive", "Union", "MO", "63084", "iwill4u@hotmail.com", "154.87", "1000.00", "2");
INSERT INTO Customer VALUES ("237", "John", "Geen", "1892 Mongol Drive", "Rolla", "MO", "65401", "jgeen24@gmail.com", "231.54", "1000.00", "50");
INSERT INTO Customer VALUES ("260", "Yui", "Wurst", "2002 Loabei Boulevard", "Sullivan", "MO", "63080", "ywurst@hotmail.com", "8.10", "100.00", "10");
INSERT INTO Customer VALUES ("264", "Rujash", "Kuji", "3832 Nevermore Street", "Cuba", "MO", "65453", "rkuji4@gmail.com", "187.21", "500.00", "28");

INSERT INTO Item VALUES ("BG01", "Blaze Gas Grill", 12, "GRL", "B", 249.99);
INSERT INTO Item VALUES ("WT42", "Wifi Thermometer", 10, "ACC", "B", 49.99);
INSERT INTO Item VALUES ("SL34", "Spatula with LED Light", 15, "ACC", "C", 39.99);
INSERT INTO Item VALUES ("BG10", "Blaze Grill Cover", 27, "COV", "B", 34.99);
INSERT INTO Item VALUES ("CS63", "Charcoal Grill Cleaning Set", 41, "ACC", "C", 24.99);
INSERT INTO Item VALUES ("CG01", "Coyote Charcoal Grill", 12, "GRL", "C", 399.99);
INSERT INTO Item VALUES ("CG10", "Coyote Grill Cover", 12, "COV", "A", 34.99);
INSERT INTO Item VALUES ("GL41", "Grill Light", 24, "ACC", "C", 26.99);
INSERT INTO Item VALUES ("LT79", "Laser Thermometer", 14, "ACC", "A", 49.99);
INSERT INTO Item VALUES ("CG81", "Charbroil Gridle Grill", 23, "GRL", "B", 299.99);
INSERT INTO Item VALUES ("PT25", "20lb Propane Tank", 32, "ACC", "A", 34.99);
INSERT INTO Item VALUES ("CG31", "Camping Grill", 5, "GRL", "C", 99.99);
INSERT INTO Item VALUES ("GT20", "Travel Grilling Tools", 7, "ACC", "B", 14.99);
INSERT INTO Item VALUES ("PT50", "1lb Travel Propane Tank", 34, "ACC", "A", 4.99);

INSERT INTO Invoice VALUES ("11001", '2020-10-1', "101");
INSERT INTO Invoice VALUES ("11002", '2020-10-1', "222");
INSERT INTO Invoice VALUES ("11003", '2020-10-4', "115");
INSERT INTO Invoice VALUES ("11004", '2020-10-4', "154");
INSERT INTO Invoice VALUES ("11005", '2020-10-5', "264");
INSERT INTO Invoice VALUES ("11006", '2020-10-8', "109");
INSERT INTO Invoice VALUES ("11007", '2020-10-9', "202");
INSERT INTO Invoice VALUES ("11008", '2020-10-12', "218");

INSERT INTO Invoice_Line VALUES ("11001", "GL41", 2, 26.99);
INSERT INTO Invoice_Line VALUES ("11002", "CG01", 1, 399.99);
INSERT INTO Invoice_Line VALUES ("11002", "CG10", 1, 34.99);
INSERT INTO Invoice_Line VALUES ("11003", "LT79", 3, 49.99);
INSERT INTO Invoice_Line VALUES ("11004", "BG01", 1, 249.99);
INSERT INTO Invoice_Line VALUES ("11005", "CG81", 1, 299.99);
INSERT INTO Invoice_Line VALUES ("11005", "PT25", 2, 34.99);
INSERT INTO Invoice_Line VALUES ("11005", "CS63", 1, 24.99);
INSERT INTO Invoice_Line VALUES ("11006", "CG31", 4, 99.99);
INSERT INTO Invoice_Line VALUES ("11006", "GT20", 5, 14.99);
INSERT INTO Invoice_Line VALUES ("11007", "PT50", 8, 4.99);
INSERT INTO Invoice_Line VALUES ("11008", "GL41", 1, 26.99);

CREATE TABLE Grills (
	Item_Num Char(4) Primary Key,
	Brand VarChar(15),
	Type VarChar(10)
);

INSERT INTO Grills VALUES ("CG01", "Coyote", "Charcoal");
INSERT INTO Grills VALUES ("BG01", "Blaze", "Gas");

--BEGINNING OF SNIPPET PASTING COMMANDS
SELECT * FROM Grills;

ALTER TABLE Customer MODIFY email VarChar(35);
EXEC SP_COLUMNS CUSTOMER;

DROP TABLE Grills;

SELECT first, last FROM Sales_Rep
WHERE city = "Rolla";

SELECT Cust_ID, first, last, due, Rep_ID FROM Customer
ORDER BY due;

SELECT Item_ID, name, on_hand FROM Item;

SELECT * FROM Invoice;

SELECT Invoice_Num, date FROM Invoice
WHERE Cust_ID = "101";

SELECT Cust_ID, first, last, addr FROM Customer
WHERE city IN ("Sullivan");

SELECT name, on_hand FROM Item
WHERE on_hand < 15;

SELECT name FROM Item
WHERE cat = "GRL";

SELECT name FROM Item
WHERE on_hand <= 15
ORDER BY on_hand;

SELECT name, price FROM Item
WHERE cat = "ACC"
ORDER BY DESC price;

SELECT COUNT(Rep_ID) FROM Sales_Rep
WHERE rate = 0.04;

SELECT COUNT(Cust_ID) AS num_of_customers, city FROM Customer
GROUP BY city; 

SELECT COUNT(Item_ID) as num_of_items from Item
WHERE loc = "A";

SELECT Item_ID, name FROM Item
WHERE name LIKE '%Cover%';

SELECT Invoice_Num, (ordered * price) AS Total_Price FROM Invoice_Line
ORDER BY Total_Price;

SELECT DISTINCT(cat) FROM Item;

SELECT MAX(price) FROM Item;

SELECT name, on_hand FROM Item
WHERE loc = "C"
ORDER BY on_hand;

SELECT name, price FROM Item
WHERE price BETWEEN 30 AND 100;

SELECT Invoice_Num, date, i.Cust_ID, first, last FROM Invoice i, Customer c
WHERE i.Cust_ID = c.Cust_ID
AND date > '2020-10-6';

SELECT first, last, email, due, r.first, r.last FROM Customer c, Sales_Rep r
WHERE r.Rep_ID = c.Rep_ID
AND due > 100;

SELECT Invoice_Num, date, last FROM Invoice i, Customer c
WHERE i.Rep_ID = c.Rep_ID;

SELECT first, last FROM Customer
WHERE Rep_ID = "10";

SELECT Cust_ID, addr, city, state, zip FROM Customer
WHERE EXISTS (
	SELECT zip FROM Customer
	WHERE zip = "65401";
);

SELECT Cust_ID, last FROM Customer
WHERE zip = "63084"
OR cred_lim = 500;

SELECT Cust_ID, last FROM Customer
WHERE zip = "63084"
AND cred_lim = 500;

SELECT first, last FROM Customer
WHERE Rep_ID = "50"
ORDER BY last;

CREATE TABLE Grill (
	Item_ID Char(4) Primary Key,
	name VarChar(30),
	on_hand Numeric,
	price Decimal(7, 2)
);
SHOW TABLES;

INSERT INTO Grill select Item_ID, name, on_hand, price FROM Item
WHERE cat = "GRL";

UPDATE Grill SET name = "Coyote Pellet Grill"
WHERE Item_ID = "CG01";
SELECT name FROM Grill
WHERE Item_ID = "CG01";

UPDATE Grill SET price = price * 0.95;
SELECT price FROM Grill;

INSERT INTO Grill VALUES ("WG99", "Weber Combo Grill", 8, 499.99);
SELECT * FROM Grill WHERE Item_ID = "WG99";

DELETE FROM Grill WHERE Item_ID = "CG81";
SELECT * FROM Grill;

UPDATE Grill SET on_hand = 15 WHERE Item_ID = "CG31";
SELECT on_hand FROM Grill WHERE Item_ID = "CG31";

DROP TABLE Grill;
SHOW TABLES;

CREATE VIEW LocationB_Items AS
SELECT Item_ID, name, on_hand, cat, price FROM Item
WHERE loc = "B";
SELECT * FROM LocationB_Items;

SELECT Item_ID, name, on_hand, cat FROM LocationB_Items
WHERE cat = "ACC";

SELECT Item_ID, name, on_hand, cat, price FROM Item
WHERE loc = "B"
AND cat = "ACC";

GRANT SELECT ON Item TO Stein;

GRANT INSERT ON Customer, Invoice TO Tien, Hermandez;

GRANT UPDATE (rate) ON Sales_Rep TO Porter;

REVOKE ALL, GRANT OPTION FROM Young;
